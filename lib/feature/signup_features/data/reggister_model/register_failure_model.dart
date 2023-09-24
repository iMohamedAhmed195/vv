class RegisterFailureModel {
  String? message;
  Data? data;
  bool? status;
  int? code;

  RegisterFailureModel({this.message, this.data, this.status, this.code});

  RegisterFailureModel.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
    status = json['status'];
    code = json['code'];
  }

}

class Data {
  List<String>? name;
  List<String>? email;
  List<String>? phone;
  List<String>? gender;
  List<String>? password;

  Data({this.name, this.email, this.phone, this.gender, this.password});

  Data.fromJson(Map<String, dynamic> json) {
    name = json['name'].cast<String>();
    email = json['email'].cast<String>();
    phone = json['phone'].cast<String>();
    gender = json['gender'].cast<String>();
    password = json['password'].cast<String>();
  }

}
