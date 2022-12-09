import 'package:flutter/material.dart';
import 'package:travel/src/routes/string_route.dart';
import 'package:travel/src/share/const/app_string.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});
  static const route = profileView;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Profile")),
      body: const Center(
        child: Text("Profile"),
      ),
    );
  }
}
