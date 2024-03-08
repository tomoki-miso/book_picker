import 'package:book_picker/components/primary_button.dart';
import 'package:book_picker/features/top/view_model.dart';
import 'package:book_picker/styles/colors.dart';
import 'package:book_picker/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TopFloatingActionButton extends ConsumerWidget {
  const TopFloatingActionButton({
    required this.isLoading,
    required this.controller,
    super.key,
  });

  final bool isLoading;
  final ScrollController controller;

  @override
  Widget build(BuildContext context, WidgetRef ref) => SizedBox(
        width: MediaQuery.of(context).size.width * 0.8,
        child: !isLoading
            ? PrimaryButton(
                backgroundColor: ColorName.skyBlue,
                foregroundColor: ColorName.whiteBase,
                isWithWidget: true,
                onPressed: () async {
                  await controller.animateTo(
                    0,
                    duration: const Duration(milliseconds: 5),
                    curve: Curves.bounceInOut,
                  );
                  await ref
                      .read(topPageViewModelProvider.notifier)
                      .getBookFromKeyword();
                  // ref.read(topPageViewModelProvider);
                },
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FaIcon(FontAwesomeIcons.rotate),
                    SizedBox(
                      width: kDefaultSize * 2,
                    ),
                    Text('ブクピク！'),
                  ],
                ),
              )
            : const SizedBox(),
      );
}
