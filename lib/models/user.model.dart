import 'dart:convert';

class UserModel {
  String email, name, id;

  UserModel({this.name, this.email, this.id});

  factory UserModel.fromJson(Map<String, dynamic> jsonData) {
    return UserModel(
      email: jsonData['email'],
      name: jsonData['name'],
      id: jsonData['id'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "id": this.id,
      "name": this.name,
      "email": this.email,
    };
  }

  @override
  String toString() {
    Map<String, dynamic> user = this.toJson();
    return jsonEncode(user);
  }
}