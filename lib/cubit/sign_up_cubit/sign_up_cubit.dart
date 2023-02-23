import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:patronist/models/user_model.dart';
import 'package:patronist/services/firestore_user.dart';

part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit() : super(SignUpInitial());

  Future<void> signUp(
      {required String email,
      required String firstName,
      required String lastName,
      required String phoneNumber,
      required String password,
      required String confirmPassword}) async {
    emit(SignUpLoading());
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      //     .then((user) async {
      //   {
      //     await FireStoreUser().addUser(
      //       UserModel(
      //           id: user.user!.uid,
      //           firstName: firstName,
      //           lastName: lastName,
      //           email: user.user!.email,
      //           phoneNumber: phoneNumber),
      //     );
      //   }
      // });
      emit(SignUpSuccess());
    } on FirebaseException catch (e) {
      if (e.code == 'email-already-in-use') {
        emit(
          SignUpFailure(errorMessage: 'Email already in use'),
        );
      } else if (e.code == 'weak-password') {
        emit(
          SignUpFailure(errorMessage: 'Password is too weak'),
        );
      } else if (e.code == 'password not equal') {
        emit(
          SignUpFailure(errorMessage: 'Password is not equal'),
        );
      }
    } catch (e) {
      emit(
        SignUpFailure(errorMessage: 'Something went wrong'),
      );
    }
  }
}
