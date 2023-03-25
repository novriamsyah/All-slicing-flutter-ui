import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:news_app/app_styles.dart';
import 'package:news_app/size_config.dart';

class ShortHomeItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  const ShortHomeItem({
    Key? key,
    required this.imageUrl,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      padding: const EdgeInsets.all(9),
      margin: const EdgeInsets.only(right: 20),
      height: 88,
      width: 208,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(kBorderRadius),
        color: kWhite,
        boxShadow: [
          BoxShadow(
            color: kDarkBlue.withOpacity(0.051),
            offset: const Offset(0.0, 0.3),
            blurRadius: 24.0,
            spreadRadius: 0.0,
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(kBorderRadius),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(imageUrl),
              ),
            ),
            child: Align(
              alignment: Alignment.center,
              child: SvgPicture.asset(
                'assets/play_icon.svg',
                width: 19,
              ),
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          Flexible(
            child: Column(
              children: [
                Text(
                  title,
                  style: kPoppinsSemiBold.copyWith(
                    fontSize: SizeConfig.blockSizeHorizontal! * 3.5,
                  ),
                ),
                const SizedBox(
                  height: 7,
                ),
                Row(
                  children: [
                    SvgPicture.asset('assets/eye_icon.svg'),
                    const SizedBox(
                      width: 4,
                    ),
                    Text(
                      '40,999',
                      style: kPoppinsMedium.copyWith(
                        fontSize: SizeConfig.blockSizeHorizontal! * 3,
                        color: kgrey,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
