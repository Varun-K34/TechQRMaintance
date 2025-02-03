part of 'complaintbloc_bloc.dart';

@freezed
class ComplaintblocEvent with _$ComplaintblocEvent {
  const factory ComplaintblocEvent.getComplaintsTasks() = GetComplaintsTasks;
}
