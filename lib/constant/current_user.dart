import 'package:patronist/models/user_model.dart';

class CurrentUser {
  static UserModel? _currentUser;

  static void set(UserModel user) {
    _currentUser = user;
  }

  static UserModel? get() => _currentUser;
}