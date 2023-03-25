import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_commerce_ui1/models/category.dart';
import 'package:e_commerce_ui1/models/product.dart';
import 'package:e_commerce_ui1/screens/screens.dart';
import 'package:e_commerce_ui1/shared/theme.dart';
import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  int currentIndexList = 0;
  int currentIndexCarousel = 0;
  CarouselController carouselController = CarouselController();
  List<Category> categories = Category.catagories;
  List<Product> products = Product.products;

  List<String> backgroundImages = [
    'https://images.squarespace-cdn.com/content/v1/5b48c29f9f8770367788f244/1614596813542-9P063UEQ8UDYC0VBU2DM/ke17ZwdGBToddI8pDm48kAWeLTBGMrsoF_FTDIAq4R4UqsxRUqqbr1mOJYKfIPR7LoDQ9mXPOjoJoqy81S2I8N_N4V1vUb5AoIIIbLZhVYxCRW4BPu10St3TBAUQYVKc8OxR_29GrTqbrfrW5RubGNs-NPSogzGb6IzRYpBY2fwPbtzKxn6DDwKzKlh9kvBV/Pros-100+copy.jpg',
    'https://img.freepik.com/free-vector/sale-banner-promotional-product_260559-349.jpg',
    'https://user-images.githubusercontent.com/52773931/226942493-1bf75263-e11f-47e6-8273-45d525291f6c.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            const _CustomAppbar(),
            const SizedBox(
              height: 13,
            ),
            const _CustomTextFormField(
              title: 'Search',
            ),
            const SizedBox(
              height: 25,
            ),
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.23,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                  ),
                  child: CarouselSlider(
                    items: backgroundImages.map((bgImage) {
                      return SizedBox(
                        width: double.infinity,
                        child: Image.network(
                          bgImage,
                          fit: BoxFit.cover,
                        ),
                      );
                    }).toList(),
                    options: CarouselOptions(
                      height: MediaQuery.of(context).size.height * 0.23,
                      viewportFraction: 1,
                      // autoPlay: true,
                      onPageChanged: (index, reason) {
                        setState(() {
                          currentIndexCarousel = index;
                        });
                      },
                    ),
                    carouselController: carouselController,
                  ),
                ),
                Positioned(
                  bottom: 9,
                  left: 25,
                  child: Row(
                    children: [
                      Container(
                        height: 10,
                        width: 10,
                        margin: const EdgeInsets.only(left: 5),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: currentIndexCarousel == 0
                              ? Colors.black
                              : Colors.grey.shade300,
                        ),
                      ),
                      Container(
                        height: 10,
                        width: 10,
                        margin: const EdgeInsets.only(left: 5),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: currentIndexCarousel == 1
                              ? Colors.black
                              : Colors.grey.shade300,
                        ),
                      ),
                      Container(
                        height: 10,
                        width: 10,
                        margin: const EdgeInsets.only(left: 5),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: currentIndexCarousel == 2
                              ? Colors.black
                              : Colors.grey.shade300,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25.0, right: 5),
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.045,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        setState(() {
                          currentIndexList = index;
                        });
                      },
                      child: CustomListCategory(
                        category: categories[index],
                        onTapped: currentIndexList == categories[index].id,
                      ),
                    );
                  },
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'New Arrival',
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          fontWeight: extraBold,
                        ),
                  ),
                  Text(
                    'See All',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontWeight: regular,
                        ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Wrap(
                spacing: 20,
                runSpacing: 23,
                children: products.map((itemProduct) {
                  return CustomProductCard(
                    onTap: () {
                      Navigator.pushNamed(
                          context, DetailProductScreen.routeName);
                    },
                    product: itemProduct,
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: _buildBottomNavBar(),
    );
  }

  Widget _buildBottomNavBar() {
    return CustomBottomNavbar(
      containerHeight: 70,
      backgroundColor: Colors.white,
      selectedIndex: _currentIndex,
      onItemSelected: (index) => setState(() => _currentIndex = index),
      items: <BottomNavyBarItem>[
        BottomNavyBarItem(
          icon: const Icon(Icons.home),
          title: 'Home',
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          icon: const Icon(Icons.favorite),
          title: 'Wishlist',
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          icon: const Icon(Icons.shopping_cart),
          title: 'Cart',
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          icon: const Icon(Icons.message),
          title: 'Inbox',
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}

class _CustomTextFormField extends StatelessWidget {
  final String title;
  final bool isShowTitle;
  const _CustomTextFormField({
    Key? key,
    required this.title,
    this.isShowTitle = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: SizedBox(
        child: TextFormField(
          decoration: InputDecoration(
            isDense: true,
            filled: true,
            fillColor: Colors.grey.shade200,
            hintText: isShowTitle ? null : title,
            hintStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: Colors.grey.shade500,
                  fontWeight: FontWeight.bold,
                ),
            prefixIcon: Icon(
              Icons.search,
              color: Colors.grey.shade600,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15.0),
              borderSide: BorderSide.none,
            ),
          ),
        ),
      ),
    );
  }
}

class _CustomAppbar extends StatelessWidget {
  const _CustomAppbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        decoration: const BoxDecoration(
          color: Colors.transparent,
        ),
        child: Row(
          children: [
            const CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://avatoon.net/wp-content/uploads/2022/06/3D-Kim-Jong-Un-600x600.jpg'),
            ),
            const SizedBox(
              width: 10.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hello,',
                  style: blackTextStyle.copyWith(),
                ),
                Text(
                  'Novri A',
                  style: blackTextStyle.copyWith(
                      fontWeight: FontWeight.bold, fontSize: 15.0),
                )
              ],
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                child: Row(
                  children: const [
                    Icon(
                      Icons.notifications,
                      size: 30,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.menu,
                      size: 30,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
