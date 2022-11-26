import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel/src/const/app_color.dart';
import 'package:travel/src/const/app_string.dart';

import '../const/app_size.dart';
import '../routes/string_route.dart';
import '../widgets/primary_button.dart';
import '../widgets/q_form.dart';

class ForgotPasswordView extends StatelessWidget {
  const ForgotPasswordView({super.key});

  static const route = forgetPassword;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final emailC = TextEditingController();
    void onClick() async {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 50.0,
                width: 50.0,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: blueColor,
                ),
                child: SvgPicture.asset(iconPrint),
              ),
              const SizedBox(
                height: AppSize.size16,
              ),
              Text(
                "Check your email",
                style: Theme.of(context).textTheme.headline4,
              ),
              const SizedBox(
                height: AppSize.size16,
              ),
              Text(
                "We have send password recovery instruction to your email",
                style: Theme.of(context).textTheme.headline5,
                textAlign: TextAlign.center,
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, verification);
              },
              child: const Text("Ok"),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      body: Column(children: [
        Container(
          height: size.height * 0.20,
          alignment: Alignment.bottomCenter,
          child: Text(
            "Forgot password",
            style: Theme.of(context).textTheme.headline2,
          ),
        ),
        const SizedBox(
          height: AppSize.size16,
        ),
        Text(
          "Enter your email account to reset \n your password",
          style: Theme.of(context).textTheme.headline5,
          textAlign: TextAlign.center,
        ),
        Form(
          child: Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: AppSize.size20, vertical: AppSize.size40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                QForm(
                  label: "Email",
                  controller: emailC,
                  inputType: TextInputType.emailAddress,
                ),
                const SizedBox(
                  height: AppSize.size16,
                ),
                KPrimaryButton(
                  onPress: onClick,
                  title: "Reset password",
                  width: size.width * 0.9,
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
