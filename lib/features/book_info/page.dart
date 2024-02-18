import 'package:book_picker/components/back_ground.dart';
import 'package:book_picker/components/book_info_tile.dart';
import 'package:book_picker/components/original_app_bar.dart';
import 'package:book_picker/domain/common_storing_book/domain.dart';
import 'package:book_picker/domain/fetched_book/domain.dart';
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
    this.fetchedBook,
    this.userStoringBook,
    super.key,
  });

  final PageType pageType;
  final FetchedBook? fetchedBook;
  final CommonStoringBook? commonStoringBook;
  final UserStoringBook? userStoringBook;

  // void switch(pageType) async {
  //   case 'todaysBook';
  //   final BookInfo=fetchedBook;
  //   return BookInfo;

  // }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(
      bookInfoPageViewModelProvider(
        pageType,
        fetchedBook,
        commonStoringBook,
        userStoringBook,
      ),
    );
    return state.when(
      data: (data) => const Scaffold(
        appBar: OriginalAppBar(),
        body: BackGround(
            child: Padding(
          padding: EdgeInsets.all(kDefaultPadding),
          child: BookInfoTile(
            title: 'aaaa',
            author: 'aaa',
            imageUrl:
                'https://thumbnail.image.rakuten.co.jp/@0_mall/book/cabinet/5010/9784101005010_1_2.jpg?_ex=200x200',
            isbn: '1111111111',
            itemPrice: '2222',
            itemCaption: 'aaaaa',
          ),
        )),
      ),
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
