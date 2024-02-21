import 'package:book_picker/components/primary_button.dart';
import 'package:book_picker/features/top/view_model.dart';
import 'package:book_picker/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TopFloatingActionButton extends ConsumerWidget {
  const TopFloatingActionButton({
    required this.isLoading,
    super.key,
  });

  final bool isLoading;

  @override
  Widget build(BuildContext context, WidgetRef ref) => SizedBox(
        width: MediaQuery.of(context).size.width * 0.9,
        child: isLoading
            ? PrimaryButton(
                foregroundColor: ColorName.whiteBase,
                isWithWidget: true,
                onPressed: () async {
                  await ref
                      .read(topPageViewModelProvider.notifier)
                      .getBookFromKeyword();
                  ref.read(topPageViewModelProvider);
                },
                child: const Text('本をPick！'),
              )
            : const SizedBox(),
      );
}
