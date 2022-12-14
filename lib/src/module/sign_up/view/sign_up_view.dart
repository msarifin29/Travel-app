import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel/src/share/const/app_color.dart';
import 'package:travel/src/share/const/app_size.dart';
import 'package:travel/src/share/const/app_string.dart';
import 'package:travel/src/routes/string_route.dart';
import 'package:travel/src/share/widgets/primary_button.dart';

import '../../../share/widgets/q_form.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  static const route = signUp;
  @override
  Widget build(BuildContext context) {
    final emailC = TextEditingController();
    final userNameC = TextEditingController();
    final passwordC = TextEditingController();
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: size.height * 0.15,
            alignment: Alignment.bottomCenter,
            child: Text(
              "Sign up now",
              style: Theme.of(context).textTheme.headline2,
            ),
          ),
          Container(
            height: AppSize.size40,
            alignment: Alignment.center,
            child: Text(
              "Please fill the details and create account",
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
          Form(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: AppSize.size20, vertical: AppSize.size40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  QForm(
                    label: "User name",
                    controller: userNameC,
                    inputType: TextInputType.emailAddress,
                    iconData: const Icon(
                      Icons.person_outline,
                    ),
                  ),
                  const SizedBox(
                    height: AppSize.size16,
                  ),
                  QForm(
                    label: "Email",
                    controller: emailC,
                    inputType: TextInputType.emailAddress,
                    iconData: const Icon(
                      Icons.email_outlined,
                    ),
                  ),
                  const SizedBox(
                    height: AppSize.size16,
                  ),
                  QForm(
                    label: "Password",
                    controller: passwordC,
                    iconData: const Icon(Icons.visibility_off),
                  ),
                  const SizedBox(
                    height: AppSize.size12,
                  ),
                  TextButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all<Color>(blueColor),
                    ),
                    child: const Text("Forget password ?"),
                  ),
                  const SizedBox(
                    height: AppSize.size40,
                  ),
                  KPrimaryButton(
                    onPress: () {
                      Navigator.pushReplacementNamed(context, signIn);
                    },
                    title: "Sign up",
                    width: size.width * 0.9,
                  ),
                ],
              ),
            ),
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don???t have an account?",
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, signIn);
                    },
                    child: const Text("Sign in"),
                  ),
                ],
              ),
              Text(
                "Or connect",
                style: Theme.of(context).textTheme.headline6,
              ),
            ],
          ),
          const SizedBox(
            height: AppSize.size40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(facebook),
              const SizedBox(
                width: AppSize.size12,
              ),
              SvgPicture.asset(instagram),
              const SizedBox(
                width: AppSize.size12,
              ),
              SvgPicture.asset(twitter),
            ],
          )
        ],
      ),
    );
  }
}
