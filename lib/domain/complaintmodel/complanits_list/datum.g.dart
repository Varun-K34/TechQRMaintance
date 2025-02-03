// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'datum.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Datum _$DatumFromJson(Map<String, dynamic> json) => Datum(
      id: (json['id'] as num?)?.toInt(),
      deviceId: (json['device_id'] as num?)?.toInt(),
      customerId: (json['customer_id'] as num?)?.toInt(),
      complaintType: json['complaint_type'] == null
          ? null
          : ComplaintType.fromJson(
              json['complaint_type'] as Map<String, dynamic>),
      status: json['status'] as String?,
      appointmentTime: json['appointment_time'] as String?,
      device: json['device'] == null
          ? null
          : Device.fromJson(json['device'] as Map<String, dynamic>),
      customer: json['customer'] == null
          ? null
          : Customer.fromJson(json['customer'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DatumToJson(Datum instance) => <String, dynamic>{
      'id': instance.id,
      'device_id': instance.deviceId,
      'customer_id': instance.customerId,
      'complaint_type': instance.complaintType,
      'status': instance.status,
      'appointment_time': instance.appointmentTime,
      'device': instance.device,
      'customer': instance.customer,
    };
