import 'package:banner_carousel/banner_carousel.dart';
import 'package:flutter/material.dart';
import 'package:mediaquery_c/widgets/horizontal/contenido_h.dart';
import 'package:mediaquery_c/widgets/horizontal/content_h.dart';
import 'package:mediaquery_c/widgets/horizontal/sidebar.dart';
import 'package:mediaquery_c/widgets/list_image.dart';
import 'package:mediaquery_c/widgets/vertical/content_v.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    bool isHorizontal(BuildContext context) =>
        MediaQuery.of(context).size.width >= 500;

    bool isVertical(BuildContext context) =>
        MediaQuery.of(context).size.width < 500;

    return Scaffold(
      appBar: AppBar(title: const Text("Tienda virtual")),
      body: Center(
        child: Row(
          children: [
            if (isHorizontal(context)) const SideBar(),
            if (isVertical(context)) const Content(),
            if (isHorizontal(context)) const CarrouselImageT(),
          ],
        ),
      ),
    );
  }
}
