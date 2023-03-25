import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:news_app/app_styles.dart';
import 'package:news_app/size_config.dart';
import 'package:news_app/ui/widgets/profile_popular_item.dart';
import 'package:news_app/ui/widgets/profile_post_item.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: kLighterWhite,
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: SafeArea(
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    height: 70,
                    width: 70,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(kBorderRadius),
                      child: Image.network(
                        'https://images.unsplash.com/flagged/photo-1566127992631-137a642a90f4?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8Mnx8fGVufDB8fHx8&w=1000&q=80',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: SizeConfig.blockSizeHorizontal! * 3.5,
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Elly Byers',
                              style: kPoppinsBold.copyWith(
                                fontSize: SizeConfig.blockSizeHorizontal! * 4,
                                color: kDarkBlue,
                              ),
                            ),
                            Text(
                              'Author & Writer',
                              style: kPoppinsRegular.copyWith(
                                fontSize: SizeConfig.blockSizeHorizontal! * 3,
                                color: kDarkBlue,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          constraints: BoxConstraints(
                            maxHeight: 42,
                            minWidth: SizeConfig.blockSizeHorizontal! * 30,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(kBorderRadius),
                            color: kBlue,
                          ),
                          child: Center(
                            child: Text(
                              'Following',
                              style: kPoppinsMedium.copyWith(
                                fontSize: SizeConfig.blockSizeHorizontal! * 3,
                                color: kWhite,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: SizeConfig.blockSizedVertical! * 2.5,
              ),
              Text(
                'Every piece of chocolate I ever ate is getting back at me.. desserts are very revengeful..',
                style: kPoppinsMedium.copyWith(
                  fontSize: SizeConfig.blockSizeHorizontal! * 3,
                  color: kgrey,
                ),
              ),
              SizedBox(
                height: SizeConfig.blockSizedVertical! * 2.5,
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: SizeConfig.blockSizeHorizontal! * 3,
                  vertical: SizeConfig.blockSizedVertical! * 3.5,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(kBorderRadius),
                  color: kDarkBlue,
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                            '54.21k',
                            style: kPoppinsBold.copyWith(
                              fontSize: SizeConfig.blockSizeHorizontal! * 4,
                              color: kWhite,
                            ),
                          ),
                          Text(
                            'Followers',
                            style: kPoppinsMedium.copyWith(
                              fontSize: SizeConfig.blockSizeHorizontal! * 3,
                              color: kWhite,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 1,
                      height: SizeConfig.blockSizedVertical! * 4.5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2),
                        color: kLighterBlue,
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                            '2.11k',
                            style: kPoppinsBold.copyWith(
                              fontSize: SizeConfig.blockSizeHorizontal! * 4,
                              color: kWhite,
                            ),
                          ),
                          Text(
                            'Posts',
                            style: kPoppinsMedium.copyWith(
                              fontSize: SizeConfig.blockSizeHorizontal! * 3,
                              color: kWhite,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 1,
                      height: SizeConfig.blockSizedVertical! * 4.5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2),
                        color: kLighterBlue,
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                            '36.40k',
                            style: kPoppinsBold.copyWith(
                              fontSize: SizeConfig.blockSizeHorizontal! * 4,
                              color: kWhite,
                            ),
                          ),
                          Text(
                            'Following',
                            style: kPoppinsMedium.copyWith(
                              fontSize: SizeConfig.blockSizeHorizontal! * 3,
                              color: kWhite,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: SizeConfig.blockSizedVertical! * 2.5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Elly\'s Post',
                    style: kPoppinsBold.copyWith(
                      fontSize: SizeConfig.blockSizeHorizontal! * 4.5,
                      color: kDarkBlue,
                    ),
                  ),
                  Text(
                    'View All',
                    style: kPoppinsBold.copyWith(
                      fontSize: SizeConfig.blockSizeHorizontal! * 3,
                      color: kLightBlue,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: SizeConfig.blockSizedVertical! * 2.5,
              ),
              SizedBox(
                child: ListView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: const [
                    ProfilePostItem(
                      imageUrl:
                          'https://assets-a1.kompasiana.com/items/album/2017/11/16/cover-bangka-belitung-5a0d3c24fcf6813573428eb2.jpg',
                      category: 'Politics',
                      title:
                          'Iran\'s raging protests Fifth Iranian paramilitary me...',
                    ),
                    ProfilePostItem(
                      imageUrl:
                          'https://images.unsplash.com/photo-1573548842355-73bb50e50323?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
                      category: 'Politics',
                      title:
                          'Iran\'s raging protests Fifth Iranian paramilitary me...',
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: SizeConfig.blockSizedVertical! * 2.5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Popular From Elly',
                    style: kPoppinsBold.copyWith(
                      fontSize: SizeConfig.blockSizeHorizontal! * 4.5,
                      color: kDarkBlue,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: SizeConfig.blockSizedVertical! * 2.5,
              ),
              SizedBox(
                height: 143,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    ProfilePopularItem(
                      imageUrl:
                          'https://images.unsplash.com/photo-1510414842594-a61c69b5ae57?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80',
                    ),
                    ProfilePopularItem(
                      imageUrl:
                          'https://images.unsplash.com/photo-1506929562872-bb421503ef21?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=936&q=80',
                    ),
                    ProfilePopularItem(
                      imageUrl:
                          'https://images.unsplash.com/photo-1510414842594-a61c69b5ae57?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80',
                    ),
                    ProfilePopularItem(
                      imageUrl:
                          'https://images.unsplash.com/photo-1573548842355-73bb50e50323?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
                    ),
                    ProfilePopularItem(
                      imageUrl:
                          'https://images.unsplash.com/photo-1506929562872-bb421503ef21?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=936&q=80',
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: SizeConfig.blockSizedVertical! * 6,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
