import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:techqrmaintance/core/strings.dart';
import 'package:techqrmaintance/domain/core/failures/main_failurs.dart';
import 'package:techqrmaintance/domain/core/getidfordevicereg/get_id_for_device_reg.dart';
import 'package:techqrmaintance/domain/customer_model/customer_model_list_saas/customer_model_list_saas.dart';
import 'package:techqrmaintance/domain/customer_model/customer_model_list_saas/customer_model_saas.dart';
import 'package:techqrmaintance/infrastructure/api_token_generator.dart';

@LazySingleton(as: GetIdForDeviceRegRepo)
class GetIdForDeviceRegServices implements GetIdForDeviceRegRepo {
  ApiServices getidApi = ApiServices();
  @override
  Future<Either<MainFailurs, int?>> getIdforRegerpo({
    required String email,
    required String mobile,
  }) async {
    try {
      final response = await getidApi.dio.get(kBaseURL + kCustomer);

      if (response.statusCode == 200) {
        final userList = CustomerModelListSaas.fromJson(response.data);

        // Check if data is null or empty
        if (userList.data == null || userList.data!.isEmpty) {
          return Left(MainFailurs.clientFailure());
        }

        // Sanitize inputs
        final sanitizedEmail = email.trim().toLowerCase();
        final sanitizedMobile = mobile.trim();

        // Log for debugging
        log('Searching for email: $sanitizedEmail, mobile: $sanitizedMobile');

        // Find matching user with case-insensitive email and exact mobile
        final matchingUser = userList.data!.firstWhere(
          (user) =>
              user.email != null &&
              user.phone != null &&
              user.email!.trim().toLowerCase() == sanitizedEmail &&
              user.phone!.trim() == sanitizedMobile,
          orElse: () => CustomerModelSaas(),
        );

        if (matchingUser.id == null) {
          log('No user found matching both email and mobile');
          return Left(MainFailurs.clientFailure());
        }

        log('User found: ID = ${matchingUser.id}');
        return Right(matchingUser.id);
      } else {
        log('API Error: Status code ${response.statusCode}');
        return Left(MainFailurs.serverFailure());
      }
    } on DioException catch (e) {
      getidApi.clearStoredToken();
      log('DioException: ${e.message}');
      return Left(MainFailurs.clientFailure());
    } catch (e) {
      log('Unexpected Error: $e', name: "GetIdForDeviceRegServices");
      return Left(MainFailurs.clientFailure());
    }
  }
}
