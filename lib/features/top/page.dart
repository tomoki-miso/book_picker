import 'package:book_picker/components/gradation_container.dart';
import 'package:book_picker/domain/fetched_book/domain.dart';
import 'package:book_picker/features/top/components/app_ad.dart';
import 'package:book_picker/features/top/components/grass_carousel_item.dart';
import 'package:book_picker/features/top/components/picked_book_container.dart';
import 'package:book_picker/features/top/view_model.dart';
import 'package:book_picker/styles/colors.dart';
import 'package:book_picker/styles/styles.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TopPage extends ConsumerWidget {
  const TopPage({super.key});
  static const rootName = '/top';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(TopPageViewModelProvider('9784101005010'));
    return state.when(
      data: (data) {
        final FetchedBook bookData = data.book;
        return Scaffold(
          backgroundColor: ColorName.skyBlue,
          appBar: AppBar(),
          body: GradatioonContainer(
            child: ListView(
              children: [
                const SizedBox(
                  height: kDefaultPadding,
                ),

                /// ロゴ
                Container(
                  color: ColorName.base,
                  width: 10,
                  height: 100,
                  child: const Text(
                    'LOGO',
                    style: TextStyle(color: ColorName.whiteBase),
                  ),
                ),
                const SizedBox(
                  height: kDefaultPadding,
                ),

                /// 今日のPICK BOOK
                const Padding(
                  padding: EdgeInsets.only(
                    left: kDefaultPadding,
                    bottom: kDefaultSize * 2,
                  ),
                  child: Text(
                    '今日のPicked BOOK!',
                    style: Styles.greyDefaultStyle,
                  ),
                ),

                PickedBookContainer(
                  title: bookData.title,
                  author: bookData.author,
                  itemCaption: bookData.itemCaption,
                  imageUrl: bookData.largeImageUrl,
                  itemPrice: bookData.itemPrice,
                ),

                const Padding(
                  padding: EdgeInsets.only(
                    top: kDefaultPadding * 2,
                    left: kDefaultPadding,
                    bottom: kDefaultSize * 2,
                  ),
                  child: Text(
                    'よくSELECTされてる本',
                    style: Styles.greyDefaultStyle,
                  ),
                ),
                CarouselSlider(
                  options: CarouselOptions(
                    height: MediaQuery.of(context).size.height * 0.25,
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 8),
                    autoPlayAnimationDuration: const Duration(seconds: 8),
                    viewportFraction: 0.45,
                  ),
                  items: [
                    GrassCarouselItem(
                      title: '痴人の愛',
                      author: '谷崎潤一郎',
                      imageUrl: data.book.largeImageUrl,
                    ),
                  ],
                ),

                const Padding(
                  padding: EdgeInsets.only(
                    top: kDefaultPadding * 2,
                    left: kDefaultPadding,
                    bottom: kDefaultSize * 2,
                  ),
                  child: Text(
                    '最近SELECTされた本',
                    style: Styles.greyDefaultStyle,
                  ),
                ),
                CarouselSlider(
                  options: CarouselOptions(
                    height: MediaQuery.of(context).size.height * 0.25,
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 8),
                    autoPlayAnimationDuration: const Duration(seconds: 8),
                    viewportFraction: 0.45,
                  ),
                  items: [
                    GrassCarouselItem(
                      title: '痴人の愛',
                      author: '谷崎潤一郎',
                      imageUrl: data.book.largeImageUrl,
                    ),
                  ],
                ),

                const Padding(
                  padding: EdgeInsets.only(
                    top: kDefaultPadding * 4,
                    left: kDefaultPadding,
                    bottom: kDefaultSize * 2,
                  ),
                  child: Text(
                    '令和最新版高機能サイコーアプリ',
                    style: Styles.greyDefaultStyle,
                    textAlign: TextAlign.center,
                  ),
                ),

                const AppAd(
                  imageUrl:
                      'https://is1-ssl.mzstatic.com/image/thumb/PurpleSource126/v4/5e/f7/4a/5ef74ab9-07b9-64ec-4b70-43ec4be43d85/42edd7e9-2774-4ae3-8b37-d8adec93035d__U30b9_U30e9_U30a4_U30c8_U30991.png/626x0w.webp',
                  appUrl:
                      'https://blog.flutteruniv.com/flutter-package-url_launcher/',
                ),

                const SizedBox(
                  height: kDefaultPadding * 4,
                ),
              ],
            ),
          ),
        );
      },
      error: (error, stackTrace) => ElevatedButton(
        onPressed: () {
          print(error);
        },
        child: Text(error.toString()),
      ),
      loading: () => const Center(child: CircularProgressIndicator()),
    );
  }
}
