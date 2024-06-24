import 'dart:developer' as developer;

import 'package:flutter/material.dart';
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
      majors: <String>[""],
      fullName: "",
      phoneNumber: "",
      dob: DateTime.now(),
      country: "Indonesia",
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

  void addMajorToSelection(String major) {
    state = state.copyWith(majors: [...state.majors, major]);
  }

  void removeMajorFromSelection(String major) {
    state = state.copyWith(
        majors: state.majors
            .where(
              (m) => m != major,
            )
            .toList());
  }

  void fullNameFieldOnChange(String fullName) {
    state = state.copyWith(fullName: fullName);
  }

  void phoneNumberFieldOnChange(String phoneNumber) {
    state = state.copyWith(phoneNumber: phoneNumber);
  }

  void dobFieldOnTap(
    // ignore: avoid_build_context_in_providers
    BuildContext context,
    TextEditingController textEditingController,
  ) async {
    final dob = await showDatePicker(
        context: context,
        initialDate: state.dob,
        firstDate: DateTime(1900),
        lastDate: DateTime(2100));

    if (dob != null) {
      textEditingController.text = dob.toString().split(" ")[0];
      state = state.copyWith(dob: dob);
      developer.log(state.dob.toString(),
          name: "sidul.register-notifier-provider");
    }
  }

  void onCountryChanged(String country) {
    state = state.copyWith(country: country);
  }

  void onRegisterButtonClicked() {
    // TODO implement API call logic for user register with proper error handling and user data storage.

    developer.log(state.toString(), name: "sidul.register-notifier-provider");
  }
}
