import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class AdaptiveAdBanner extends StatelessWidget {
  const AdaptiveAdBanner({super.key, this.onLoaded});

  final VoidCallback? onLoaded;

  @override
  Widget build(BuildContext context) {
    const adUnitId = 'ca-app-pub-2209028789060457/3363746469';
    return LayoutBuilder(
      builder: (context, constraint) => HookBuilder(
        builder: (context) {
          final bannerLoaded = useState(false);
          final bannerAd = useFuture(
            useMemoized(
              () async => BannerAd(
                size: AdSize.mediumRectangle,
                adUnitId: adUnitId,
                listener: BannerAdListener(
                  onAdFailedToLoad: (ad, error) {
                    ad.dispose();
                    bannerLoaded.value = false;
                  },
                  onAdLoaded: (ad) {
                    bannerLoaded.value = true;
                    onLoaded?.call();
                  },
                ),
                request: const AdRequest(),
              ),
            ),
          ).data;

          if (bannerAd == null) {
            return const SizedBox.shrink();
          }

          useEffect(
            () {
              bannerAd.load();
              return () async => await bannerAd.dispose();
            },
            [bannerAd],
          );

          return bannerLoaded.value
              ? SizedBox(
                  width: bannerAd.size.width.toDouble(),
                  height: bannerAd.size.height.toDouble(),
                  child: AdWidget(ad: bannerAd),
                )
              : const SizedBox.shrink();
        },
      ),
    );
  }
}
