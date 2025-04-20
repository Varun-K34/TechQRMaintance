part of 'mark_attentance_user_bloc.dart';

@freezed
class MarkAttentanceUserEvent with _$MarkAttentanceUserEvent {
  const factory MarkAttentanceUserEvent.markattentance({required String presentOrNot}) = MarkAttentance;
  const factory MarkAttentanceUserEvent.reset() = Reset;
}