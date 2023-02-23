import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';

part 'log_in_state.dart';

class LogInCubit extends Cubit<LogInState> {
  LogInCubit() : super(LogInInitial());
   Future<void> loginUser(
      {required String email, required String password}) async {
    emit(LogInLoading());
    try {
      UserCredential user = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
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
}

