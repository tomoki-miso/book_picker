import 'package:book_picker/domain/app_ad/domain.dart';
import 'package:book_picker/features/top/components/app_ad.dart';
import 'package:book_picker/styles/styles.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AppAdsCarousel extends ConsumerWidget {
  const AppAdsCarousel({
    required this.appAds,
    super.key,
  });

  final List<AppAd> appAds;

  @override
  Widget build(BuildContext context, WidgetRef ref) => CarouselSlider.builder(
        options: CarouselOptions(
          enableInfiniteScroll: false,
          initialPage: 1,
          height: MediaQuery.of(context).size.height * 0.25,
        ),
        itemCount: appAds.length,
        itemBuilder: (context, index, realIndex) {
          final AppAd appAd = appAds[index];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultSize * 2),
            child: AppAdTile(
              imageUrl: appAd.imageUrl,
              appUrl: appAd.appUrl,
              googleUrl: appAd.googleUrl,
            ),
          );
        },
      );
}
