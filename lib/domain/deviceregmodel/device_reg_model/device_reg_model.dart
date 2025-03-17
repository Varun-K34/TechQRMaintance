// ignore: depend_on_referenced_packages
import 'package:json_annotation/json_annotation.dart';

part 'device_reg_model.g.dart';

@JsonSerializable()
class DeviceRegModel {
  @JsonKey(name: 'brand')
  String? brand;
  @JsonKey(name: 'serial_no')
  String? serialNo;
  @JsonKey(name: 'model')
  String? model;
  @JsonKey(name: 'registered_by')
  int? registeredBy;
  @JsonKey(name: 'location')
  String? location;
  @JsonKey(name: 'warranty_expiry')
  String? warrantyExpiry;
  @JsonKey(name: 'registered_at')
  String? registeredAt;
  @JsonKey(name: 'invoice_details')
  String? invoiceDetails;

  DeviceRegModel({
    this.brand,
    this.model,
    this.serialNo,
    this.registeredBy,
    this.location,
    this.warrantyExpiry,
    this.registeredAt,
    this.invoiceDetails,
  });

  factory DeviceRegModel.fromJson(Map<String, dynamic> json) {
    return _$DeviceRegModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$DeviceRegModelToJson(this);
}
