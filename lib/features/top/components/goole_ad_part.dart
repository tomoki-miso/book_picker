import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class TopAdBanner extends StatelessWidget {
  TopAdBanner({
    required this.index,
    super.key,
  });

  final int index;

  final AdManagerBannerAd myBanner = AdManagerBannerAd(
    adUnitId: 'ca-app-pub-3940256099942544/2934735716', //todo: リリース前に本物に変更
    sizes: [AdSize.mediumRectangle],
    request: const AdManagerAdRequest(),
    listener: AdManagerBannerAdListener(),
  );

  @override
  Widget build(BuildContext context) {
    myBanner.load();
    final AdWidget adWidget = AdWidget(ad: myBanner);
    return Align(
      child: Container(
        width: myBanner.sizes[index].width.toDouble(),
        height: myBanner.sizes[index].height.toDouble(),
        alignment: Alignment.center,
        child: adWidget,
      ),
    );
  }
}
