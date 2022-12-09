import 'package:flutter/material.dart';

import '../../../share/const/app_size.dart';
import '../../home/controller/home_controller.dart';

class ListViewImage extends StatelessWidget {
  const ListViewImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSize.size60,
      child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: data.length,
          itemBuilder: ((context, index) {
            String images = data[index]["image"];
            return Padding(
              padding: const EdgeInsets.only(left: AppSize.size30),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(AppSize.size16),
                child: Image.asset(
                  height: AppSize.size60,
                  width: AppSize.size60,
                  images,
                  fit: BoxFit.cover,
                ),
              ),
            );
          })),
    );
  }
}
