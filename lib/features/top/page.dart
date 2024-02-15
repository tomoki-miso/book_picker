import 'package:book_picker/features/top/view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TopPage extends ConsumerWidget {
  const TopPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(TopPageViewModelProvider('9784101005010'));
    return state.when(
      data: (data) => Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(data.book.title ?? 'aa'),
              const Text('aa'),
            ],
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
