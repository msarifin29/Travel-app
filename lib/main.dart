import 'package:flutter/material.dart';
import 'package:travel/src/module/calendar/view/calendar_view.dart';
import 'package:travel/src/module/dashboard/view/dashboard_view.dart';
import 'package:travel/src/module/detail/view/detail_view.dart';
import 'package:travel/src/module/home/view/home_view.dart';
import 'package:travel/src/module/profile/view/profile_view.dart';
import 'package:travel/src/share/const/themes.dart';
import 'package:travel/src/routes/string_route.dart';
import 'package:travel/src/module/forget_password/view/forget_password.dart';
import 'package:travel/src/module/sign_in/view/sign_in_view.dart';
import 'package:travel/src/module/sign_up/view/sign_up_view.dart';
import 'package:travel/src/module/verification/view/verification_view.dart';

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
        profileView: (context) => const ProfileView(),
        calendarView: (context) => const CalendarView(),
        dashboard: (context) => const DashboardView(),
        detail: (context) => const DetailView(),
        forgetPassword: (context) => const ForgotPasswordView(),
        verification: (context) => const VerificationView(),
      },
      home: const SignInView(),
    );
  }
}
