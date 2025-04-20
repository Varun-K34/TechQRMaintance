import 'dart:developer';
import 'dart:ffi';
import 'dart:io';

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
  List<String>? selectedIssue;
  @JsonKey(name: 'preferred_date')
  String? preferredTimeslot;
  @JsonKey(name: "preferred_start_time")
  String? preferedstarttime;
  @JsonKey(name: 'status')
  String? status;
  @JsonKey(name: 'completion_notes')
  dynamic completionNotes;
  @JsonKey(name: 'completion_photo_url')
  String? completionPhotoUrl;
  @JsonKey(name: 'new_parts_used')
  List<String>? newPartsUsed;
  @JsonKey(name: 'job_type')
  String? jobType;
  @JsonKey(name: 'emergency')
  int? emergency;
  @JsonKey(name: 'started_at')
  DateTime? startedAt;
  @JsonKey(name: 'completed_at')
  DateTime? completedAt;
  @JsonKey(name: 'created_at')
  DateTime? createdAt;
  @JsonKey(name: 'organization')
  Organization? organization;
  @JsonKey(name: 'customer')
  Customer? customer;
  @JsonKey(name: 'device')
  Device? device;
  @JsonKey(name: 'technician')
  Technician? technician;
  // New field for handling the image file
  @JsonKey(includeFromJson: false, includeToJson: false)
  File? completionPhotoFile; 

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
    this.jobType,
    this.emergency,
    this.startedAt,
    this.completedAt,
    this.organization,
    this.customer,
    this.device,
    this.technician,
  });

  ServicesModel.create({
    this.status,
    this.completionNotes,
    this.completionPhotoUrl,
    this.completionPhotoFile,
    this.completedAt,
    this.assignedTechnician,
    this.newPartsUsed,
    this.startedAt,
  });

  factory ServicesModel.fromJson(Map<String, dynamic> json) {
    try {
      return _$ServicesModelFromJson(json);
    } catch (e) {
      //log('Error deserializing ServicesModel: $e');
      return ServicesModel();
    }
  }

  Map<String, dynamic> toJson() {
    try {
      return _$ServicesModelToJson(this);
    } catch (e) {
      log('Error serializing ServicesModel: $e');
      return {};
    }
  }
}
