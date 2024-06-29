import 'dart:convert';
import 'dart:developer' as developer;

import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sidul/features/auth/models/register_model.dart';
import 'package:sidul/shared/enums/role.dart';

part 'register_notifier_provider.g.dart';

@riverpod
class RegisterNotifier extends _$RegisterNotifier {
  @override
  RegisterModel build() {
    return RegisterModel(
      username: "",
      email: "",
      password: "",
      role: Role.learner,
      major: "",
      fullName: "",
      phoneNumber: "",
      dob: DateTime.now(),
    );
  }

  void usernameFieldOnChange(String username) {
    state = state.copyWith(username: username);
  }

  void emailFieldOnChange(String email) {
    state = state.copyWith(email: email);
  }

  void passwordFieldOnChange(String password) {
    state = state.copyWith(password: password);
  }

  void onRoleSelected(Role role) {
    state = state.copyWith(role: role);
  }

  void majorOnChange(String major) {
    state = state.copyWith(major: major);
  }

  void fullNameFieldOnChange(String fullName) {
    state = state.copyWith(fullName: fullName);
  }

  void phoneNumberFieldOnChange(String phoneNumber) {
    state = state.copyWith(phoneNumber: phoneNumber);
  }

  void onDobSubmitted(DateTime date) {
    state = state.copyWith(dob: date);
  }

  Future<Map<String, dynamic>> onSubmitRegistration() async {
    final request = http.MultipartRequest(
      'POST',
      Uri.parse("http://192.168.100.189:8080/api/v1/accounts/register"),
    );

    request.fields["fullname"] = state.fullName;
    request.fields["username"] = state.username;
    request.fields["email"] = state.email;
    request.fields["phone_number"] = state.phoneNumber;
    request.fields["dob"] = DateFormat('yyyy-MM-dd').format(state.dob);
    request.fields["role"] = state.role.name.toUpperCase();
    request.fields["password"] = state.password;
    request.fields["major"] = state.major;

    final streamedResponse = await request.send();

    // TODO implement hive box to store token from response
    final response = await streamedResponse.stream.bytesToString();

    developer.inspect(jsonDecode(response));

    return jsonDecode(response);
  }
}
