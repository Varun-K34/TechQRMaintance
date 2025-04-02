import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:techqrmaintance/domain/core/failures/main_failurs.dart';

abstract class DocaploadRepo {
  Future<Either<MainFailurs, File>> uploadFile();
}
