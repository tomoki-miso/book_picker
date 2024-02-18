import 'package:book_picker/components/back_ground.dart';
import 'package:book_picker/components/book_info_tile.dart';
import 'package:book_picker/components/error_page.dart';
import 'package:book_picker/components/original_app_bar.dart';
import 'package:book_picker/domain/common_storing_book/domain.dart';
import 'package:book_picker/domain/todays_picked_book/domain.dart';
import 'package:book_picker/domain/user_storing_book/domain.dart';
import 'package:book_picker/features/book_info/page_type.dart';
import 'package:book_picker/features/book_info/view_model.dart';
import 'package:book_picker/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BookInfoPage extends ConsumerWidget {
  const BookInfoPage({
    required this.pageType,
    this.commonStoringBook,
    this.todaysPickedBook,
    this.userStoringBook,
    super.key,
  });

  final PageType pageType;
  final TodaysPickedBook? todaysPickedBook;
  final CommonStoringBook? commonStoringBook;
  final UserStoringBook? userStoringBook;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(
      bookInfoPageViewModelProvider(
        pageType,
        todaysPickedBook,
        commonStoringBook,
        userStoringBook,
      ),
    );

    return state.when(
      data: (data) => Scaffold(
        appBar: const OriginalAppBar(),
        body: BackGround(
          child: Padding(
            padding: const EdgeInsets.all(kDefaultPadding),
            child: BookInfoTile(
              title: data.book.title,
              author: data.book.author,
              imageUrl: data.book.imageUrl,
              isbn: data.book.isbn,
              itemPrice: data.book.itemPrice.toString(),
              itemCaption: data.book.itemCaption,
              publisherName: data.book.publisherName,
            ),
          ),
        ),
      ),
      error: (error, stackTrace) => ErrorPage(error: error),
      loading: () => const Center(child: CircularProgressIndicator()),
    );
  }
}
