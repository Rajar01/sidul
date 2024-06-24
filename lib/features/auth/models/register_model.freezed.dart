// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RegisterModel _$RegisterModelFromJson(Map<String, dynamic> json) {
  return _RegisterModel.fromJson(json);
}

/// @nodoc
mixin _$RegisterModel {
  String get username => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  Role get role => throw _privateConstructorUsedError;
  List<String> get majors => throw _privateConstructorUsedError;
  String get fullName => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  DateTime get dob => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegisterModelCopyWith<RegisterModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterModelCopyWith<$Res> {
  factory $RegisterModelCopyWith(
          RegisterModel value, $Res Function(RegisterModel) then) =
      _$RegisterModelCopyWithImpl<$Res, RegisterModel>;
  @useResult
  $Res call(
      {String username,
      String email,
      String password,
      Role role,
      List<String> majors,
      String fullName,
      String phoneNumber,
      DateTime dob,
      String country});
}

/// @nodoc
class _$RegisterModelCopyWithImpl<$Res, $Val extends RegisterModel>
    implements $RegisterModelCopyWith<$Res> {
  _$RegisterModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? email = null,
    Object? password = null,
    Object? role = null,
    Object? majors = null,
    Object? fullName = null,
    Object? phoneNumber = null,
    Object? dob = null,
    Object? country = null,
  }) {
    return _then(_value.copyWith(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as Role,
      majors: null == majors
          ? _value.majors
          : majors // ignore: cast_nullable_to_non_nullable
              as List<String>,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      dob: null == dob
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as DateTime,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegisterModelImplCopyWith<$Res>
    implements $RegisterModelCopyWith<$Res> {
  factory _$$RegisterModelImplCopyWith(
          _$RegisterModelImpl value, $Res Function(_$RegisterModelImpl) then) =
      __$$RegisterModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String username,
      String email,
      String password,
      Role role,
      List<String> majors,
      String fullName,
      String phoneNumber,
      DateTime dob,
      String country});
}

/// @nodoc
class __$$RegisterModelImplCopyWithImpl<$Res>
    extends _$RegisterModelCopyWithImpl<$Res, _$RegisterModelImpl>
    implements _$$RegisterModelImplCopyWith<$Res> {
  __$$RegisterModelImplCopyWithImpl(
      _$RegisterModelImpl _value, $Res Function(_$RegisterModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? email = null,
    Object? password = null,
    Object? role = null,
    Object? majors = null,
    Object? fullName = null,
    Object? phoneNumber = null,
    Object? dob = null,
    Object? country = null,
  }) {
    return _then(_$RegisterModelImpl(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as Role,
      majors: null == majors
          ? _value._majors
          : majors // ignore: cast_nullable_to_non_nullable
              as List<String>,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      dob: null == dob
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as DateTime,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RegisterModelImpl implements _RegisterModel {
  const _$RegisterModelImpl(
      {required this.username,
      required this.email,
      required this.password,
      required this.role,
      required final List<String> majors,
      required this.fullName,
      required this.phoneNumber,
      required this.dob,
      required this.country})
      : _majors = majors;

  factory _$RegisterModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RegisterModelImplFromJson(json);

  @override
  final String username;
  @override
  final String email;
  @override
  final String password;
  @override
  final Role role;
  final List<String> _majors;
  @override
  List<String> get majors {
    if (_majors is EqualUnmodifiableListView) return _majors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_majors);
  }

  @override
  final String fullName;
  @override
  final String phoneNumber;
  @override
  final DateTime dob;
  @override
  final String country;

  @override
  String toString() {
    return 'RegisterModel(username: $username, email: $email, password: $password, role: $role, majors: $majors, fullName: $fullName, phoneNumber: $phoneNumber, dob: $dob, country: $country)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterModelImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.role, role) || other.role == role) &&
            const DeepCollectionEquality().equals(other._majors, _majors) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.dob, dob) || other.dob == dob) &&
            (identical(other.country, country) || other.country == country));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      username,
      email,
      password,
      role,
      const DeepCollectionEquality().hash(_majors),
      fullName,
      phoneNumber,
      dob,
      country);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterModelImplCopyWith<_$RegisterModelImpl> get copyWith =>
      __$$RegisterModelImplCopyWithImpl<_$RegisterModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RegisterModelImplToJson(
      this,
    );
  }
}

abstract class _RegisterModel implements RegisterModel {
  const factory _RegisterModel(
      {required final String username,
      required final String email,
      required final String password,
      required final Role role,
      required final List<String> majors,
      required final String fullName,
      required final String phoneNumber,
      required final DateTime dob,
      required final String country}) = _$RegisterModelImpl;

  factory _RegisterModel.fromJson(Map<String, dynamic> json) =
      _$RegisterModelImpl.fromJson;

  @override
  String get username;
  @override
  String get email;
  @override
  String get password;
  @override
  Role get role;
  @override
  List<String> get majors;
  @override
  String get fullName;
  @override
  String get phoneNumber;
  @override
  DateTime get dob;
  @override
  String get country;
  @override
  @JsonKey(ignore: true)
  _$$RegisterModelImplCopyWith<_$RegisterModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
