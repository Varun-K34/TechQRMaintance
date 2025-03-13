import 'package:json_annotation/json_annotation.dart';
import 'package:techqrmaintance/domain/deviceregmodel/devices_reg_model_saas/device_model_saas.dart';
import 'package:techqrmaintance/domain/organizationmodel/organization_model/organization_model/organization.dart';
import 'package:techqrmaintance/domain/usermodel/user_model_list/user_model_list_saas/user_model.dart';

part 'qr_code.g.dart';

@JsonSerializable()
class QrCode {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'org_id')
  int? orgId;
  @JsonKey(name: 'qr_code')
  String? qrCode;
  @JsonKey(name: 'qr_type')
  String? qrType;
  @JsonKey(name: 'assigned_to_id')
  int? assignedToId;
  @JsonKey(name: 'status')
  String? status;
  @JsonKey(name: 'organization')
  Organization? organization;
  @JsonKey(name: 'assigned_customer')
  UserModel? assignedCustomer;
  @JsonKey(name: 'assigned_device')
  DeviceModelSaas? assignedDevice;

  QrCode({
    this.id,
    this.orgId,
    this.qrCode,
    this.qrType,
    this.assignedToId,
    this.status,
    this.organization,
    this.assignedCustomer,
    this.assignedDevice,
  });

  factory QrCode.fromJson(Map<String, dynamic> json) {
    return _$QrCodeFromJson(json);
  }

  Map<String, dynamic> toJson() => _$QrCodeToJson(this);
}
