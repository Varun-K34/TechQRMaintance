import 'package:json_annotation/json_annotation.dart';

part 'customer.g.dart';

@JsonSerializable()
class Customer {
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
  dynamic masterQrId;
  @JsonKey(name: 'pin')
  int? pin;

  Customer({
    this.id,
    this.orgId,
    this.fullName,
    this.email,
    this.phone,
    this.address,
    this.gpsCoordinates,
    this.masterQrId,
    this.pin,
  });

  factory Customer.fromJson(Map<String, dynamic> json) {
    return _$CustomerFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CustomerToJson(this);
}
