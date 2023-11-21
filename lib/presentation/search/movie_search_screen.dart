import 'package:fine_movie/presentation/search/movie_search_screen_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MovieSearchScreen extends StatefulWidget {
  const MovieSearchScreen({Key? key}) : super(key: key);

  @override
  State<MovieSearchScreen> createState() => _MovieSearchScreenState();
}

class _MovieSearchScreenState extends State<MovieSearchScreen> {
  final TextEditingController _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<MovieSearchScreenViewModel>();
    final state = viewModel.state;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Expanded(
                child: TextField(
                  controller: _textController,
                  onChanged: (query) {
                    viewModel.searchMovies(_textController.text);
                  },
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.zero,
                    hintText: '키워드를 입력해주세요',
                    hintStyle: const TextStyle(
                      fontSize: 18,
                      color: Colors.grey,
                    ),
                    prefixIcon: const Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                    filled: true,
                    fillColor: Colors.grey[900],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
