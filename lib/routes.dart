import 'package:fine_movie/di/di_setup.dart';
import 'package:fine_movie/domain/model/movie/movie.dart';
import 'package:fine_movie/presentation/home/home_screen.dart';
import 'package:fine_movie/presentation/home/movie_detail/movie_detail_screen.dart';
import 'package:fine_movie/presentation/home/movie_detail/movie_detail_screen_view_model.dart';
import 'package:fine_movie/presentation/home/movie_more/movie_more_screen.dart';
import 'package:fine_movie/presentation/my/my_screen.dart';
import 'package:fine_movie/presentation/search/movie_search_screen.dart';
import 'package:fine_movie/presentation/tap_screen.dart';
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
          builder: (context, state) => const HomeScreen(),
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
            GoRoute(
                path: 'movieMoreScreen',
                builder: (context, state) {
                  List<Movie> movies = state.extra as List<Movie>;

                  return MovieMoreScreen(movies: movies);
                }),
          ],
        ),
        GoRoute(
            path: 'movieSearchScreen',
            builder: (context, state) => const MovieSearchScreen()),
        GoRoute(
          path: 'my',
          builder: (context, state) => const MyScreen(),
        ),
      ],
    ),
  ],
);
