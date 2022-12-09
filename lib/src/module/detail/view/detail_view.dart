import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel/src/module/home/controller/home_controller.dart';
import 'package:travel/src/routes/string_route.dart';
import 'package:travel/src/share/const/app_color.dart';
import 'package:travel/src/share/const/app_size.dart';
import 'package:travel/src/share/const/app_string.dart';
import 'package:travel/src/share/widgets/primary_button.dart';

import '../widget/custom_sliver_app_bar.dart';
import '../widget/list_view_image.dart';

class DetailView extends StatelessWidget {
  const DetailView({super.key, this.destination});

  static const route = detail;

  final Map? destination;

  @override
  Widget build(BuildContext context) {
    final arg = ModalRoute.of(context)?.settings.arguments as Map;

    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: CustomScrollView(
        controller: ScrollController(
          initialScrollOffset: 0.0,
          keepScrollOffset: false,
        ),
        slivers: <Widget>[
          CustomSliverAppBar(destination: destination, size: size),
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: AppSize.size12),
                  child: ListTile(
                      title: Text(
                        arg["title"],
                        style: const TextStyle(
                            fontSize: AppSize.size24,
                            fontWeight: FontWeight.w500),
                      ),
                      subtitle: Text(
                        arg["location"],
                        style: const TextStyle(
                            fontSize: AppSize.size14,
                            fontWeight: FontWeight.w400),
                      ),
                      trailing: CircleAvatar(
                        radius: 50.0,
                        backgroundColor: Colors.transparent,
                        child: Image.asset(
                          ava,
                          fit: BoxFit.cover,
                        ),
                      )),
                ),
                const SizedBox(
                  height: AppSize.size20,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: AppSize.size20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        width: size.width * 0.3,
                        child: Row(
                          children: [
                            const Icon(
                              Icons.location_on_outlined,
                              color: greyColor,
                            ),
                            Text(arg["city"],
                                style: Theme.of(context).textTheme.headline6!),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: size.width * 0.3,
                        child: Row(
                          children: [
                            const Icon(
                              Icons.star_outlined,
                              color: Colors.amber,
                            ),
                            RichText(
                              text: TextSpan(
                                text: '${arg["rating"]}',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline6!
                                    .copyWith(color: blackBlureColor),
                                children: [
                                  TextSpan(
                                    text: "(2910)",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline6!
                                        .copyWith(color: greyColor),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: size.width * 0.3,
                        child: RichText(
                          text: TextSpan(
                            text: '\$${arg["price"]}',
                            style: Theme.of(context)
                                .textTheme
                                .headline6!
                                .copyWith(color: blueColor),
                            children: [
                              TextSpan(
                                text: "/Person",
                                style: Theme.of(context)
                                    .textTheme
                                    .headline6!
                                    .copyWith(color: greyColor),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: AppSize.size20,
                ),
                const ListViewImage(),
                const SizedBox(
                  height: AppSize.size20,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: AppSize.size20),
                  child: Text(
                    "About Destination",
                    style: TextStyle(
                        fontSize: AppSize.size20, fontWeight: FontWeight.w500),
                    textAlign: TextAlign.start,
                  ),
                ),
                const SizedBox(
                  height: AppSize.size20,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: AppSize.size20),
                  child: Text(
                    arg["description"],
                    style: Theme.of(context).textTheme.headline6!.copyWith(
                          fontSize: AppSize.size14,
                        ),
                    maxLines: 5,
                  ),
                ),
                const SizedBox(
                  height: AppSize.size20,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: AppSize.size20),
                  child: KPrimaryButton(
                      onPress: () {}, title: "Book Now", width: size.width),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
