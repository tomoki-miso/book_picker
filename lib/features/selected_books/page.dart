import 'package:book_picker/components/gradation_container.dart';
import 'package:book_picker/components/grass_container.dart';
import 'package:book_picker/features/selected_books/view_model.dart';
import 'package:book_picker/styles/styles.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SelectedBooksPage extends ConsumerWidget {
  const SelectedBooksPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(selectedBooksPageViewModelProvider);
    return state.when(
      data: (data) => Scaffold(
        appBar: AppBar(),
        body: GradatioonContainer(
          child: ListView.builder(
            itemCount: data.storingBooks.length,
            itemBuilder: (context, index) => GrassContainer(
              width: 1,
              height: 0.15,
              child: Row(
                children: [
                  const SizedBox(
                    width: kDefaultPadding * 1.5,
                  ),
                  CachedNetworkImage(
                    width: MediaQuery.of(context).size.width * 0.2,
                    imageUrl: data.storingBooks[index].largeImageUrl ?? '',
                  ),
                  const SizedBox(
                    width: kDefaultPadding,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: kDefaultPadding,
                      ),
                      Text(
                        data.storingBooks[index].title ?? '',
                        style: Styles.bookAuthorStyle,
                      ),
                      const SizedBox(
                        height: kDefaultSize * 2,
                      ),
                      Text(
                        data.storingBooks[index].author ?? '',
                        style: Styles.defaultBoldStyle,
                      ),
                      const SizedBox(
                        height: kDefaultPadding,
                      ),
                      const Row(
                        children: [
                          Text(
                            'Selectした日',
                            style: Styles.greyDefaultStyle,
                          ),
                          SizedBox(
                            width: kDefaultSize * 2,
                          ),
                          Text(
                            '2024/2/29',
                            style: Styles.defaultStyle,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
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
