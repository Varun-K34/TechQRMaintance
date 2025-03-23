import 'package:dartz/dartz.dart';
import 'package:geolocator/geolocator.dart';
import 'package:injectable/injectable.dart';
import 'package:techqrmaintance/domain/core/failures/main_failurs.dart';
import 'package:techqrmaintance/domain/core/getlocation/get_loc_repo.dart';

@LazySingleton(as: GetLocationRepo)
class GetLocationServices implements GetLocationRepo {
  @override
  Future<Either<MainFailurs, List<String>>> getLocation() async {
    try {
      LocationSettings locationSettings = LocationSettings(
        accuracy: LocationAccuracy.high,
        distanceFilter: 10,
      );

      Position position = await Geolocator.getCurrentPosition(
        locationSettings: locationSettings,
      );
      return Right(
          [position.latitude.toString(), position.longitude.toString()]);
    } catch (e) {
      return Left(MainFailurs.serverFailure());
    }
  }
}
