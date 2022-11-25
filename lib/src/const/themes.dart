import 'package:flutter/material.dart';
import 'package:travel/src/const/app_color.dart';
import 'package:travel/src/const/app_size.dart';

ThemeData get lightTheme => ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      textTheme: const TextTheme(
        headline2: TextStyle(
            fontSize: AppSize.size26,
            fontWeight: FontWeight.w600,
            color: lightBlackColor),
        headline5: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: AppSize.size16,
            color: greyColor),
        headline6: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: AppSize.size14,
            color: greyColor),
      ),
    );
