import 'package:book_picker/components/back_ground.dart';
import 'package:book_picker/components/original_app_bar.dart';
import 'package:book_picker/features/selected_books/components/selected_books_list_tile.dart';
import 'package:book_picker/features/selected_books/view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SelectedBooksPage extends ConsumerWidget {
  const SelectedBooksPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(selectedBooksPageViewModelProvider);
    return state.when(
      data: (data) => Scaffold(
        appBar: const OriginalAppBar(),
        body: BackGround(
          child: ListView.builder(
            itemCount: data.storingBooks.length,
            itemBuilder: (context, index) => SelectedBooksListTile(
              selectedBook: data.storingBooks[index],
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
