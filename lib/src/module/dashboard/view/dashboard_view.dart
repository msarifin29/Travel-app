import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel/src/module/calendar/view/calendar_view.dart';
import 'package:travel/src/module/chats/view/chat_view.dart';
import 'package:travel/src/module/home/view/home_view.dart';
import 'package:travel/src/module/profile/view/profile_view.dart';
import 'package:travel/src/module/search/view/search_view.dart';
import 'package:travel/src/routes/string_route.dart';
import 'package:travel/src/share/const/app_color.dart';
import 'package:travel/src/share/const/app_size.dart';
import 'package:travel/src/share/const/app_string.dart';

import '../../home/widgets/custom_app_bar.dart';
import '../../home/widgets/custom_list_view.dart';
import '../../home/widgets/title_body.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  static const route = dashboard;
  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  int _selectIndex = 0;
  List<Widget> _screens = [
    const HomeView(),
    const CalendarView(),
    const SearchView(),
    const ChatView(),
    const ProfileView(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(child: _screens[_selectIndex]),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectIndex,
        onTap: (int index) {
          setState(() {
            _selectIndex = index;
          });
        },
        selectedItemColor: blueColor,
        unselectedItemColor: greyColor,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                home,
                color: greyColor,
              ),
              activeIcon: SvgPicture.asset(
                home,
                color: blueColor,
              ),
              label: "Home"),
          BottomNavigationBarItem(
            activeIcon: SvgPicture.asset(
              calendar,
              color: blueColor,
            ),
            icon: SvgPicture.asset(
              calendar,
              color: greyColor,
            ),
            label: "Calendar",
          ),
          BottomNavigationBarItem(
              activeIcon: SvgPicture.asset(
                search,
                color: blueColor,
              ),
              icon: SvgPicture.asset(
                search,
                color: greyColor,
              ),
              label: "Search"),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                chat,
                color: greyColor,
              ),
              activeIcon: SvgPicture.asset(
                chat,
                color: blueColor,
              ),
              label: "Chat"),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                profile,
                color: greyColor,
              ),
              activeIcon: SvgPicture.asset(
                profile,
                color: blueColor,
              ),
              label: "Profile"),
        ],
      ),
    );
  }
}
