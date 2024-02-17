import 'package:book_picker/domain/common_storing_book/domain.dart';
import 'package:book_picker/domain/fetched_book/domain.dart';
import 'package:book_picker/domain/user_storing_book/domain.dart';
import 'package:book_picker/features/book_info/page_type.dart';
import 'package:book_picker/features/book_info/view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class BookInfoPage extends ConsumerWidget {
  const BookInfoPage({
    required this.pageType,
    this.commonStoringBook,
    this.fetchedBook,
    this.userStoringBook,
    super.key,
  });
  static const rootName = '/info';

  final PageType pageType;
  final FetchedBook? fetchedBook;
  final CommonStoringBook? commonStoringBook;
  final UserStoringBook? userStoringBook;

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
      data: (data) => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          actions: [
            ElevatedButton(
              onPressed: () {
                context.pop();
              },
              child: const Text('back'),
            ),
          ],
        ),
        body: const Center(
          child: Text('infomation'),
        ),
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
