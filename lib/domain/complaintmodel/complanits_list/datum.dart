// ignore: depend_on_referenced_packages
import 'package:json_annotation/json_annotation.dart';
import 'package:techqrmaintance/domain/complaintmodel/complanits_list/Technician.dart';

import 'complaint_type.dart';
import 'customer.dart';
import 'device.dart';

part 'datum.g.dart';

@JsonSerializable()
class Datum {
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
  @JsonKey(name: 'device')
  Device? device;
  @JsonKey(name: 'customer')
  Customer? customer;
  @JsonKey(name: 'assigned_technician')
  AssignedTechnician? assignedTechnician;

  Datum({
    this.id,
    this.deviceId,
    this.customerId,
    this.complaintType,
    this.status,
    this.assignedTechnicianId,
    this.appointmentTime,
    this.device,
    this.customer,
    this.assignedTechnician,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);

  Map<String, dynamic> toJson() => _$DatumToJson(this);
}
