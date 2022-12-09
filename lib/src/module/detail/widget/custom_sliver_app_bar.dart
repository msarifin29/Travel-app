import 'package:flutter/material.dart';

import '../../../share/const/app_color.dart';
import '../../../share/const/app_size.dart';
import '../../../share/widgets/q_button_icon.dart';

class CustomSliverAppBar extends StatelessWidget {
  const CustomSliverAppBar({
    Key? key,
    required this.destination,
    required this.size,
  }) : super(key: key);
  final Map? destination;
  final Size size;

  @override
  Widget build(BuildContext context) {
    final arg = ModalRoute.of(context)?.settings.arguments as Map;
    return SliverAppBar(
      expandedHeight: size.height * (3 / 7),
      pinned: true,
      floating: true,
      centerTitle: true,
      title: Text(
        "Detail",
        style:
            Theme.of(context).textTheme.headline4!.copyWith(color: whiteColor),
      ),
      elevation: 0,
      actions: [
        QButtonIcon(
          icon: Icons.bookmark_outline,
          onPressed: () {},
        ),
        const SizedBox(
          width: AppSize.size20,
        ),
      ],
      leading: QButtonIcon(
        icon: Icons.arrow_back,
        onPressed: () => Navigator.of(context).pop(),
      ),
      flexibleSpace: FlexibleSpaceBar(
        background: Image.asset(
          arg["image"],
          fit: BoxFit.cover,
        ),
      ),
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(40),
        child: Container(
          width: double.maxFinite,
          height: 40,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40),
              topRight: Radius.circular(40),
            ),
          ),
          child: Column(
            children: [
              const SizedBox(
                height: AppSize.size14,
              ),
              Container(
                height: 5,
                width: MediaQuery.of(context).size.width / AppSize.size12,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: greyColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
