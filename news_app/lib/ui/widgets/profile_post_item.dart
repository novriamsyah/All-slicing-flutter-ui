import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:news_app/app_styles.dart';
import 'package:news_app/size_config.dart';

class ProfilePostItem extends StatelessWidget {
  final String imageUrl;
  final String category;
  final String title;

  const ProfilePostItem({
    Key? key,
    required this.imageUrl,
    required this.category,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      height: 100,
      margin: EdgeInsets.only(
        bottom: SizeConfig.blockSizedVertical! * 2.5,
      ),
      child: Row(
        children: [
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(kBorderRadius),
              color: kWhite,
              boxShadow: [
                BoxShadow(
                  blurRadius: 24,
                  spreadRadius: 0,
                  offset: const Offset(0, 3),
                  color: kDarkBlue.withOpacity(0.051),
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(kBorderRadius),
              child: Image.network(
                imageUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            width: SizeConfig.blockSizeHorizontal! * 4,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'News: $category',
                  style: kPoppinsRegular.copyWith(
                    fontSize: SizeConfig.blockSizeHorizontal! * 2.5,
                    color: kgrey,
                  ),
                ),
                SizedBox(
                  height: SizeConfig.blockSizedVertical! * 1,
                ),
                Text(
                  title,
                  style: kPoppinsSemiBold.copyWith(
                    fontSize: SizeConfig.blockSizeHorizontal! * 3.5,
                    color: kDarkBlue,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(
                  height: SizeConfig.blockSizedVertical! * 1,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset(
                          'assets/calendar_icon.svg',
                        ),
                        const SizedBox(
                          width: 7,
                        ),
                        Text(
                          '16th May',
                          style: kPoppinsMedium.copyWith(
                            fontSize: SizeConfig.blockSizeHorizontal! * 3,
                            color: kgrey,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SvgPicture.asset(
                          'assets/time_icon.svg',
                        ),
                        const SizedBox(
                          width: 7,
                        ),
                        Text(
                          '09 : 32 pm',
                          style: kPoppinsMedium.copyWith(
                            fontSize: SizeConfig.blockSizeHorizontal! * 3,
                            color: kgrey,
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
