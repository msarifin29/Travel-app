import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel/src/const/app_color.dart';
import 'package:travel/src/const/app_size.dart';
import 'package:travel/src/const/app_string.dart';
import 'package:travel/src/routes/string_route.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  static const route = dashboard;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60.0),
        child: AppBar(
          leadingWidth: AppSize.size140,
          leading: Container(
            height: 44.0,
            margin: const EdgeInsets.only(left: 20.0, top: 5.0, bottom: 5.0),
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
          actions: const [
            Icon(Icons.notification_add_outlined),
            SizedBox(
              width: AppSize.size16,
            ),
          ],
        ),
      ),
    );
  }
}
