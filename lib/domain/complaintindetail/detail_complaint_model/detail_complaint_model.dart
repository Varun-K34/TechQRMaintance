import 'package:json_annotation/json_annotation.dart';
import 'package:techqrmaintance/domain/complaintmodel/complanits_list/datum.dart';

part 'detail_complaint_model.g.dart';

@JsonSerializable()
class DetailComplaintModel {
  @JsonKey(name: 'data')
  Datum? data;

  DetailComplaintModel({this.data});

  factory DetailComplaintModel.fromJson(Map<String, dynamic> json) {
    return _$DetailComplaintModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$DetailComplaintModelToJson(this);
}
