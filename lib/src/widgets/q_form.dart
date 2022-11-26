import 'package:flutter/material.dart';
import 'package:travel/src/const/app_color.dart';

import '../const/app_size.dart';

class QForm extends StatelessWidget {
  const QForm(
      {Key? key,
      required this.label,
      required this.controller,
      this.inputType,
      this.iconData})
      : super(key: key);

  final String label;
  final TextEditingController controller;
  final TextInputType? inputType;
  final Widget? iconData;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: inputType,
      decoration: InputDecoration(
        labelText: label,
        suffixIcon: iconData,
        border: OutlineInputBorder(
            gapPadding: AppSize.size16,
            borderRadius: BorderRadius.circular(AppSize.size16),
            borderSide: const BorderSide(color: greyColor)),
      ),
    );
  }
}
