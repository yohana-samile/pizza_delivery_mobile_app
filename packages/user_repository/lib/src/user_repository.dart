import 'package:firebase_auth/firebase_auth.dart';

import 'models/models.dart';

abstract class UserRepository{
  Stream<MyUser?> get user;

  Future<MyUser> signup(MyUser myUser, String password);

  Future<void> setUserData(MyUser user);

  Future<void> signIn(String email, String password);

  Future<void> logOut();
}