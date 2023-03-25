import 'package:flutter/material.dart';
import 'package:news_app/app_styles.dart';
import 'package:news_app/size_config.dart';

class ProfilePopularItem extends StatelessWidget {
  final String imageUrl;
  const ProfilePopularItem({
    Key? key,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      height: 143,
      width: 248,
      margin: EdgeInsets.only(
        right: SizeConfig.blockSizeHorizontal! * 3.7,
      ),
      decoration: const BoxDecoration(
        color: kWhite,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(kBorderRadius),
        child: Image.network(
          imageUrl,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
