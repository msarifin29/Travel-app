import 'package:flutter/material.dart';
import 'package:travel/src/share/const/app_color.dart';
import 'package:travel/src/share/const/app_size.dart';

class KPrimaryButton extends StatelessWidget {
  const KPrimaryButton({
    super.key,
    required this.onPress,
    required this.title,
    required this.width,
  });
  final Function()? onPress;
  final String title;
  final double width;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56.0,
      width: width,
      child: ElevatedButton(
        onPressed: onPress,
        style: ElevatedButton.styleFrom(
          backgroundColor: blueColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSize.size16),
          ),
        ),
        child: Text(
          title,
          style: const TextStyle(
            color: whiteColor,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
