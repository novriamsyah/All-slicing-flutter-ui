import 'package:flutter/material.dart';

class Product {
  final int id;
  final String title;
  final String subTitle;
  final double price;
  final String imageUrl;
  final Color baseColor;

  Product({
    required this.id,
    required this.title,
    required this.subTitle,
    this.price = 0.0,
    required this.imageUrl,
    this.baseColor = const Color.fromARGB(255, 234, 198, 255),
  });

  static List<Product> products = [
    Product(
      id: 0,
      title: "Iphone 14 Pro",
      subTitle: 'A magical new way era your phone',
      price: 99.99,
      baseColor: const Color.fromARGB(255, 234, 198, 255),
      imageUrl:
          'https://user-images.githubusercontent.com/52773931/227123661-6beee5eb-bd66-4e7d-bee5-9d47d40292c9.png',
    ),
    Product(
      id: 1,
      title: "Galaxy Watch 5",
      subTitle: 'A magical new way era your phone',
      baseColor: const Color.fromARGB(255, 223, 223, 223),
      price: 75.0,
      imageUrl:
          'https://cdn-gmnbd.nitrocdn.com/bfDqsHBwuXcudWrHxpyHEzsiBKftoUFi/assets/static/optimized/rev-6fe77a2/image/cache/catalog/Samsung/samsung-galaxy-watch5-44mm-blue-resized-1-800x800.png',
    ),
    Product(
      id: 2,
      title: "Macbook Pro M2",
      subTitle: 'A magical new way era your phone',
      price: 120.97,
      baseColor: const Color.fromARGB(255, 255, 160, 233),
      imageUrl:
          'https://media.croma.com/image/upload/v1664412955/Croma%20Assets/Computers%20Peripherals/Laptop/Images/256605_0_elrzey.png',
    ),
    Product(
      id: 3,
      title: "Red Watch Oppo 5x",
      subTitle: 'A magical new way era your phone',
      baseColor: const Color.fromARGB(255, 255, 154, 154),
      price: 1299.99,
      imageUrl: 'https://macstore.id/wp-content/uploads/2022/11/MNP73.png',
    ),
  ];
}
