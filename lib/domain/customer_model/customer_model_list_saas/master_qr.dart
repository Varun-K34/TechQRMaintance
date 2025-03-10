import 'package:json_annotation/json_annotation.dart';

part 'master_qr.g.dart';

@JsonSerializable()
class MasterQr {
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

  MasterQr({
    this.id,
    this.orgId,
    this.qrCode,
    this.qrType,
    this.assignedToId,
    this.status,
  });

  factory MasterQr.fromJson(Map<String, dynamic> json) {
    return _$MasterQrFromJson(json);
  }

  Map<String, dynamic> toJson() => _$MasterQrToJson(this);
}
