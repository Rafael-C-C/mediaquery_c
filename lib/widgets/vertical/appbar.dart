import 'package:flutter/material.dart';

class VerticalAppBar extends StatelessWidget {
  const VerticalAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(onPressed: () {}, icon: const Icon(Icons.person_2)),
        IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_bag)),
        IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_cart)),
        IconButton(onPressed: () {}, icon: const Icon(Icons.logout)),
      ],
    );
  }
}
