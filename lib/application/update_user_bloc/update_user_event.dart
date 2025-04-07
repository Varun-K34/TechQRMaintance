part of 'update_user_bloc.dart';

@freezed
class UpdateUserEvent with _$UpdateUserEvent {
  const factory UpdateUserEvent.updateUser({
    required String id,
    required UserModel model,
  }) = UpdateUser;
}
