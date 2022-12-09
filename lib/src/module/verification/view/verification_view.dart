import 'package:flutter/material.dart';
import 'package:travel/src/routes/string_route.dart';

import '../../../share/const/app_size.dart';
import '../../../share/widgets/primary_button.dart';

class VerificationView extends StatelessWidget {
  const VerificationView({super.key});

  static const route = verification;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Column(children: [
        Container(
          height: size.height * 0.15,
          alignment: Alignment.bottomCenter,
          child: Text(
            "OTP Verification",
            style: Theme.of(context).textTheme.headline2,
          ),
        ),
        const SizedBox(
          height: AppSize.size16,
        ),
        Text(
          "Please check your email www.uihut@gmail.com \nto see the verification code",
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
                const SizedBox(
                  height: AppSize.size16,
                ),
                KPrimaryButton(
                  onPress: () {
                    Navigator.pushReplacementNamed(context, signIn);
                  },
                  title: "Verify",
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
