import 'dart:io';

import 'package:book_picker/components/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DLNewVersion extends ConsumerWidget {
  const DLNewVersion({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) => Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/icon.png',
                height: 150,
              ),
              const SizedBox(height: 24),
              const Text(
                'お使いのバージョンはサポートされていません。\n今すぐ最新版をダウンロードしましょう。',
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 24),
              PrimaryButton(
                onPressed: () async {
                  // ignore: unused_local_variable
                  late final String url;
                  if (Platform.isIOS) {
                    url = Uri.encodeFull(
                      'https://apps.apple.com/jp/app/%E7%9F%B3%E6%A9%8B%E3%81%94%E3%81%AF%E3%82%93%E3%83%AB%E3%83%BC%E3%83%AC%E3%83%83%E3%83%88/id6469585028',
                    );
                  } else if (Platform.isAndroid) {
                    url =
                        'https://play.google.com/store/apps/details?id=com.potipoti.ishibashi&hl=ja';
                  } else {
                    url = '';
                  }
                },
                text: '最新版をダウンロード',
              ),
            ],
          ),
        ),
      );
}
