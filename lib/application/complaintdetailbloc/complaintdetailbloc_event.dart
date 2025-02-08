part of 'complaintdetailbloc_bloc.dart';

@freezed
class ComplaintdetailblocEvent with _$ComplaintdetailblocEvent {
  const factory ComplaintdetailblocEvent.getindividualComplaint(
      {required String id}) = GetindividualComplaint;
}
