import 'dart:developer';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';
import 'package:techqrmaintance/domain/core/docuploadrepo/docapload_repo.dart';
import 'package:techqrmaintance/domain/core/failures/main_failurs.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

@LazySingleton(as: DocaploadRepo)
class UploadFileServices implements DocaploadRepo {
  final ImagePicker _picker = ImagePicker();
  @override
  Future<Either<MainFailurs, File>> uploadFile() async {
    try {
      // 1. Pick images
      final images = await _picker.pickMultiImage();
      if (images.isEmpty) {
        return Left(
          MainFailurs.clientFailure(),
        );
      }

      // 2. Convert to PDF
      final pdf = pw.Document();

      for (final image in images) {
        final imageFile = File(image.path);
        if (!await imageFile.exists()) {
          return Left(
            MainFailurs.clientFailure(),
          );
        }
        final imageBytes = await imageFile.readAsBytes();
        pdf.addPage(
          pw.Page(
            pageFormat: PdfPageFormat.a4,
            build: (context) => pw.Center(
              child:
                  pw.Image(pw.MemoryImage(imageBytes), fit: pw.BoxFit.contain),
            ),
          ),
        );
      }

      // 3. Save PDF
      final dir = await getApplicationDocumentsDirectory();
      final fileName = 'Document_${DateTime.now().millisecondsSinceEpoch}.pdf';
      final file = File('${dir.path}/$fileName');

      await file.writeAsBytes(await pdf.save());
      return Right(file);
    } on Exception catch (e) {
      log(e.toString(), name: "file upload");
      return Left(MainFailurs.clientFailure());
    }
  }
}
