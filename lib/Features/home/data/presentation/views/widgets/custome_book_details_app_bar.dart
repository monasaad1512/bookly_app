import 'package:flutter/material.dart';

class CustomeBookDetailsAppBar extends StatelessWidget {
  const CustomeBookDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(onPressed: () {}, icon: Icon(Icons.close)),
        IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart)),
      ],
    );
  }
}
