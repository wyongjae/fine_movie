import 'package:fine_movie/presentation/home/movie_search/movie_search_screen_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MovieSearchScreen extends StatefulWidget {
  const MovieSearchScreen({Key? key}) : super(key: key);

  @override
  State<MovieSearchScreen> createState() => _MovieSearchScreenState();
}

class _MovieSearchScreenState extends State<MovieSearchScreen> {
  TextEditingController _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<MovieSearchScreenViewModel>();
    final state = viewModel.state;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            TextField(
              controller: _textController,
              onChanged: (query) {
                viewModel.searchMovies(_textController.text);
              },
            ),
          ],
        ),
      ),
    );
  }
}