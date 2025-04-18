import 'package:dartz/dartz.dart';
import 'package:techqrmaintance/domain/core/failures/main_failurs.dart';

abstract class MarkAttentanceRepo {
  Future<Either<MainFailurs ,String>> markAttenrance({required String attentanceString});
}