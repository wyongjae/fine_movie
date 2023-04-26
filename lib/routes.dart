import 'package:fine_movie/di/di_setup.dart';
import 'package:fine_movie/domain/model/movie/movie.dart';
import 'package:fine_movie/presentation/home/home_screen.dart';
import 'package:fine_movie/presentation/home/home_screen_view_model.dart';
import 'package:fine_movie/presentation/movie_detail/movie_detail_screen.dart';
import 'package:fine_movie/presentation/movie_detail/movie_detail_screen_view_model.dart';
import 'package:fine_movie/presentation/my/my_screen.dart';
import 'package:fine_movie/presentation/tap_screen.dart';
import 'package:fine_movie/presentation/vod/vod_screen.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

final router = GoRouter(
  initialLocation: '/tap',
  routes: [
    GoRoute(
        path: '/tap',
        builder: (context, state) => const TapScreen(),
        routes: [
          GoRoute(
            path: 'home',
            builder: (context, state) => ChangeNotifierProvider(
                create: (_) => getIt<HomeScreenViewModel>(),
                child: const HomeScreen()),
            routes: [
              GoRoute(
                  path: 'detailScreen',
                  builder: (context, state) {
                    Movie movie = state.extra as Movie;

                    return ChangeNotifierProvider(
                      create: (_) => getIt<MovieDetailScreenViewModel>(),
                      child: MovieDetailScreen(movie: movie),
                    );
                  }),
            ],
          ),
          GoRoute(path: 'vod', builder: (context, state) => const VodScreen()),
          GoRoute(path: 'my', builder: (context, state) => const MyScreen()),
        ]),
  ],
);
