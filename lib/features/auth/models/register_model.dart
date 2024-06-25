import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sidul/shared/enums/role.dart';

part 'register_model.freezed.dart';

part 'register_model.g.dart';

@freezed
class RegisterModel with _$RegisterModel {
  const factory RegisterModel({
    required String username,
    required String email,
    required String password,
    required Role role,
    required List<String> majors,
    required String fullName,
    required  String phoneNumber,
    required DateTime dob,
    required String country,
  }) = _RegisterModel;

  factory RegisterModel.fromJson(Map<String, Object?> json) =>
      _$RegisterModelFromJson(json);
}
