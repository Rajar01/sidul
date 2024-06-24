// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RegisterModelImpl _$$RegisterModelImplFromJson(Map<String, dynamic> json) =>
    _$RegisterModelImpl(
      username: json['username'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
      role: $enumDecode(_$RoleEnumMap, json['role']),
      majors:
          (json['majors'] as List<dynamic>).map((e) => e as String).toList(),
      fullName: json['fullName'] as String,
      phoneNumber: json['phoneNumber'] as String,
      dob: DateTime.parse(json['dob'] as String),
      country: json['country'] as String,
    );

Map<String, dynamic> _$$RegisterModelImplToJson(_$RegisterModelImpl instance) =>
    <String, dynamic>{
      'username': instance.username,
      'email': instance.email,
      'password': instance.password,
      'role': _$RoleEnumMap[instance.role]!,
      'majors': instance.majors,
      'fullName': instance.fullName,
      'phoneNumber': instance.phoneNumber,
      'dob': instance.dob.toIso8601String(),
      'country': instance.country,
    };

const _$RoleEnumMap = {
  Role.learner: 'learner',
  Role.lecturer: 'lecturer',
};
