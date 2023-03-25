import 'package:e_commerce_ui1/models/category.dart';
import 'package:e_commerce_ui1/shared/theme.dart';
import 'package:flutter/material.dart';

class CustomListCategory extends StatelessWidget {
  final Category category;
  final bool onTapped;
  const CustomListCategory({
    this.onTapped = false,
    required this.category,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.045,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      margin: const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        color: onTapped ? Colors.black : Colors.grey.withOpacity(0.3),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Text(
          category.title.toString(),
          style: Theme.of(context).textTheme.labelMedium!.copyWith(
                color: onTapped ? Colors.white : Colors.black,
                fontWeight: medium,
              ),
        ),
      ),
    );
  }
}
