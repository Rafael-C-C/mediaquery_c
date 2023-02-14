import 'package:flutter/material.dart';

class ContentH extends StatelessWidget {
  const ContentH({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            color: Colors.amber,
            width: 500,
            height: 100,
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            color: Colors.amber,
            width: 500,
            height: 100,
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            color: Colors.amber,
            width: 500,
            height: 100,
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            color: Colors.amber,
            width: 500,
            height: 100,
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
