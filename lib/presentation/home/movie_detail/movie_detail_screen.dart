import 'package:cached_network_image/cached_network_image.dart';
import 'package:fine_movie/domain/model/movie/movie.dart';
import 'package:fine_movie/presentation/home/movie_detail/component/movie_detail_info.dart';
import 'package:fine_movie/presentation/home/movie_detail/movie_detail_screen_view_model.dart';
import 'package:fine_movie/util/constant.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MovieDetailScreen extends StatefulWidget {
  final Movie movie;

  const MovieDetailScreen({
    Key? key,
    required this.movie,
  }) : super(key: key);

  @override
  State<MovieDetailScreen> createState() => _MovieDetailScreenState();
}

class _MovieDetailScreenState extends State<MovieDetailScreen> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      final viewModel = context.read<MovieDetailScreenViewModel>();

      viewModel.movieId = widget.movie.id;
      viewModel.fetch();
    });
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<MovieDetailScreenViewModel>();
    final state = viewModel.state;

    return Scaffold(
      body: state.isLoading
          ? const Center(child: CircularProgressIndicator(color: Colors.black38))
          : SafeArea(
              child: CustomScrollView(
                slivers: [
                  SliverAppBar(
                    backgroundColor: Colors.black54,
                    elevation: 0.0,
                    expandedHeight: MediaQuery.of(context).size.width * 9 / 16,
                    flexibleSpace: FlexibleSpaceBar(
                      collapseMode: CollapseMode.pin,
                      background: Stack(
                        alignment: Alignment.center,
                        children: [
                          CachedNetworkImage(
                              fit: BoxFit.cover,
                              imageUrl: posterPath +
                                  (widget.movie.backdropPath ??
                                      '/3bhkrj58Vtu7enYsRolD1fZdja1.jpg')),
                          IconButton(
                            icon: const Icon(Icons.play_circle_fill),
                            color: Colors.white,
                            iconSize: 70,
                            onPressed: () async {
                              //todo 유튜브 화면 이동
                              viewModel.callMovieVideo();
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  SliverPadding(
                    padding: const EdgeInsets.all(16),
                    sliver: SliverList(
                      delegate: SliverChildListDelegate(
                        [
                          MovieDetailInfo(
                            movie: widget.movie,
                            movieDetail: state.movieDetails,
                            credits: state.credits,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
