import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_state_provider.g.dart';

@riverpod
class AppState extends _$AppState {
  @override
  Map<String, dynamic> build() {
    return {"isPasswordFieldVisible": false};
  }

  void showPassword() {
    state = {...state, "isPasswordFieldVisible": true};
  }

  void hidePassword() {
    state = {...state, "isPasswordFieldVisible": false};
  }
}
