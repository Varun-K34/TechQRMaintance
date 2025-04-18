import 'dart:convert';
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:techqrmaintance/core/strings.dart';
import 'package:techqrmaintance/domain/core/failures/main_failurs.dart';
import 'package:techqrmaintance/domain/core/mark_attentence/mark_attentance_repo.dart';
import 'package:techqrmaintance/domain/core/servicesreq_t_user/service_t_user.dart';

@LazySingleton(as: MarkAttentanceRepo)
class AttentanceServices implements MarkAttentanceRepo {
  final ServiveTuser api = ServiveTuser();
  final picker = ImagePicker();
  late String base64String;
  @override
  Future<Either<MainFailurs, String>> markAttenrance(
      {required String attentanceString}) async {
    try {
      final pickedFile = await picker.pickImage(
        source: ImageSource.camera,
        imageQuality: 85, // Compress image (0-100)
      );
      if (pickedFile != null) {
        final bytes = await pickedFile.readAsBytes();
        final extension = pickedFile.path.split('.').last.toLowerCase();
        log(extension);
        final mimeType = extension == 'png' ? 'image/png' : 'image/jpeg';
         base64String = "data:$mimeType;base64,${base64Encode(bytes)}";
      }
      
      if (base64String.isNotEmpty) {
        final Response respo = await api.apidio.post(
          kBaseURL + kAttentance,
          data: {
            'event': attentanceString,
            'photo': base64String,
          },
        );
        if (respo.statusCode == 200) {
         return Right("Attentance Mark Succesfully");
        }
        else{
          log("error", name: "attentance");
        return  Left(MainFailurs.clientFailure());
        }
      }else{
        log("photo capture error", name: "attentance");
        return Left(MainFailurs.clientFailure());
      }
    } catch (e) {
      log(e.toString(), name: "attentance");
      api.clearStoredToken();
      return Left(MainFailurs.serverFailure());
    }
  }
}
