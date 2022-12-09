import 'package:flutter/material.dart';
import 'package:travel/src/share/const/app_color.dart';
import 'package:travel/src/share/const/app_size.dart';
import 'package:travel/src/routes/string_route.dart';

import '../widgets/custom_app_bar.dart';
import '../widgets/custom_list_view.dart';
import '../widgets/title_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(80.0),
        child: CustomAppBar(),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TitleBody(),
          const SizedBox(
            height: AppSize.size30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppSize.size20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Best Destination",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: AppSize.size20,
                      color: Colors.black),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text("View all"),
                ),
              ],
            ),
          ),
          const CustomListView(),
        ],
      ),
    );
  }
}
