part of 'login_cubit.dart';

abstract class LoginState extends Equatable {
  const LoginState();

  @override
  List<Object> get props => [];
}

class LoginInitial extends LoginState {}

class LoginLoading extends LoginState {}

class LoginSuccess extends LoginState {
  final UserModel user;

  LoginSuccess(this.user);

  @override
  List<Object> get props => [user];
}

class LoginFailed extends LoginState {
  final String error;

  LoginFailed(this.error);

  @override
  List<Object> get props => [error];
}
