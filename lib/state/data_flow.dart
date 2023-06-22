import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../Models/user_model.dart';

final userProvider = StateNotifierProvider<UserNotifier, UserModel>((ref) {
  return UserNotifier();
});

class UserNotifier extends StateNotifier<UserModel> {
  UserNotifier() : super(UserModel());

  void setUser(UserModel userModel) {
    state = userModel;
  }

  void removeUser() {
    state = UserModel();
  }

  void setUserEmail(String email) {
    state = state.copyWith(email: email);
  }

  void setUserName(String name) {
    state = state.copyWith(name: name);
  }

  void setUserPhone(String s) {
    state = state.copyWith(phone: s);
  }

  void setDOB(String s) {
    state = state.copyWith(dob: s);
  }

  void setUserAddress(String s) {
    state = state.copyWith(address: s);
  }

  void setUserCity(String s) {
    state = state.copyWith(city: s);
  }

  void setUserRegion(String s) {
    state = state.copyWith(region: s);
  }

  void setUserGender(String value) {
    state = state.copyWith(gender: value);
  }

  void setUserBloodGroup(String blood) {
    state = state.copyWith(bloodGroup: blood);
  }

  void setUserPassword(String s) {
    state = state.copyWith(password: s);
  }
}

final userSignInProvider =
    StateNotifierProvider<UserSignIn, User?>((ref) => UserSignIn());

class UserSignIn extends StateNotifier<User?> {
  UserSignIn() : super(FirebaseAuth.instance.currentUser!);
  void setUser(User user) {
    state = user;
  }

  void removeUser() {
    state = null;
  }

  void signInUser({String? email, String? password, required WidgetRef ref}) {}
}

final userImageProvider = StateProvider<File?>((ref) => null);
