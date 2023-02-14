import 'package:banner_carousel/banner_carousel.dart';
import 'package:flutter/material.dart';
import 'package:mediaquery_c/widgets/list_image.dart';

class CarrouselImageT extends StatelessWidget {
  const CarrouselImageT({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          BannerCarousel(
            banners: listBanners,
            customizedIndicators: const IndicatorModel.animation(
                width: 20, height: 5, spaceBetween: 2, widthAnimation: 50),
            height: 120,
            activeColor: Colors.amberAccent,
            disableColor: Colors.white,
            animation: true,
            borderRadius: 10,
            width: 250,
            indicatorBottom: false,
          ),
        ],
      ),
    );
  }
}
