import 'dart:io';

import 'package:book_picker/features/init/state.dart';
import 'package:book_picker/repository/version/repository.dart';

import 'package:package_info_plus/package_info_plus.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:url_launcher/url_launcher_string.dart';

part 'view_model.g.dart';

@riverpod
class InitModel extends _$InitModel {
  VersionConfigRepo get versionConfigRepo =>
      ref.read(versionConfigRepoProvider.notifier);

  @override
  FutureOr<InitState> build() async {
    final info = await PackageInfo.fromPlatform();
    final String version = info.version;

    late String recomemdedVersion;

    if (Platform.isIOS) {
      recomemdedVersion = await versionConfigRepo.getIosVersion();
    } else if (Platform.isAndroid) {
      recomemdedVersion = await versionConfigRepo.getAndroidVersion();
    } else {
      recomemdedVersion = '';
    }
    final state = InitState(
        currentVersion: version, recomemdedVersion: recomemdedVersion);
    print(state);
    return InitState(
      currentVersion: version,
      recomemdedVersion: recomemdedVersion,
    );
  }

  Future<void> launchURL() async {
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

    if (await canLaunchUrlString(url)) {
      print(url);
      await launchUrlString(url);
    } else {
      print(url);
      throw 'Could not launch $url';
    }
  }
}
