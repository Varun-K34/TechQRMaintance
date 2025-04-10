import 'package:json_annotation/json_annotation.dart';
import 'package:techqrmaintance/domain/organizationmodel/organization_model/organization_model/organization.dart';

part 'notify_model.g.dart';

@JsonSerializable()
class NotifyModel {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'org_id')
  int? orgId;
  @JsonKey(name: 'razorpay_api_key')
  String? razorpayApiKey;
  @JsonKey(name: 'razorpay_api_secret')
  String? razorpayApiSecret;
  @JsonKey(name: 'notification_interval')
  int? notificationInterval;
  @JsonKey(name: 'organization')
  Organization? organization;

  NotifyModel({
    this.id,
    this.orgId,
    this.razorpayApiKey,
    this.razorpayApiSecret,
    this.notificationInterval,
    this.organization,
  });

  factory NotifyModel.fromJson(Map<String, dynamic> json) =>
      _$NotifyModelFromJson(json);

  Map<String, dynamic> toJson() => _$NotifyModelToJson(this);
}
