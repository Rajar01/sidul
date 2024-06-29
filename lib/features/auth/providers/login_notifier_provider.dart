import 'dart:convert';
import 'dart:developer' as developer;

import 'package:http/http.dart' as http;
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sidul/features/auth/models/login_model.dart';

part 'login_notifier_provider.g.dart';

@riverpod
class LoginNotifier extends _$LoginNotifier {
  @override
  LoginModel build() {
    return const LoginModel(username: "", password: "");
  }

  void usernameFieldOnChange(String username) {
    state = state.copyWith(username: username, password: state.password);
  }

  void passwordFieldOnChange(String password) {
    state = state.copyWith(username: state.username, password: password);
  }

  Future<http.Response> onLoginButtonClicked() async {
    final response = await http.post(
      Uri.parse("http://192.168.100.189:8080/api/v1/accounts/login"),
      headers: <String, String>{
        'Content-Type': 'application/json',
      },
      body: jsonEncode({
        "username": state.username,
        "password": state.password,
      }),
    );

    // TODO implement hive box to store token from response

    return response;
  }
}
