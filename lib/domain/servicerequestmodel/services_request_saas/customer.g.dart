// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Customer _$CustomerFromJson(Map<String, dynamic> json) => Customer(
      id: (json['id'] as num?)?.toInt(),
      orgId: (json['org_id'] as num?)?.toInt(),
      fullName: json['full_name'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      address: json['address'] as String?,
      gpsCoordinates: json['gps_coordinates'] as String?,
      pin: (json['pin'] as num?)?.toInt(),
    );

Map<String, dynamic> _$CustomerToJson(Customer instance) => <String, dynamic>{
      'id': instance.id,
      'org_id': instance.orgId,
      'full_name': instance.fullName,
      'email': instance.email,
      'phone': instance.phone,
      'address': instance.address,
      'gps_coordinates': instance.gpsCoordinates,
      'pin': instance.pin,
    };
