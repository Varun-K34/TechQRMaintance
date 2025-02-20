import 'dart:developer';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:techqrmaintance/core/strings.dart';
import 'package:techqrmaintance/domain/customer_model/customer_model.dart';
import 'package:techqrmaintance/domain/customer_model/customer_repo.dart';
import 'package:techqrmaintance/domain/core/failures/main_failurs.dart';
import 'package:techqrmaintance/infrastructure/api_token_generator.dart';

@LazySingleton(as: CustomerRepo)
class CustomerServices implements CustomerRepo {
  ApiServices api = ApiServices();

  @override
  Future<Either<MainFailurs, CustomerModel>> createCustomer(
      {required CustomerModel customerModel}) async {
    try {
      
      
      final Response response = await api.dio.post(
        kBaseURL + kuserADD,
        data: customerModel.toJson(),
      );

      

      if (response.statusCode == 200 || response.statusCode == 201) {
        final customerSuccess = CustomerModel.fromJson(response.data);
        log("✅ Customer Created with ID: ${customerSuccess.id}");
        return Right(customerSuccess);
      } else {
        await api.clearStoredToken();
        return Left(MainFailurs.serverFailure());
      }
    } on DioException catch (e) {
      await api.clearStoredToken();
      if (e.response?.statusCode == 302) {
        log('Redirect detected to: ${e.response?.headers.value('location')}');
      }
      return Left(MainFailurs.clientFailure());
    }
  }
}