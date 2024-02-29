import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class ListAdBanner extends StatelessWidget {
  ListAdBanner({
    super.key,
  });

  final AdManagerBannerAd myBanner = AdManagerBannerAd(
    adUnitId: 'ca-app-pub-3940256099942544/2934735716', //todo: リリース前に本物に変更
    sizes: [AdSize.banner],
    request: const AdManagerAdRequest(),
    listener: AdManagerBannerAdListener(),
  );

  @override
  Widget build(BuildContext context) {
    myBanner.load();
    final AdWidget adWidget = AdWidget(ad: myBanner);
    return Align(
      child: Container(
        width: myBanner.sizes[0].width.toDouble(),
        height: myBanner.sizes[0].height.toDouble(),
        alignment: Alignment.center,
        child: adWidget,
      ),
    );
  }
}
