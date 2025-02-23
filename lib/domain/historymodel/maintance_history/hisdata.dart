import 'package:json_annotation/json_annotation.dart';

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
  String? serviceDate;
  @JsonKey(name: 'service_description')
  String? serviceDescription;
  @JsonKey(name: 'parts_changed')
  String? partsChanged;
  @JsonKey(name: 'service_charge')
  int? serviceCharge;
  @JsonKey(name: 'photos')
  List<String>? photos;
  @JsonKey(name: 'videos')
  List<String>? videos;

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
  });

  factory HisData.fromJson(Map<String, dynamic> json) => _$HisDataFromJson(json);

  Map<String, dynamic> toJson() => _$HisDataToJson(this);
}
