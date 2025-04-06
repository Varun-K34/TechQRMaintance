import 'dart:developer';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:techqrmaintance/core/strings.dart';
import 'package:techqrmaintance/domain/customer_model/customer_model_list_saas/customer_model_saas.dart';
import 'package:techqrmaintance/domain/customer_model/customer_repo.dart';
import 'package:techqrmaintance/domain/core/failures/main_failurs.dart';
import 'package:techqrmaintance/infrastructure/api_token_generator.dart';

@LazySingleton(as: CustomerRepo)
class CustomerServices implements CustomerRepo {
  ApiServices api = ApiServices();

  @override
  Future<Either<MainFailurs, int?>> createCustomer(
      {required CustomerModelSaas customerModel}) async {
        
    try {
      Map<String, dynamic> sanitizedJson = customerModel.toJson();
      sanitizedJson.removeWhere(
          (key, value) => value == null && key != 'pin' && key != 'phone');
      log(sanitizedJson.toString(), name: "Customer Creation JSON");
      final Response response = await api.dio.post(
        kBaseURL + kCustomer,
        data: sanitizedJson,
      );
      
      if (response.statusCode == 200 || response.statusCode == 201) {
        final customerSuccess =
            CustomerModelSaas.fromJson(response.data['data']);
        log("✅ Customer Created with ID: ${customerSuccess.id}");
        return Right(customerSuccess.id);
      } else {
        await api.clearStoredToken();
        return Left(MainFailurs.serverFailure());
      }
    } on DioException catch (e) {
      log(e.message.toString(), name: "DioException");
      await api.clearStoredToken();
      if (e.response?.statusCode == 302) {
        log('Redirect detected to: ${e.response?.headers.value('location')}');
      }
      return Left(MainFailurs.clientFailure());
    }
  }
}
