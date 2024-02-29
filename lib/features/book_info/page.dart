import 'package:book_picker/components/back_ground.dart';
import 'package:book_picker/components/error_page.dart';
import 'package:book_picker/components/original_app_bar.dart';
import 'package:book_picker/components/primary_button.dart';
import 'package:book_picker/domain/book/domain.dart';
import 'package:book_picker/features/book_info/components/book_info_tile.dart';
import 'package:book_picker/features/book_info/view_model.dart';
import 'package:book_picker/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookInfoPage extends ConsumerWidget {
  const BookInfoPage({
    required this.book,
    super.key,
  });

  final Book book;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(
      bookInfoPageViewModelProvider(
        book,
      ),
    );

    return state.when(
      data: (data) {
        final convertWidgetToImageKey = GlobalKey();
        return Scaffold(
          appBar: const OriginalAppBar(),
          body: BackGround(
            child: Padding(
              padding: const EdgeInsets.all(kDefaultPadding)
                  .copyWith(bottom: kDefaultPadding * 5),
              child: RepaintBoundary(
                key: convertWidgetToImageKey,
                child: BookInfoTile(
                  title: data.book.title,
                  author: data.book.author,
                  imageUrl: data.book.imageUrl,
                  isbn: data.book.isbn,
                  itemPrice: data.book.itemPrice.toString(),
                  itemCaption: data.book.itemCaption,
                  publisherName: data.book.publisherName,
                  affiUrl: data.book.affiUrl,
                  share: () async => ref
                      .read(bookInfoPageViewModelProvider(book).notifier)
                      .shareWidgetImage(
                        globalKey: convertWidgetToImageKey,
                        bookName: data.book.title ?? '',
                      ),
                ),
              ),
            ),
          ),
          floatingActionButton: data.isCanStoreBook
              ? SizedBox(
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: PrimaryButton(
                    isWithWidget: true,
                    onPressed: () async {
                      await ref
                          .read(bookInfoPageViewModelProvider(book).notifier)
                          .storeBook();
                    },
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FaIcon(FontAwesomeIcons.heartCirclePlus),
                        SizedBox(
                          width: kDefaultSize * 2,
                        ),
                        Text('この本をSELECT！'),
                      ],
                    ),
                  ),
                )
              : SizedBox(
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: PrimaryButton(
                    isWithWidget: true,
                    onPressed: () async {
                      await ref
                          .read(bookInfoPageViewModelProvider(book).notifier)
                          .deleteBook();
                    },
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FaIcon(FontAwesomeIcons.heartCircleMinus),
                        SizedBox(
                          width: kDefaultSize * 2,
                        ),
                        Text('この本のSELECTを取り消す'),
                      ],
                    ),
                  ),
                ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
        );
      },
      error: (error, stackTrace) => ErrorPage(error: error),
      loading: () => const Center(child: CircularProgressIndicator()),
    );
  }
}
