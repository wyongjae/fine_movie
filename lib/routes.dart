import 'package:fine_movie/di/di_setup.dart';
import 'package:fine_movie/presentation/home/home_page.dart';
import 'package:fine_movie/presentation/home/home_page_view_model.dart';
import 'package:fine_movie/presentation/my/my_page.dart';
import 'package:fine_movie/presentation/tap_page.dart';
import 'package:fine_movie/presentation/vod/vod_page.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

final router = GoRouter(
  initialLocation: '/tap',
  routes: [
    GoRoute(
        path: '/tap',
        builder: (context, state) => const TapPage(),
        routes: [
          GoRoute(
            path: 'home',
            builder: (context, state) => ChangeNotifierProvider(
              create: (_) => getIt<HomePageViewModel>(),
              child: const HomePage(),
            ),
          ),
          GoRoute(
            path: 'vod',
            builder: (context, state) => const VodPage(),
          ),
          GoRoute(
            path: 'my',
            builder: (context, state) => const MyPage(),
          ),
        ]),
  ],
);
