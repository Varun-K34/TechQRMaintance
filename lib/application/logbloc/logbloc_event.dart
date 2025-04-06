part of 'logbloc_bloc.dart';

@freezed
class LogblocEvent with _$LogblocEvent {
  const factory LogblocEvent.login({required String email}) = Login;
  const factory LogblocEvent.reset() = Reset;
}
