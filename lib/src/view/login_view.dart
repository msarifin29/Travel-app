import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel/src/const/app_color.dart';
import 'package:travel/src/const/app_size.dart';
import 'package:travel/src/const/app_string.dart';
import 'package:travel/src/widgets/primary_button.dart';

import '../widgets/q_form.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    final emailC = TextEditingController();
    final passwordC = TextEditingController();
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: size.height * 0.15,
            alignment: Alignment.bottomCenter,
            child: Text(
              "Sign in now",
              style: Theme.of(context).textTheme.headline2,
            ),
          ),
          Container(
            height: AppSize.size40,
            alignment: Alignment.center,
            child: Text(
              "Please sign in to continue our app",
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
                    onPress: () {},
                    title: "Sign in",
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
                    "Don’t have an account?",
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text("Sign up"),
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
              SvgPicture.asset(instagram),
              SvgPicture.asset(twitter),
            ],
          )
        ],
      ),
    );
  }
}
