import 'package:flutter/material.dart';

import '../../../share/const/app_color.dart';
import '../../../share/const/app_size.dart';

class TitleBody extends StatelessWidget {
  const TitleBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: AppSize.size20, top: AppSize.size30),
      child: RichText(
        text: const TextSpan(
          text: "Explore the \n",
          style: TextStyle(fontSize: AppSize.size38, color: blackBlureColor),
          children: [
            TextSpan(
              text: "Beautiful ",
              style: TextStyle(
                  fontSize: AppSize.size38,
                  fontWeight: FontWeight.bold,
                  color: lightBlackColor),
            ),
            TextSpan(
              text: "World!",
              style: TextStyle(
                  fontSize: AppSize.size38,
                  fontWeight: FontWeight.bold,
                  color: orangeColor),
            ),
          ],
        ),
      ),
    );
  }
}
