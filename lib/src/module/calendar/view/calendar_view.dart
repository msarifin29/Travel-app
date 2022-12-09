import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel/src/routes/string_route.dart';

import '../../../share/const/app_color.dart';
import '../../../share/const/app_size.dart';
import '../../../share/const/app_string.dart';
import '../../../share/widgets/q_button_icon.dart';

class CalendarView extends StatelessWidget {
  const CalendarView({super.key});
  static const route = calendarView;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true, automaticallyImplyLeading: false,
        title: Text(
          "Schedule",
          style: Theme.of(context)
              .textTheme
              .headline4!
              .copyWith(color: blackBlureColor),
        ),
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: AppSize.size20),
            child: GestureDetector(
              onTap: () {},
              child: SvgPicture.asset(notification),
            ),
          ),
          const SizedBox(
            width: AppSize.size14,
          ),
        ],
        // leading: QButtonIcon(
        //   icon: Icons.arrow_back_ios,
        //   onPressed: () => Navigator.of(context).pop(),
        // ),
      ),
      body: const Center(
        child: Text("Calendar"),
      ),
    );
  }
}
