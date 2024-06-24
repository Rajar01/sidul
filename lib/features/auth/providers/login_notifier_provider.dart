import 'dart:developer' as developer;

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

  void onLoginButtonClicked() {
    // TODO implement API call logic for user login with proper error handling and user data storage.

    developer.log(state.toString(), name: "sidul.login-notifier-provider");
  }
}
