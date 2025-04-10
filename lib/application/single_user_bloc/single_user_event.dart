part of 'single_user_bloc.dart';

@freezed
class SingleUserEvent with _$SingleUserEvent {
  const factory SingleUserEvent.singleUser({required String id}) = SingleUser;
}
