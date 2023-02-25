import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:meta/meta.dart';
import 'package:patronist/constant/current_user.dart';

import '../../models/user_model.dart';

part 'log_in_state.dart';

class LogInCubit extends Cubit<LogInState> {
  LogInCubit() : super(LogInInitial());

  Future<void> loginUser({
    required String email,
    required String password,
  }) async {
    emit(LogInLoading());
    try {
      UserCredential user =
          await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      final userData = await FirebaseFirestore.instance
          .collection('users')
          .doc(user.user!.uid)
          .get();
      final userModel = UserModel(
        id: userData.data()!['id'],
        email: userData.data()!['email'],
        firstName: userData.data()!['firstName'],
        lastName: userData.data()!['lastName'],
        phoneNumber: userData.data()!['phoneNumber'],
      );
      CurrentUser.set(userModel);
      emit(LogInSuccess());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        emit(
          LogInFailure(errorMessage: 'No user found'),
        );
      } else if (e.code == 'wrong-password') {
        emit(
          LogInFailure(errorMessage: 'Wrong password'),
        );
      }
    } catch (e) {
      emit(
        LogInFailure(errorMessage: 'Something went wrong'),
      );
    }
  }

  void logOut() async {
    try {
      emit(LogOutLoading());
      await FirebaseAuth.instance.signOut();
      emit(LogOutSuccess());
    } catch (e) {
      emit(
        LogOutFailure(errorMessage: 'Something went wrong'),
      );
    }
  }
}
