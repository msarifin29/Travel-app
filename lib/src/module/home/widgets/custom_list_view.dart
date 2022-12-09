import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel/src/module/home/controller/home_controller.dart';
import 'package:travel/src/routes/string_route.dart';
import 'package:travel/src/share/const/app_color.dart';
import 'package:travel/src/share/widgets/q_button_icon.dart';

import '../../../share/const/app_size.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.52,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: data.length,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            var destination = data[index];
            return Padding(
              padding: const EdgeInsets.only(
                  left: AppSize.size30, top: AppSize.size26),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(AppSize.size20),
                    child: Stack(
                      children: [
                        SizedBox(
                          height: 300.0,
                          width: 220.0,
                          child: Image.asset(
                            destination["image"],
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                          top: AppSize.size12,
                          right: AppSize.size12,
                          child: QButtonIcon(
                            icon: Icons.bookmark_outline,
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.pushNamed(
                      context,
                      detail,
                      arguments: destination,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 5.0, vertical: AppSize.size12),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: const EdgeInsets.only(left: 5.0),
                            width: 165.0,
                            child: Text(
                              destination["title"],
                              textDirection: TextDirection.ltr,
                              style: const TextStyle(
                                  fontSize: AppSize.size16,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 3.0),
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.star,
                                  size: AppSize.size18,
                                  color: Colors.amber,
                                ),
                                Text(
                                  destination["rating"].toString(),
                                  style:
                                      const TextStyle(fontSize: AppSize.size14),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.location_on_outlined,
                          size: AppSize.size26,
                          color: greyColor,
                        ),
                        Text(destination["location"],
                            style: const TextStyle(
                                fontSize: AppSize.size14, color: greyColor)),
                      ],
                    ),
                  )
                ],
              ),
            );
          }),
    );
  }
}
