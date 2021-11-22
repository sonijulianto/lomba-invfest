import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:lomba/model/user_model.dart';
import 'package:lomba/services/auth_services.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  void signIn({required String email, required String password}) async {
    try {
      emit(LoginLoading());
      UserModel user = await AuthService().signIn(
        email: email,
        password: password,
      );
      emit(LoginSuccess(user));
    } catch (e) {
      emit(LoginFailed(e.toString()));
    }
  }
}
