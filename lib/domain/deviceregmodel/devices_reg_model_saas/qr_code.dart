import 'package:json_annotation/json_annotation.dart';

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

  QrCode({
    this.id,
    this.orgId,
    this.qrCode,
    this.qrType,
    this.assignedToId,
    this.status,
  });

  factory QrCode.fromJson(Map<String, dynamic> json) {
    return _$QrCodeFromJson(json);
  }

  Map<String, dynamic> toJson() => _$QrCodeToJson(this);
}
