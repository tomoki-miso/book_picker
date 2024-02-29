import 'package:book_picker/components/back_ground.dart';
import 'package:book_picker/components/error_page.dart';
import 'package:book_picker/components/loading.dart';
import 'package:book_picker/components/original_app_bar.dart';
import 'package:book_picker/features/my_accocunt_page/page.dart';
import 'package:book_picker/features/selected_books/bookListType.dart';
import 'package:book_picker/features/selected_books/page.dart';
import 'package:book_picker/features/top/components/app_ad.dart';
import 'package:book_picker/features/top/components/carousel_title.dart';
import 'package:book_picker/features/top/components/goole_ad_part.dart';
import 'package:book_picker/features/top/components/picked_book_container.dart';
import 'package:book_picker/features/top/components/popular_books_carousel.dart';
import 'package:book_picker/features/top/components/recent_selected_carousel.dart';
import 'package:book_picker/features/top/components/searching_book_indicator.dart';
import 'package:book_picker/features/top/components/top_drawer_part.dart';
import 'package:book_picker/features/top/components/top_floating_action_button.dart';
import 'package:book_picker/features/top/view_model.dart';
import 'package:book_picker/styles/styles.dart';
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
                      isStored: data.isStored,
                      todaysPickedBook: data.todaysPickedBook!,
                    ),
                  ),

                  /// よくセレクトされてる本
                  Carouseltitle(
                    onPressed: () async => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SelectedBooksPage(
                          bookListType: BookListType.popularBooks,
                        ),
                      ),
                    ),
                    title: 'よくSELECTされてる本',
                  ),

                  // カルーセル
                  PopularaBoooksCarousel(data: data),

                  /// 最近Selectされた本
                  Carouseltitle(
                    onPressed: () async => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SelectedBooksPage(
                          bookListType: BookListType.recentStoredBooks,
                        ),
                      ),
                    ),
                    title: '最近SELECTされた本',
                  ),

                  /// カルーセル
                  RecentSelectedCarousel(data: data),

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
                    AppAdTile(
                      imageUrl: appAd.imageUrl,
                      appUrl: appAd.appUrl,
                      googleUrl: appAd.googleUrl,
                    ),

                  const SizedBox(
                    height: kDefaultPadding,
                  ),

                  TopAdBanner(
                    index: 0,
                  ),

                  const SizedBox(
                    height: kDefaultPadding * 8,
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
