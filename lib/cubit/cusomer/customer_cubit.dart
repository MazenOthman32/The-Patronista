import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:patronist/constant/current_user.dart';

part 'customer_state.dart';

class CustomerCubit extends Cubit<CustomerState> {
  CustomerCubit() : super(CustomerInitial());

  void addCustomer({
    required String code,
    required String name,
    required String email,
    required String phone,
  }) {
    emit(AddCustomerLoading());
    print(CurrentUser.get()
    !.id);
    FirebaseFirestore.instance
        .collection('users')
        .doc(CurrentUser.get()!.id)
        .collection("customer")
        .doc(code)
        .set({
      'code': code,
      'name': name,
      'email': email,
      'phone': phone,
    });
    try {
      emit(AddCustomerSuccess());
    } catch (e) {
      emit(AddCustomerFailure(errorMessage: 'Something went wrong'));
    }
  }
}
