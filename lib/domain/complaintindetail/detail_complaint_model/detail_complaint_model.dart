import 'package:json_annotation/json_annotation.dart';

import 'data.dart';

part 'detail_complaint_model.g.dart';

@JsonSerializable()
class DetailComplaintModel {
  @JsonKey(name: 'data')
  Data? data;

  DetailComplaintModel({ this.data});

  factory DetailComplaintModel.fromJson(Map<String, dynamic> json) {
    return _$DetailComplaintModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$DetailComplaintModelToJson(this);
}
