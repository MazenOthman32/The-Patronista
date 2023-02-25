part of 'customer_cubit.dart';

@immutable
abstract class CustomerState {}

class CustomerInitial extends CustomerState {}

class AddCustomerLoading extends CustomerState {}
class AddCustomerSuccess extends CustomerState {}
class AddCustomerFailure extends CustomerState {
  final String errorMessage;
  AddCustomerFailure({required this.errorMessage});
}

class AddPatternToCustomerLoading extends CustomerState {}

class AddPatternToCustomerSuccess extends CustomerState {
  final CustomerModel customer;

  AddPatternToCustomerSuccess({required this.customer});
}

class AddPatternToCustomerFailure extends CustomerState {
  final String errorMessage;
  AddPatternToCustomerFailure({required this.errorMessage});
}
