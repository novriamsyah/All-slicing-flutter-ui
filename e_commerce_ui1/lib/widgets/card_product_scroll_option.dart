import 'package:flutter/material.dart';

class CardProductScrollOption extends StatelessWidget {
  final bool isSelcted;
  final List product;
  final int indexKe;
  const CardProductScrollOption({
    Key? key,
    required this.isSelcted,
    required this.product,
    required this.indexKe,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 9.0),
      width: MediaQuery.of(context).size.width * 0.21,
      height: MediaQuery.of(context).size.height * 0.08,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7.0),
        color: const Color(0xfff5f8fd),
        border: Border.all(
          color: isSelcted ? Colors.blue : Colors.grey,
          width: isSelcted ? 2 : 1,
        ),
      ),
      child: Center(
        child: Image.network(
          product[indexKe],
        ),
      ),
    );
  }
}
