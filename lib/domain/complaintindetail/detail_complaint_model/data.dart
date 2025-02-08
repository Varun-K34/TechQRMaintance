import 'package:json_annotation/json_annotation.dart';

import 'assigned_technician.dart';
import 'complaint_type.dart';
import 'customer.dart';
import 'device.dart';

part 'data.g.dart';

@JsonSerializable()
class Data {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'device_id')
  int? deviceId;
  @JsonKey(name: 'customer_id')
  int? customerId;
  @JsonKey(name: 'complaint_type')
  ComplaintType? complaintType;
  @JsonKey(name: 'status')
  String? status;
  @JsonKey(name: 'assigned_technician_id')
  int? assignedTechnicianId;
  @JsonKey(name: 'appointment_time')
  String? appointmentTime;
  @JsonKey(name: 'created_at')
  DateTime? createdAt;
  @JsonKey(name: 'updated_at')
  DateTime? updatedAt;
  @JsonKey(name: 'device')
  Device? device;
  @JsonKey(name: 'customer')
  Customer? customer;
  @JsonKey(name: 'assigned_technician')
  AssignedTechnician? assignedTechnician;

  Data({
    this.id,
    this.deviceId,
    this.customerId,
    this.complaintType,
    this.status,
    this.assignedTechnicianId,
    this.appointmentTime,
    this.createdAt,
    this.updatedAt,
    this.device,
    this.customer,
    this.assignedTechnician,
  });

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}
