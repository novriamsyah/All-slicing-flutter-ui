import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:news_app/app_styles.dart';
import 'package:news_app/size_config.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeCardItem extends StatelessWidget {
  final String svgUrl;
  final String title;
  final String profileUrl;
  final String name;
  final String date;
  final VoidCallback? onTap;

  const HomeCardItem({
    Key? key,
    required this.svgUrl,
    required this.title,
    required this.profileUrl,
    required this.name,
    required this.date,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(
          right: 20,
        ),
        padding: const EdgeInsets.all(12),
        height: 304,
        width: 255,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(kBorderRadius),
          color: kWhite,
          boxShadow: [
            BoxShadow(
              color: kDarkBlue.withOpacity(0.051),
              offset: const Offset(0.0, 0.3),
              blurRadius: 24.0,
              spreadRadius: 0.0,
            )
          ],
        ),
        child: Column(
          children: [
            Container(
              height: 164,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(kBorderRadius),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    // 'https://assets-a1.kompasiana.com/items/album/2017/11/16/cover-bangka-belitung-5a0d3c24fcf6813573428eb2.jpg',
                    svgUrl,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 18,
            ),
            Flexible(
              child: Text(
                // 'Bangka Belitung - Uniqure, unmatched. There is no other place like Bangka Belitung in this world',
                title,
                style: kPoppinsBold.copyWith(
                  fontSize: SizeConfig.blockSizeHorizontal! * 3.5,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            const SizedBox(
              height: 14,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 19,
                      backgroundColor: kLightBlue,
                      backgroundImage: NetworkImage(
                        // 'https://yt3.ggpht.com/ytc/AMLnZu9GWPDgFIuyiNkYmhG52h3ZkXYgwYy8Hi89ipKvYg=s900-c-k-c0x00ffffff-no-rj',
                        profileUrl,
                      ),
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          name,
                          style: kPoppinsBold.copyWith(
                            fontSize: SizeConfig.blockSizeHorizontal! * 3,
                          ),
                        ),
                        Text(
                          date,
                          style: kPoppinsRegular.copyWith(
                            color: kgrey,
                            fontSize: SizeConfig.blockSizeHorizontal! * 3,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                Container(
                  height: 38,
                  width: 38,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: kLightWhite,
                    borderRadius: BorderRadius.circular(kBorderRadius),
                  ),
                  child: SvgPicture.asset(
                    'assets/share_icon.svg',
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
