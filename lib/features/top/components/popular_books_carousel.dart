import 'package:book_picker/domain/book/domain.dart';
import 'package:book_picker/features/top/components/grass_carousel_item.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PopularaBoooksCarousel extends ConsumerWidget {
  const PopularaBoooksCarousel({
    required this.popularBooks,
    super.key,
  });

  final List<Book> popularBooks;

  @override
  Widget build(BuildContext context, WidgetRef ref) => CarouselSlider.builder(
        options: CarouselOptions(
          autoPlay: true,
          enableInfiniteScroll: false,
          initialPage: 1,
          height: MediaQuery.of(context).size.height * 0.25,
          viewportFraction: 0.42,
        ),
        itemCount: 10,
        itemBuilder: (context, index, realIndex) {
          final Book popularBook = popularBooks[index];
          return GrassCarouselItem(
            book: popularBook,
          );
        },
      );
}
