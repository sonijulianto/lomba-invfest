import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lomba/common/theme.dart';
import 'package:lomba/pages/cubit/auth_cubit.dart';
import 'package:lomba/pages/welcome/sign_in_page.dart';
import 'package:lomba/widgets/custom_button.dart';
import 'package:lomba/widgets/custom_text_form_fiel.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({Key? key}) : super(key: key);

  final TextEditingController nikController = TextEditingController(text: '');
  final TextEditingController nameController = TextEditingController(text: '');
  final TextEditingController emailController = TextEditingController(text: '');
  final TextEditingController passwordController =
      TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: EdgeInsets.only(top: 15),
        width: 200,
        height: 50,
        color: Colors.amber,
      );
    }

    Widget inputSection() {
      Widget nameInput() {
        return CustomTextFormField(
          title: 'Nama',
          hintText: 'Masukan nama',
          controller: nameController,
          input: TextInputType.text,
        );
      }

      Widget nikInput() {
        return CustomTextFormField(
          title: 'NIK',
          hintText: 'Masukan NIK',
          controller: nikController,
          input: TextInputType.number,
        );
      }

      Widget emailInput() {
        return CustomTextFormField(
          title: 'Email ',
          hintText: 'Masukan email ',
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
        return BlocConsumer<AuthCubit, AuthState>(
          listener: (context, state) {
            if (state is AuthSuccess) {
              Navigator.pushNamedAndRemoveUntil(
                  context, '/home', (route) => false);
            } else if (state is AuthFailed) {
              //TODO : perlu dipatohkan animasi loading nya dan filter error saat login
              String _textSelect(String str) {
                str = str.replaceAll('[firebase_auth/unknown]', '');
                str = str.replaceAll(
                    '[firebase_auth/invalid-email]', 'Email Salah !  ');
                str = str.replaceAll('[firebase_auth/weak-password]', '');
                str = str.replaceAll('[firebase_auth/email-already-in-use]',
                    'Email sudah di gunakan !');
                return str;
              }

              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  backgroundColor: Colors.red,
                  content: Text(
                    _textSelect(state.error),
                    style: whiteTextStyle,
                  ),
                ),
              );
            }
          },
          builder: (context, state) {
            if (state is AuthLoading) {
              return CustomButton(title: 'Loading...', onPressed: () {});
            }

            return CustomButton(
              title: 'Daftar',
              onPressed: () {
                context.read<AuthCubit>().signUp(
                    name: nameController.text,
                    email: emailController.text,
                    password: passwordController.text,
                    nik: nikController.text);
              },
            );
          },
        );
      }

      return Column(
        children: [
          nameInput(),
          nikInput(),
          emailInput(),
          passwordInput(),
          submitButton(),
        ],
      );
    }

    Widget signInButton() {
      return GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, '/sign-in');
        },
        child: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(
            top: 30,
            bottom: 73,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Sudah punya akun? ',
                style: greyTextStyle.copyWith(
                  fontSize: 16,
                  color: Colors.black54,
                ),
              ),
              TextButton(
                onPressed: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SignInPage())),
                child: Text(
                  'Masuk',
                  style: greyTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: bold,
                      color: blueColor,
                      letterSpacing: 0.5),
                ),
              ),
            ],
          ),
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
