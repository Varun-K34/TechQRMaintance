part of 'checkbloc_bloc.dart';

@freezed
class CheckblocEvent with _$CheckblocEvent {
  const factory CheckblocEvent.checkLogOrNot() = CheckLogOrNot;
}