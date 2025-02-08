// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      id: (json['id'] as num?)?.toInt(),
      deviceId: (json['device_id'] as num?)?.toInt(),
      customerId: (json['customer_id'] as num?)?.toInt(),
      complaintType: json['complaint_type'] == null
          ? null
          : ComplaintType.fromJson(
              json['complaint_type'] as Map<String, dynamic>),
      status: json['status'] as String?,
      assignedTechnicianId: (json['assigned_technician_id'] as num?)?.toInt(),
      appointmentTime: json['appointment_time'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      device: json['device'] == null
          ? null
          : Device.fromJson(json['device'] as Map<String, dynamic>),
      customer: json['customer'] == null
          ? null
          : Customer.fromJson(json['customer'] as Map<String, dynamic>),
      assignedTechnician: json['assigned_technician'] == null
          ? null
          : AssignedTechnician.fromJson(
              json['assigned_technician'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'id': instance.id,
      'device_id': instance.deviceId,
      'customer_id': instance.customerId,
      'complaint_type': instance.complaintType,
      'status': instance.status,
      'assigned_technician_id': instance.assignedTechnicianId,
      'appointment_time': instance.appointmentTime,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'device': instance.device,
      'customer': instance.customer,
      'assigned_technician': instance.assignedTechnician,
    };
