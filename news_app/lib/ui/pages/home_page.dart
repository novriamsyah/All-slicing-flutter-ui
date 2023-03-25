import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:news_app/app_styles.dart';
import 'package:news_app/size_config.dart';
import 'package:news_app/ui/widgets/home_card_item.dart';
import 'package:news_app/ui/widgets/short_home_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        children: [
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/profile');
                },
                child: Container(
                  width: 51,
                  height: 51,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: kLightBlue,
                    image: const DecorationImage(
                      image: NetworkImage(
                          'https://cdn3d.iconscout.com/3d/premium/thumb/man-avatar-6299539-5187871.png'),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 16,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Welcome Back!',
                    style: kPoppinsBold.copyWith(
                      fontSize: SizeConfig.blockSizeHorizontal! * 4,
                    ),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Text(
                    'Monday, 31 October',
                    style: kPoppinsRegular.copyWith(
                      fontSize: SizeConfig.blockSizeHorizontal! * 3,
                      color: kgrey,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
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
                Expanded(
                  child: TextField(
                    style: kPoppinsRegular.copyWith(
                      color: kBlue,
                      fontSize: SizeConfig.blockSizeHorizontal! * 3,
                    ),
                    controller: TextEditingController(),
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 13,
                      ),
                      hintText: 'Search for article...',
                      border: kBorder,
                      errorBorder: kBorder,
                      disabledBorder: kBorder,
                      focusedBorder: kBorder,
                      focusedErrorBorder: kBorder,
                      hintStyle: kPoppinsRegular.copyWith(
                        color: kLightGrey,
                        fontSize: SizeConfig.blockSizeHorizontal! * 3,
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: kBlue,
                    borderRadius: BorderRadius.circular(kBorderRadius),
                  ),
                  child: IconButton(
                    onPressed: (() {}),
                    icon: SvgPicture.asset('assets/search_icon.svg'),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 18,
          ),
          SizedBox(
            height: 14,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(
                    right: 30,
                  ),
                  child: Text(
                    '#Health',
                    style: kPoppinsMedium.copyWith(
                      color: kgrey,
                      fontSize: SizeConfig.blockSizeHorizontal! * 3,
                    ),
                  ),
                );
              },
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            height: 304,
            child: ListView(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              children: [
                HomeCardItem(
                  svgUrl:
                      'https://assets-a1.kompasiana.com/items/album/2017/11/16/cover-bangka-belitung-5a0d3c24fcf6813573428eb2.jpg',
                  title:
                      'Bangka Belitung - Uniqure, unmatched. There is no other place like Bangka Belitung in this world',
                  profileUrl:
                      'https://yt3.ggpht.com/ytc/AMLnZu9GWPDgFIuyiNkYmhG52h3ZkXYgwYy8Hi89ipKvYg=s900-c-k-c0x00ffffff-no-rj',
                  name: 'Novri Amsyah',
                  date: 'Sep 9, 2022',
                  onTap: () {
                    Navigator.pushNamed(context, '/detail-news');
                  },
                ),
                HomeCardItem(
                  svgUrl:
                      'https://blog.tiket.com/wp-content/uploads/Blog-Pulau-Lengkuas-01.jpg',
                  title:
                      'Bangka Belitung - Uniqure, unmatched. There is no other place like Bangka Belitung in this world',
                  profileUrl:
                      'https://yt3.ggpht.com/ytc/AMLnZu9GWPDgFIuyiNkYmhG52h3ZkXYgwYy8Hi89ipKvYg=s900-c-k-c0x00ffffff-no-rj',
                  name: 'Novri Amsyah',
                  date: 'Sep 9, 2022',
                  onTap: () {},
                ),
                HomeCardItem(
                  svgUrl:
                      'http://backpackerjakarta.com/wp-content/uploads/2017/11/Pantai-Pagoda-Vihara-Puri-Tri-Agung-bangka.jpg',
                  title:
                      'Bangka Belitung - Uniqure, unmatched. There is no other place like Bangka Belitung in this world',
                  profileUrl:
                      'https://yt3.ggpht.com/ytc/AMLnZu9GWPDgFIuyiNkYmhG52h3ZkXYgwYy8Hi89ipKvYg=s900-c-k-c0x00ffffff-no-rj',
                  name: 'Novri Amsyah',
                  date: 'Sep 9, 2022',
                  onTap: () {},
                ),
                HomeCardItem(
                  svgUrl:
                      'https://images.unsplash.com/photo-1506929562872-bb421503ef21?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=936&q=80',
                  title:
                      'Bangka Belitung - Uniqure, unmatched. There is no other place like Bangka Belitung in this world',
                  profileUrl:
                      'https://yt3.ggpht.com/ytc/AMLnZu9GWPDgFIuyiNkYmhG52h3ZkXYgwYy8Hi89ipKvYg=s900-c-k-c0x00ffffff-no-rj',
                  name: 'Novri Amsyah',
                  date: 'Sep 9, 2022',
                  onTap: () {},
                ),
                HomeCardItem(
                  svgUrl:
                      'https://images.unsplash.com/photo-1510414842594-a61c69b5ae57?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80',
                  title:
                      'Bangka Belitung - Uniqure, unmatched. There is no other place like Bangka Belitung in this world',
                  profileUrl:
                      'https://yt3.ggpht.com/ytc/AMLnZu9GWPDgFIuyiNkYmhG52h3ZkXYgwYy8Hi89ipKvYg=s900-c-k-c0x00ffffff-no-rj',
                  name: 'Novri Amsyah',
                  date: 'Sep 9, 2022',
                  onTap: () {},
                ),
                HomeCardItem(
                  svgUrl:
                      'https://images.unsplash.com/photo-1573548842355-73bb50e50323?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
                  title:
                      'Bangka Belitung - Uniqure, unmatched. There is no other place like Bangka Belitung in this world',
                  profileUrl:
                      'https://yt3.ggpht.com/ytc/AMLnZu9GWPDgFIuyiNkYmhG52h3ZkXYgwYy8Hi89ipKvYg=s900-c-k-c0x00ffffff-no-rj',
                  name: 'Novri Amsyah',
                  date: 'Sep 9, 2022',
                  onTap: () {},
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Short For You',
                style: kPoppinsBold.copyWith(
                  fontSize: SizeConfig.blockSizeHorizontal! * 4.5,
                ),
              ),
              Text(
                'View All',
                style: kPoppinsMedium.copyWith(
                  color: kBlue,
                  fontSize: SizeConfig.blockSizeHorizontal! * 3,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 13,
          ),
          SizedBox(
            height: 88,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                ShortHomeItem(
                  imageUrl:
                      'https://images.unsplash.com/photo-1510414842594-a61c69b5ae57?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80',
                  title: 'Top Trending\nIslands in 2022',
                ),
                ShortHomeItem(
                  imageUrl:
                      'http://backpackerjakarta.com/wp-content/uploads/2017/11/Pantai-Pagoda-Vihara-Puri-Tri-Agung-bangka.jpg',
                  title: 'Top Trending\nIslands in 2022',
                ),
                ShortHomeItem(
                  imageUrl:
                      'https://images.unsplash.com/photo-1510414842594-a61c69b5ae57?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80',
                  title: 'Top Trending\nIslands in 2022',
                ),
                ShortHomeItem(
                  imageUrl:
                      'https://images.unsplash.com/photo-1573548842355-73bb50e50323?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
                  title: 'Top Trending\nIslands in 2022',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
