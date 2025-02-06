import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:techqrmaintance/domain/core/failures/main_failurs.dart';
import 'package:techqrmaintance/domain/core/splashcheck/splash_check.dart';

@LazySingleton(as: SplashCheckRepo)
class CheckLoginServices implements SplashCheckRepo {
  @override
  Future<Either<MainFailurs, bool>> checkLoginOrNot() async {
    try {
      // Delay for effect (optional)
      await Future.delayed(Duration(seconds: 3));

      final SharedPreferences prefs = await SharedPreferences.getInstance();
      String? checkuserString = prefs.getString("userItem");

      bool ischeck = checkuserString != null;

      return Right(ischeck);
    } catch (e) {
      return Left(MainFailurs.clientFailure());
    }
  }
}
