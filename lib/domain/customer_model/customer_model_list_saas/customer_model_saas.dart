// ignore: depend_on_referenced_packages
import 'package:json_annotation/json_annotation.dart';
import 'package:techqrmaintance/domain/organizationmodel/organization_model/organization_model/organization.dart';

import 'master_qr.dart';

part 'customer_model_saas.g.dart';

@JsonSerializable()
class CustomerModelSaas {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'org_id')
  int? orgId;
  @JsonKey(name: 'full_name')
  String? fullName;
  @JsonKey(name: 'email')
  String? email;
  @JsonKey(name: 'phone')
  String? phone;
  @JsonKey(name: 'address')
  dynamic address;
  @JsonKey(name: 'gps_coordinates')
  dynamic gpsCoordinates;
  @JsonKey(name: 'master_qr_id')
  int? masterQrId;
  // @JsonKey(name: 'pin', includeToJson: false, includeFromJson: true)
  // int? pin;
  @JsonKey(name: 'pin',includeFromJson: false, includeToJson: true)
  String? pin;
  @JsonKey(name: 'organization')
  Organization? organization;
  @JsonKey(name: 'master_qr')
  MasterQr? masterQr;

  CustomerModelSaas({
    this.id,
    this.orgId,
    this.fullName,
    this.email,
    this.phone,
    this.address,
    this.gpsCoordinates,
    this.masterQrId,
    this.pin,
    this.organization,
    this.masterQr,
  });

  CustomerModelSaas.create({
    this.orgId,
    this.fullName,
    this.email,
    this.phone,
    this.pin,
  });

  factory CustomerModelSaas.fromJson(Map<String, dynamic> json) =>
      _$CustomerModelSaasFromJson(json);

  Map<String, dynamic> toJson() => _$CustomerModelSaasToJson(this);
}
