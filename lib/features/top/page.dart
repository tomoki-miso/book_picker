import 'package:book_picker/components/back_ground.dart';
import 'package:book_picker/components/error_page.dart';
import 'package:book_picker/components/loading.dart';
import 'package:book_picker/components/original_app_bar.dart';
import 'package:book_picker/features/my_accocunt_page/page.dart';
import 'package:book_picker/features/selected_books/bookListType.dart';
import 'package:book_picker/features/selected_books/page.dart';
import 'package:book_picker/features/top/components/app_ad.dart';
import 'package:book_picker/features/top/components/grass_carousel_item.dart';
import 'package:book_picker/features/top/components/picked_book_container.dart';
import 'package:book_picker/features/top/components/searching_book_indicator.dart';
import 'package:book_picker/features/top/components/top_drawer_part.dart';
import 'package:book_picker/features/top/components/top_floating_action_button.dart';
import 'package:book_picker/features/top/view_model.dart';
import 'package:book_picker/styles/styles.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TopPage extends ConsumerWidget {
  const TopPage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(topPageViewModelProvider);
    return state.when(
      data: (data) => Scaffold(
        endDrawer: const TopDrawerPart(),
        appBar: OriginalAppBar(
          isWithTitle: true,
          imageUrl: data.user.userIcon,
          onTapUserIcon: () async => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const MyAccountPage()),
          ),
        ),
        body: BackGround(
          child: Stack(
            children: [
              ListView(
                physics: const AlwaysScrollableScrollPhysics(),
                children: [
                  const SizedBox(
                    height: kDefaultPadding,
                  ),

                  /// PICK BOOK
                  const Padding(
                    padding: EdgeInsets.only(
                      left: kDefaultPadding,
                      bottom: kDefaultSize * 2,
                    ),
                    child: Text(
                      'Picked BOOK!',
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

                  /// 最近Selectされた本
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

                  /// アプリ宣伝
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
                  for (final appAd in data.appAds)
                    Padding(
                      padding: const EdgeInsets.only(bottom: kDefaultSize * 2),
                      child: AppAdTile(
                        imageUrl: appAd.imageUrl,
                        appUrl: appAd.appUrl,
                        googleUrl: appAd.googleUrl,
                      ),
                    ),

                  const SizedBox(
                    height: kDefaultPadding * 4,
                  ),
                ],
              ),
              if (data.isLoading) const SearchingBookIndicator(),
            ],
          ),
        ),
        floatingActionButton:
            TopFloatingActionButton(isLoading: data.isLoading),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
      error: (error, stackTrace) => ErrorPage(error: error),
      loading: () => const LoadingPage(),
    );
  }
}
