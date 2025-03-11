import 'package:dartz/dartz.dart';
import 'package:techqrmaintance/domain/catagorymodel/catagory_model/catagory_model.dart';
import 'package:techqrmaintance/domain/core/failures/main_failurs.dart';

abstract class CatagoryGetRepo {
  Future<Either<MainFailurs, CatagoryModel>> getCatagoryList();
}
