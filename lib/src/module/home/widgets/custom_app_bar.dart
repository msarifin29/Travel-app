import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel/src/routes/string_route.dart';

import '../../../share/const/app_color.dart';
import '../../../share/const/app_size.dart';
import '../../../share/const/app_string.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      flexibleSpace: Container(
        alignment: Alignment.bottomCenter,
        height: AppSize.size140,
        child: GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, profileView);
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 44.0,
                width: AppSize.size140,
                margin: const EdgeInsets.only(
                  left: AppSize.size20,
                ),
                decoration: BoxDecoration(
                  color: greySadeColor,
                  borderRadius: BorderRadius.circular(AppSize.size20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SvgPicture.asset(avatar),
                    const Text("Leonardo"),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: AppSize.size20),
                child: GestureDetector(
                    onTap: () {}, child: SvgPicture.asset(notification)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
