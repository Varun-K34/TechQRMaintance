import 'package:json_annotation/json_annotation.dart';

part 'customer_model.g.dart';

@JsonSerializable()
class CustomerModel {
  @JsonKey(name: 'id')
  int? id;  
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'email')
  String? email;
  @JsonKey(name: 'role')
  String? role;
  @JsonKey(name: 'password')
  String? password;

  CustomerModel({
    this.id,
    this.name,
    this.email,
    this.role = "customer",
    this.password = "pswrd",
  });

  /// ✅ Corrected factory method to avoid `null` issues
  factory CustomerModel.fromJson(Map<String, dynamic> json) {
    final data = json['data']; // Extract 'data' field

    if (data == null) {
      return CustomerModel();
    }

    return CustomerModel(
      id: data['id'] as int?, // Ensure `id` is an int
      name: data['name'] as String?,
      email: data['email'] as String?,
    );
  }

  /// ✅ Corrected `toJson` method
  Map<String, dynamic> toJson() {
    final json = _$CustomerModelToJson(this);
    json.remove('id'); // Remove `id` before sending to API
    return json;
  }
}
