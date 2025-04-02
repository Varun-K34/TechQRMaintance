
import 'dart:io';

import 'package:json_annotation/json_annotation.dart';

part 'docdata.g.dart';

@JsonSerializable()
class DocData {
  @JsonKey(name: 'org_id')
  String? orgId;
  @JsonKey(name: 'device_id')
  String? deviceId;
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'file_url')
  String? fileUrl;
  @JsonKey(includeFromJson: false,)
  File? file;
  @JsonKey(name: 'id')
  int? id;

  DocData({
    this.orgId,
    this.deviceId,
    this.name,
    this.file,
    this.fileUrl,
    this.id,
  });

  DocData.create({
    required this.orgId,
    required this.file,
    required this.deviceId,
    this.name,
  });

  factory DocData.fromJson(Map<String, dynamic> json) => _$DocDataFromJson(json);

  Map<String, dynamic> toJson() => _$DocDataToJson(this);

  
}
