import 'package:flutter/material.dart';
import 'package:mediaquery_c/screens/example_screen.dart';

class SideBar extends StatelessWidget {
  const SideBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red.shade100,
      height: double.infinity,
      width: 150,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "SideBar",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SecondRoute()),
                );
              },
              icon: const Icon(Icons.person_2)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_bag)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_cart)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.logout)),
        ],
      ),
    );
  }
}
