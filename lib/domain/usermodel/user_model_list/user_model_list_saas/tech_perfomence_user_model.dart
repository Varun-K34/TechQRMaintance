import 'package:json_annotation/json_annotation.dart';

part 'tech_perfomence_user_model.g.dart';

@JsonSerializable()
class TechPerfomenceUserModel {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'org_id')
  int? orgId;
  @JsonKey(name: 'technician_id')
  int? techid;
  @JsonKey(name: 'total_completed_services')
  int? totalCompletedServices;
  @JsonKey(name: 'average_completion_time')
  String? averageCompletionTime;
  @JsonKey(name: 'customer_feedback_rating')
  String? customerFeedbackRating;
  @JsonKey(name: 'last_updated')
  String? lastUpdated;

  TechPerfomenceUserModel({
    this.id,
    this.orgId,
    this.averageCompletionTime,
    this.customerFeedbackRating,
    this.lastUpdated,
    this.techid,
    this.totalCompletedServices,
  });

  factory TechPerfomenceUserModel.fromJson(Map<String, dynamic> json) =>
      _$TechPerfomenceUserModelFromJson(json);

  Map<String, dynamic> toJson() => _$TechPerfomenceUserModelToJson(this);
}
