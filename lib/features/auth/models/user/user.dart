import 'package:equatable/equatable.dart';

import 'data.dart';

class User extends Equatable {
  final String? status;
  final String? token;
  final Data? data;

  const User({this.status, this.token, this.data});

  factory User.fromJson(Map<String, dynamic> json) => User(
        status: json['status'] as String?,
        token: json['token'] as String?,
        data: json['data'] == null
            ? null
            : Data.fromJson(json['data'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'status': status,
        'token': token,
        'data': data?.toJson(),
      };

  @override
  List<Object?> get props => [status, token, data];
}
