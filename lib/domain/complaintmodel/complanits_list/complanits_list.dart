// ignore: depend_on_referenced_packages
import 'package:json_annotation/json_annotation.dart';

import 'datum.dart';

part 'complanits_list.g.dart';

@JsonSerializable()
class ComplanitsList {
  @JsonKey(name: 'data')
  List<Datum>? data;

  ComplanitsList({
    this.data = const [],
  });

  factory ComplanitsList.fromJson(Map<String, dynamic> json) {
    return _$ComplanitsListFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ComplanitsListToJson(this);
}
