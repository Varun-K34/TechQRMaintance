import 'package:json_annotation/json_annotation.dart';
import 'package:techqrmaintance/domain/complaintmodel/complanits_list/complaint_type.dart';
import 'package:techqrmaintance/domain/complaintmodel/complanits_list/device.dart';

part 'scan_qr_model.g.dart';

@JsonSerializable()
class ScanQrModel {
  @JsonKey(name: 'device')
  Device? device;
  @JsonKey(name: 'complaint_types')
  List<ComplaintType>? complaintTypes;

  ScanQrModel({
    this.device,
    this.complaintTypes,
  });

  factory ScanQrModel.fromJson(Map<String, dynamic> json) {
    return _$ScanQrModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ScanQrModelToJson(this);
}
