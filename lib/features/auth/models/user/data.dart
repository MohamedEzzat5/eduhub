import 'package:equatable/equatable.dart';

import 'user_data.dart';

class Data extends Equatable {
  final UserData? user;

  const Data({this.user});

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        user: json['user'] == null
            ? null
            : UserData.fromJson(json['user'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'user': user?.toJson(),
      };

  @override
  List<Object?> get props => [user];
}
