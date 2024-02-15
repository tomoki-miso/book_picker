import 'package:book_picker/features/book_details/page.dart';
import 'package:book_picker/features/bottom_nav/bottom_nav.dart';
import 'package:book_picker/features/top/page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

final goRouterProvider = Provider<GoRouter>(
  (ref) => GoRouter(
    routes: <RouteBase>[
      // 最初に表示されるページ.
      GoRoute(
        path: '/',
        name: BottomNav.rootName,
        builder: (context, state) => const BottomNav(),
      ),
      GoRoute(
        path: '/top',
        name: TopPage.rootName,
        builder: (context, state) => const TopPage(),
        routes: <RouteBase>[
          GoRoute(
            path: 'info', // ここに/入るとだめっぽい
            name: '/info',
            builder: (context, state) => const BookInfoPage(),
          ),
        ],
      ),

      GoRoute(
        path: '/info',
        name: 'bookInfo',
        builder: (context, state) => const BookInfoPage(),
      ),
    ],
  ),
);
