part of 'log_in_cubit.dart';

@immutable
abstract class LogInState {}

class LogInInitial extends LogInState {}

class LogInSuccess extends LogInState {}

class LogInLoading extends LogInState {}

class LogInFailure extends LogInState {
  String errorMessage;
  LogInFailure({
    required this.errorMessage,
  });
}
