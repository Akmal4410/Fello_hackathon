import 'package:cached_network_image/cached_network_image.dart';
import 'package:fello_hackathon/utils/constant_size.dart';
import 'package:fello_hackathon/utils/text_style.dart';
import 'package:flutter/material.dart';

class HomePageAppBar extends StatelessWidget {
  const HomePageAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: false,
      centerTitle: false,
      snap: true,
      floating: true,
      title: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Hi, Good Morning",
            style: kTextStyle14RegularWhite,
          ),
          Text(
            "John Doe",
            style: kTextStyle16BoldWhite,
          ),
        ],
      ),
      actions: [
        Padding(
          padding: kAppbarRightPadding,
          child: const CircleAvatar(
            backgroundImage: CachedNetworkImageProvider(
              "https://krausefx.com/assets/FelixKrauseCropped.jpg",
            ),
          ),
        ),
      ],
    );
  }
}
