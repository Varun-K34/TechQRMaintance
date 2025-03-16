import 'package:json_annotation/json_annotation.dart';
import 'package:techqrmaintance/domain/organizationmodel/organization_model/organization_model/organization.dart';

import 'customer.dart';
import 'device.dart';
import 'technician.dart';

part 'services_model.g.dart';

@JsonSerializable()
class ServicesModel {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'org_id')
  int? orgId;
  @JsonKey(name: 'customer_id')
  int? customerId;
  @JsonKey(name: 'device_id')
  int? deviceId;
  @JsonKey(name: 'assigned_technician')
  int? assignedTechnician;
  @JsonKey(name: 'issue_description')
  String? issueDescription;
  @JsonKey(name: 'selected_issue')
  dynamic selectedIssue;
  @JsonKey(name: 'preferred_timeslot')
  DateTime? preferredTimeslot;
  String? status;
  @JsonKey(name: 'completion_notes')
  dynamic completionNotes;
  @JsonKey(name: 'completion_photo_url')
  String? completionPhotoUrl;
  @JsonKey(name: 'new_parts_used')
  dynamic newPartsUsed;
  @JsonKey(name: 'started_at')
  dynamic startedAt;
  @JsonKey(name: 'completed_at')
  dynamic completedAt;
  @JsonKey(name: 'organization')
  Organization? organization;
  @JsonKey(name: 'customer')
  Customer? customer;
  @JsonKey(name: 'device')
  Device? device;
  @JsonKey(name: 'technician')
  Technician? technician;

  ServicesModel({
    this.id,
    this.orgId,
    this.customerId,
    this.deviceId,
    this.assignedTechnician,
    this.issueDescription,
    this.selectedIssue,
    this.preferredTimeslot,
    this.status,
    this.completionNotes,
    this.completionPhotoUrl,
    this.newPartsUsed,
    this.startedAt,
    this.completedAt,
    this.organization,
    this.customer,
    this.device,
    this.technician,
  });

  factory ServicesModel.fromJson(Map<String, dynamic> json) =>
      _$ServicesModelFromJson(json);

  Map<String, dynamic> toJson() => _$ServicesModelToJson(this);
}
