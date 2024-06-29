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
      major: json['major'] as String,
      fullName: json['fullName'] as String,
      phoneNumber: json['phoneNumber'] as String,
      dob: DateTime.parse(json['dob'] as String),
    );

Map<String, dynamic> _$$RegisterModelImplToJson(_$RegisterModelImpl instance) =>
    <String, dynamic>{
      'username': instance.username,
      'email': instance.email,
      'password': instance.password,
      'role': _$RoleEnumMap[instance.role]!,
      'major': instance.major,
      'fullName': instance.fullName,
      'phoneNumber': instance.phoneNumber,
      'dob': instance.dob.toIso8601String(),
    };

const _$RoleEnumMap = {
  Role.learner: 'learner',
  Role.lecturer: 'lecturer',
};
