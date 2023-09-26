import 'data.dart';

class CreateTaskModel {
  String? message;
  Data? data;
  bool? status;
  int? code;

  CreateTaskModel({this.message, this.data, this.status, this.code});

  factory CreateTaskModel.fromJson(Map<String, dynamic> json) {
    return CreateTaskModel(
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
      status: json['status'] as bool?,
      code: json['code'] as int?,
    );
  }

  Map<String, dynamic> toJson() => {
        'message': message,
        'data': data?.toJson(),
        'status': status,
        'code': code,
      };
}
