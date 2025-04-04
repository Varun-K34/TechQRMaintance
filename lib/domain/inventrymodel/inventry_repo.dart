import 'package:dartz/dartz.dart';
import 'package:techqrmaintance/domain/core/failures/main_failurs.dart';
import 'package:techqrmaintance/domain/inventrymodel/inventries_model/inventry.dart';

abstract class InventryRepo {
  Future<Either<MainFailurs,List<Inventry>>> getInventries();
}