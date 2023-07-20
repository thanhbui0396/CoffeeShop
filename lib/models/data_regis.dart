import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class DataRegis {
  String email;
  String name;
  String password;
  String rePassword;
  String group_id;
  String id_app;
  DataRegis({
    required this.email,
    required this.name,
    required this.password,
    required this.rePassword,
    required this.group_id,
    required this.id_app,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
      'name': name,
      'password': password,
      'rePassword': rePassword,
      'group_id': group_id,
      'id_app': id_app,
    };
  }

  factory DataRegis.fromMap(Map<String, dynamic> map) {
    return DataRegis(
      email: map['email'] as String,
      name: map['name'] as String,
      password: map['password'] as String,
      rePassword: map['rePassword'] as String,
      group_id: map['group_id'] as String,
      id_app: map['id_app'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory DataRegis.fromJson(String source) =>
      DataRegis.fromMap(json.decode(source) as Map<String, dynamic>);
}
