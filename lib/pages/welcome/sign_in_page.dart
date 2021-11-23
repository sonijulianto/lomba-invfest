import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lomba/common/theme.dart';
import 'package:lomba/pages/cubit/login_cubit.dart';
import 'package:lomba/pages/welcome/sign_up_page.dart';
import 'package:lomba/widgets/custom_button.dart';
import 'package:lomba/widgets/custom_text_form_fiel.dart';

class SignInPage extends StatelessWidget {
  SignInPage({Key? key}) : super(key: key);

  final TextEditingController emailController = TextEditingController(text: '');
  final TextEditingController passwordController =
      TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    Widget loading() {
      return Container(
          width: double.infinity,
          height: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: blueColor,
          ),
          child: Center(
            child: Container(
              width: 20,
              height: 20,
              child: CircularProgressIndicator(
                color: Colors.white,
                strokeWidth: 2,
              ),
            ),
          ));
    }

    Widget title() {
      return Container(
        margin: EdgeInsets.only(top: 20, bottom: 20),
        width: 150,
        height: 75,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/logo.png'),
          ),
        ),
      );
    }

    Widget inputSection() {
      Widget emailInput() {
        return CustomTextFormField(
          title: 'Email ',
          hintText: 'Masukan email',
          controller: emailController,
          input: TextInputType.emailAddress,
        );
      }

      Widget passwordInput() {
        return CustomTextFormField(
          title: 'Password',
          hintText: 'Masukan password',
          obscureText: true,
          controller: passwordController,
          input: TextInputType.text,
        );
      }

      Widget submitButton() {
        return BlocConsumer<LoginCubit, LoginState>(
          listener: (context, state) {
            if (state is LoginSuccess) {
              Navigator.pushNamedAndRemoveUntil(
                  context, '/home', (route) => false);
            } else if (state is LoginFailed) {
              String _textSelect(String str) {
                str = str.replaceAll('[firebase_auth/unknown]', '');
                str = str.replaceAll(
                    '[firebase_auth/invalid-email]', 'Email Salah !  ');
                str = str.replaceAll('[firebase_auth/weak-password]', '');
                str = str.replaceAll('[firebase_auth/user-not-found]',
                    'Email belum terdaftar !');
                str = str.replaceAll(
                    '[firebase_auth/wrong-password]', 'Password anda salah !');
                return str;
              }

              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  backgroundColor: Colors.red,
                  content: Text(_textSelect(state.error)),
                ),
              );
            }
          },
          builder: (context, state) {
            if (state is LoginLoading) {
              return loading();
            }

            return CustomButton(
              title: 'Masuk',
              onPressed: () {
                context.read<LoginCubit>().signIn(
                      email: emailController.text,
                      password: passwordController.text,
                    );
              },
            );
          },
        );
      }

      return Column(
        children: [
          emailInput(),
          passwordInput(),
          submitButton(),
        ],
      );
    }

    Widget signInButton() {
      return Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(
          top: 30,
          bottom: 73,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Belum punya akun?',
              style: greyTextStyle.copyWith(
                color: Colors.black54,
              ),
            ),
            TextButton(
              onPressed: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SignUpPage())),
              child: Text(
                'Daftar',
                style: greyTextStyle.copyWith(
                    fontWeight: bold, color: blueColor, letterSpacing: 0.5),
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: 17,
          ),
          children: [
            title(),
            inputSection(),
            signInButton(),
          ],
        ),
      ),
    );
  }
}
