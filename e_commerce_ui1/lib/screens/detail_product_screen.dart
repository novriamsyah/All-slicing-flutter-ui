import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_commerce_ui1/shared/theme.dart';
import 'package:e_commerce_ui1/widgets/widgets.dart';
import 'package:flutter/material.dart';

class DetailProductScreen extends StatefulWidget {
  static const routeName = '/detail-product';
  const DetailProductScreen({Key? key}) : super(key: key);

  @override
  _DetailProductScreenState createState() => _DetailProductScreenState();
}

class _DetailProductScreenState extends State<DetailProductScreen> {
  CarouselController carouselController = CarouselController();
  int currentIndex = 0;
  int currentIndexCarousel = 0;
  int selectedProduct = 0;

  List imageProducts = [
    "https://cdn-gmnbd.nitrocdn.com/bfDqsHBwuXcudWrHxpyHEzsiBKftoUFi/assets/static/optimized/rev-6fe77a2/image/cache/catalog/Samsung/samsung-galaxy-watch5-44mm-blue-resized-1-800x800.png",
    "https://cdn-gmnbd.nitrocdn.com/bfDqsHBwuXcudWrHxpyHEzsiBKftoUFi/assets/static/optimized/rev-6fe77a2/image/cache/catalog/Samsung/samsung-galaxy-watch5-40mm-black-resized-1-1600x1600.png",
    "https://cdn-gmnbd.nitrocdn.com/bfDqsHBwuXcudWrHxpyHEzsiBKftoUFi/assets/static/optimized/rev-6fe77a2/image/cache/catalog/Samsung/samsung-galaxy-watch5-40mm-purple-resized-1-1600x1600.png",
    "https://cdn-gmnbd.nitrocdn.com/bfDqsHBwuXcudWrHxpyHEzsiBKftoUFi/assets/static/optimized/rev-6fe77a2/image/cache/catalog/Samsung/samsung-galaxy-watch5-40mm-pink-resized-1-1600x1600.png",
  ];

  List sizes = [
    "44mm",
    "40mm",
    "39mm",
    "38mm",
    "29mm",
    "35mm",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: _CustomAppBar(),
      body: SingleChildScrollView(
          child: Column(
        children: [
          SafeArea(
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height * 0.31,
                      decoration: const BoxDecoration(
                        color: Color(0xffc8d4e2),
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height * 0.34,
                      child: CarouselSlider(
                        items: imageProducts.map((itemProduct) {
                          return SizedBox(
                            width: double.infinity,
                            height: MediaQuery.of(context).size.height * 0.39,
                            child: Image.network(
                              itemProduct,
                            ),
                          );
                        }).toList(),
                        options: CarouselOptions(
                          height: MediaQuery.of(context).size.height * 0.34,
                          viewportFraction: 1.4,
                          scrollDirection: Axis.vertical,
                          onPageChanged: (index, reason) {
                            setState(() {
                              currentIndexCarousel = index;
                            });
                          },
                        ),
                        carouselController: carouselController,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.18,
                      height: MediaQuery.of(context).size.height * 0.34,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 10,
                            width: 10,
                            margin: const EdgeInsets.only(top: 5),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: currentIndexCarousel == 0
                                  ? Colors.black
                                  : Colors.grey,
                            ),
                          ),
                          Container(
                            height: 10,
                            width: 10,
                            margin: const EdgeInsets.only(top: 10),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: currentIndexCarousel == 1
                                  ? Colors.black
                                  : Colors.grey,
                            ),
                          ),
                          Container(
                            height: 10,
                            width: 10,
                            margin: const EdgeInsets.only(top: 10),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: currentIndexCarousel == 2
                                  ? Colors.black
                                  : Colors.grey,
                            ),
                          ),
                          Container(
                            height: 10,
                            width: 10,
                            margin: const EdgeInsets.only(top: 10),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: currentIndexCarousel == 3
                                  ? Colors.black
                                  : Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Galaxy Watch 5',
                            style: blackTextStyle.copyWith(
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '\$ 300',
                            style: blackTextStyle.copyWith(
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s when an unknown printer took a galley of type and scrambled it to make a type specimen book',
                        style: greyTextStyle.copyWith(
                          fontSize: 11,
                        ),
                        maxLines: 4,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.justify,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Color Available',
                        style: blackTextStyle.copyWith(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.08,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: imageProducts.length,
                          itemBuilder: (BuildContext context, int index) {
                            return InkWell(
                              onTap: () {
                                setState(() {
                                  selectedProduct = index;
                                });
                              },
                              child: CardProductScrollOption(
                                isSelcted: selectedProduct ==
                                    imageProducts.indexOf(imageProducts[index]),
                                product: imageProducts,
                                indexKe: index,
                              ),
                            );
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Size',
                        style: blackTextStyle.copyWith(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.045,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: sizes.length,
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {
                                setState(() {
                                  currentIndex = index;
                                });
                              },
                              child: _CustomSizeOption(
                                indexOfSize:
                                    currentIndex == sizes.indexOf(sizes[index]),
                                sizes: sizes,
                                indexKe: index,
                              ),
                            );
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 27,
                      ),
                      Container(
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height * 0.06,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.shopping_cart,
                              color: Colors.white,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Buy Now',
                              style: whiteTextStyle.copyWith(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      )),
    );
  }
}

class _CustomSizeOption extends StatelessWidget {
  const _CustomSizeOption({
    Key? key,
    required this.indexOfSize,
    required this.sizes,
    required this.indexKe,
  }) : super(key: key);

  final bool indexOfSize;
  final int indexKe;
  final List sizes;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.045,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      margin: const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
          color: const Color(0xfff5f8fd),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: indexOfSize ? Colors.black : const Color(0xfff5f8fd),
          )),
      child: Center(
        child: Text(
          sizes[indexKe],
          style: blackTextStyle.copyWith(
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

class _CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  const _CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: const IconThemeData(
        color: Colors.black,
      ),
      backgroundColor: const Color(0xffc8d4e2),
      elevation: 0,
      title: Text(
        'Details',
        style: blackTextStyle.copyWith(
          fontWeight: FontWeight.bold,
        ),
      ),
      centerTitle: true,
      actions: const [
        Padding(
          padding: EdgeInsets.only(right: 20),
          child: Icon(
            Icons.favorite,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56.0);
}
