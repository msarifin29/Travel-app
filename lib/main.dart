import 'package:flutter/material.dart';
import 'package:travel/src/const/themes.dart';
import 'package:travel/src/routes/string_route.dart';
import 'package:travel/src/view/dashboard_view.dart';
import 'package:travel/src/view/forget_password.dart';
import 'package:travel/src/view/sign_in_view.dart';
import 'package:travel/src/view/sign_up_view.dart';
import 'package:travel/src/view/verification_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightTheme,
      routes: {
        signIn: (context) => const SignInView(),
        signUp: (context) => const SignUpView(),
        dashboard: (context) => const DashboardView(),
        forgetPassword: (context) => const ForgotPasswordView(),
        verification: (context) => const VerificationView(),
      },
      home: const SignInView(),
    );
  }
}
