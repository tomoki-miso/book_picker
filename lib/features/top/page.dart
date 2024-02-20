import 'package:book_picker/components/back_ground.dart';
import 'package:book_picker/components/error_page.dart';
import 'package:book_picker/components/original_app_bar.dart';
import 'package:book_picker/features/selected_books/bookListType.dart';
import 'package:book_picker/features/selected_books/page.dart';
import 'package:book_picker/features/top/components/app_ad.dart';
import 'package:book_picker/features/top/components/grass_carousel_item.dart';
import 'package:book_picker/features/top/components/picked_book_container.dart';
import 'package:book_picker/features/top/view_model.dart';
import 'package:book_picker/styles/colors.dart';
import 'package:book_picker/styles/styles.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lottie/lottie.dart';

class TopPage extends ConsumerWidget {
  const TopPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(topPageViewModelProvider);
    return state.when(
      data: (data) => Scaffold(
        appBar: const OriginalAppBar(),
        body: BackGround(
          child: Stack(
            children: [
              ListView(
                children: [
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
                      style: Styles.greyDefaultBoldStyle,
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                    child: PickedBookContainer(
                      todaysPickedBook: data.todaysPickedBook!,
                    ),
                  ),

                  /// よくセレクトされてる本
                  Padding(
                    padding: const EdgeInsets.only(
                      top: kDefaultPadding * 2,
                      left: kDefaultPadding,
                      bottom: kDefaultSize * 2,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'よくSELECTされてる本',
                          style: Styles.greyDefaultBoldStyle,
                        ),
                        TextButton(
                          onPressed: () async => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SelectedBooksPage(
                                bookListType: BookListType.popularBooks,
                              ),
                            ),
                          ),
                          child: const Text(
                            'もっとみる ＞',
                            style: Styles.greyDefaultStyle,
                          ),
                        ),
                      ],
                    ),
                  ),
                  CarouselSlider.builder(
                    options: CarouselOptions(
                      height: MediaQuery.of(context).size.height * 0.25,
                      autoPlay: true,
                      autoPlayInterval: const Duration(seconds: 8),
                      autoPlayAnimationDuration: const Duration(seconds: 8),
                      viewportFraction: 0.42,
                    ),
                    itemCount: data.commonStoringBookOrderByAmount.length,
                    itemBuilder: (context, index, realIndex) =>
                        GrassCarouselItem(
                      book: data.commonStoringBookOrderByAmount[index],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(
                      top: kDefaultPadding * 2,
                      left: kDefaultPadding,
                      bottom: kDefaultSize * 2,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          '最近SELECTされた本',
                          style: Styles.greyDefaultBoldStyle,
                        ),
                        TextButton(
                          onPressed: () async => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SelectedBooksPage(
                                bookListType: BookListType.recentStoredBooks,
                              ),
                            ),
                          ),
                          child: const Text(
                            'もっとみる ＞',
                            style: Styles.greyDefaultStyle,
                          ),
                        ),
                      ],
                    ),
                  ),
                  CarouselSlider.builder(
                    options: CarouselOptions(
                      height: MediaQuery.of(context).size.height * 0.25,
                      autoPlay: true,
                      autoPlayInterval: const Duration(seconds: 8),
                      autoPlayAnimationDuration: const Duration(seconds: 8),
                      viewportFraction: 0.42,
                    ),
                    itemCount: data.commonStoringBookOrderByTime.length,
                    itemBuilder: (context, index, realIndex) =>
                        GrassCarouselItem(
                      book: data.commonStoringBookOrderByTime[index],
                    ),
                  ),

                  const Padding(
                    padding: EdgeInsets.only(
                      top: kDefaultPadding * 4,
                      left: kDefaultPadding,
                      bottom: kDefaultSize * 2,
                    ),
                    child: Text(
                      '令和最新版高機能サイコーアプリ',
                      style: Styles.greyDefaultBoldStyle,
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
              if (data.isLoading)
                Container(
                  color: ColorName.whiteBase.withOpacity(0.6),
                  height: double.infinity,
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('ほんをさがしています・・・'),
                      SizedBox(
                        height: 300,
                        child: Lottie.asset('assets/lottie/cat_rocket.json'),
                      ),
                      const CircularProgressIndicator(),
                    ],
                  ),
                ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () async => ref
              .read(topPageViewModelProvider.notifier)
              .getBookFromKeyword()
              .then((value) => ref.read(topPageViewModelProvider)),
        ),
      ),
      error: (error, stackTrace) => ErrorPage(error: error),
      loading: () => const Center(child: CircularProgressIndicator()),
    );
  }
}
