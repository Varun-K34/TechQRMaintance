import 'package:json_annotation/json_annotation.dart';

import 'complaint_type.dart';
import 'customer.dart';
import 'device.dart';

part 'datum.g.dart';

@JsonSerializable()
class Datum {
  int? id;
  @JsonKey(name: 'device_id')
  int? deviceId;
  @JsonKey(name: 'customer_id')
  int? customerId;
  @JsonKey(name: 'complaint_type')
  ComplaintType? complaintType;
  @JsonKey(name: 'status')
  String? status;
  @JsonKey(name: 'appointment_time')
  String? appointmentTime;
  @JsonKey(name: 'device')
  Device? device;
  @JsonKey(name: 'customer')
  Customer? customer;

  Datum({
    this.id,
    this.deviceId,
    this.customerId,
    this.complaintType,
    this.status,
    this.appointmentTime,
    this.device,
    this.customer,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);

  Map<String, dynamic> toJson() => _$DatumToJson(this);
}
