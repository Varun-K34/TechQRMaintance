import 'package:dartz/dartz.dart';
import 'package:techqrmaintance/domain/core/failures/main_failurs.dart';
import 'package:techqrmaintance/domain/modelandbrandmodel/brand_model/brand_model.dart';

abstract class DeiceBrandRepo {
  Future<Either<MainFailurs, List<BrandModel>>> getDeviceBrand();
}
