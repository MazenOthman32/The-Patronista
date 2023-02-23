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
