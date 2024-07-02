import 'package:equatable/equatable.dart';

class UserData extends Equatable {
  final String? id;
  final String? name;
  final String? email;
  final String? role;
  final int? v;
  final DateTime? passwordChangedAt;
  final DateTime? passwordResetExpires;
  final String? passwordResetToken;

  const UserData({
    this.id,
    this.name,
    this.email,
    this.role,
    this.v,
    this.passwordChangedAt,
    this.passwordResetExpires,
    this.passwordResetToken,
  });

  factory UserData.fromJson(Map<String, dynamic> json) => UserData(
        id: json['_id'] as String?,
        name: json['name'] as String?,
        email: json['email'] as String?,
        role: json['role'] as String?,
        v: json['__v'] as int?,
        passwordChangedAt: json['passwordChangedAt'] == null
            ? null
            : DateTime.parse(json['passwordChangedAt'] as String),
        passwordResetExpires: json['passwordResetExpires'] == null
            ? null
            : DateTime.parse(json['passwordResetExpires'] as String),
        passwordResetToken: json['passwordResetToken'] as String?,
      );

  Map<String, dynamic> toJson() => {
        '_id': id,
        'name': name,
        'email': email,
        'role': role,
        '__v': v,
        'passwordChangedAt': passwordChangedAt?.toIso8601String(),
        'passwordResetExpires': passwordResetExpires?.toIso8601String(),
        'passwordResetToken': passwordResetToken,
      };

  @override
  List<Object?> get props {
    return [
      id,
      name,
      email,
      role,
      v,
      passwordChangedAt,
      passwordResetExpires,
      passwordResetToken,
    ];
  }
}
