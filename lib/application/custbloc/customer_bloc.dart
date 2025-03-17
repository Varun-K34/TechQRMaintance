// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:techqrmaintance/domain/customer_model/customer_model_list_saas/customer_model_saas.dart';
import 'package:techqrmaintance/domain/customer_model/customer_repo.dart';
import 'package:techqrmaintance/domain/core/failures/main_failurs.dart';

part 'customer_bloc_event.dart';
part 'customer_bloc_state.dart';
part 'customer_bloc.freezed.dart';

@Injectable()
class CustomerBloc extends Bloc<CustomerEvent, CustomerState> {
  final CustomerRepo customerRepo;
  CustomerBloc(this.customerRepo) : super(CustomerState.initial()) {
    on<CustomerSignup>((event, emit) async {
      emit(CustomerState.signupState(
        customerList: null,
        isLoading: true,
        isError: false,
      ));

      final result = await customerRepo.createCustomer(
        customerModel: event.customerModel,
      );

      final state = result.fold(
        (MainFailurs failure) {
          return CustomerState.signupState(
            customerList: null,
            isLoading: false,
            isError: true,
          );
        },
        (int? customer) {
          return CustomerState.signupState(
            customerList: customer,
            isLoading: false,
            isError: false,
          );
        },
      );
      emit(state);
    });
  }
}
