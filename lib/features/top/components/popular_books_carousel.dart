import 'package:book_picker/features/top/components/grass_carousel_item.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PopularaBoooksCarousel extends ConsumerWidget {
  const PopularaBoooksCarousel({
    required this.data,
    super.key,
  });

  final data;

  @override
  Widget build(BuildContext context, WidgetRef ref) => CarouselSlider.builder(
        options: CarouselOptions(
          enableInfiniteScroll: false,
          initialPage: 1,
          height: MediaQuery.of(context).size.height * 0.25,
          viewportFraction: 0.42,
        ),
        itemCount: 10,
        itemBuilder: (context, index, realIndex) => GrassCarouselItem(
          book: data.commonStoringBookOrderByAmount[index],
        ),
      );
}
