import 'dart:developer';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:techqrmaintance/core/strings.dart';
import 'package:techqrmaintance/domain/core/failures/main_failurs.dart';
import 'package:techqrmaintance/domain/organizationmodel/organization_model/organization_model/organization_model.dart';
import 'package:techqrmaintance/domain/organizationmodel/organization_repo.dart';
import 'package:techqrmaintance/infrastructure/api_token_generator.dart';

@LazySingleton(as: OrganizationRepo)
class OrgServices implements OrganizationRepo {
  ApiServices orgapi = ApiServices();

  @override
  Future<Either<MainFailurs, OrganizationModel>>
      getOrganizations() async {
    try {
      final Response orgresponse = await orgapi.dio.get(kBaseURL + kOrg);
      log("API Response: ${orgresponse.data.toString()}");

      if (orgresponse.statusCode == 200) {
     final orgdata =    OrganizationModel.fromJson(orgresponse.data);
        return Right(orgdata);
        } else {
          log("Unexpected JSON format: ${orgresponse.data}");
          return Left(MainFailurs.serverFailure());
        }
      } 
     on DioException catch (e) {
      orgapi.clearStoredToken();
      log("DioException: $e");
      return Left(MainFailurs.clientFailure());
    } catch (e) {
      orgapi.clearStoredToken();
      log("General Error: $e");
      return Left(MainFailurs.clientFailure());
    }
  }
}

