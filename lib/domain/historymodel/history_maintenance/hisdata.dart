import 'package:json_annotation/json_annotation.dart';
import 'package:techqrmaintance/domain/servicerequestmodel/services_request_saas/device.dart';
import 'package:techqrmaintance/domain/usermodel/user_model_list/user_model_list_saas/user_model.dart';

part 'hisdata.g.dart';

@JsonSerializable()
class HisData {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'device_id')
  int? deviceId;
  @JsonKey(name: 'technician_id')
  int? technicianId;
  @JsonKey(name: 'service_date')
  DateTime? serviceDate;
  @JsonKey(name: 'service_description')
  String? serviceDescription;
  @JsonKey(name: 'parts_changed')
  String? partsChanged;
  @JsonKey(name: 'service_charge')
  String? serviceCharge;
  @JsonKey(name: 'photos')
  List<dynamic>? photos;
  @JsonKey(name: 'videos')
  List<dynamic>? videos;
  @JsonKey(name: 'device')
  Device? device;
  @JsonKey(name: 'technician')
  UserModel? technician;

  HisData({
    this.id,
    this.deviceId,
    this.technicianId,
    this.serviceDate,
    this.serviceDescription,
    this.partsChanged,
    this.serviceCharge,
    this.photos,
    this.videos,
    this.device,
    this.technician,
  });

  factory HisData.fromJson(Map<String, dynamic> json) =>
      _$HisDataFromJson(json);

  Map<String, dynamic> toJson() => _$HisDataToJson(this);
}
