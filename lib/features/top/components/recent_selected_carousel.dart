import 'package:book_picker/features/top/components/grass_carousel_item.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RecentSelectedCarousel extends ConsumerWidget {
  const RecentSelectedCarousel({
    required this.data,
    super.key,
  });

  final data;

  @override
  Widget build(BuildContext context, WidgetRef ref) => SizedBox(
        height: MediaQuery.of(context).size.height * 0.2,
        child: CarouselSlider.builder(
          options: CarouselOptions(
            height: MediaQuery.of(context).size.height * 0.25,
            viewportFraction: 0.42,
          ),
          itemCount: 10,
          itemBuilder: (context, index, realIndex) => GrassCarouselItem(
            book: data.commonStoringBookOrderByTime[index],
          ),
        ),
      );
}
