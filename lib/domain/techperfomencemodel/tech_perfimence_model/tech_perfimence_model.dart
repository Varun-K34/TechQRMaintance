import 'package:json_annotation/json_annotation.dart';
import 'package:techqrmaintance/domain/organizationmodel/organization_model/organization_model/organization.dart';
import 'package:techqrmaintance/domain/servicerequestmodel/services_request_saas/technician.dart';


part 'tech_perfimence_model.g.dart';

@JsonSerializable()
class TechPerfimenceModel {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'org_id')
  int? orgId;
  @JsonKey(name: 'technician_id')
  int? technicianId;
  @JsonKey(name: 'total_completed_services')
  int? totalCompletedServices;
  @JsonKey(name: 'average_completion_time')
  String? averageCompletionTime;
  @JsonKey(name: 'customer_feedback_rating')
  String? customerFeedbackRating;
  @JsonKey(name: 'last_updated')
  String? lastUpdated;
  @JsonKey(name: 'organization')
  Organization? organization;
  @JsonKey(name: 'technician')
  Technician? technician;

  TechPerfimenceModel({
    this.id,
    this.orgId,
    this.technicianId,
    this.totalCompletedServices,
    this.averageCompletionTime,
    this.customerFeedbackRating,
    this.lastUpdated,
    this.organization,
    this.technician,
  });

  factory TechPerfimenceModel.fromJson(Map<String, dynamic> json) {
    return _$TechPerfimenceModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TechPerfimenceModelToJson(this);
}
