import 'package:cached_network_image/cached_network_image.dart';
import 'package:fine_movie/presentation/search/movie_search_screen_view_model.dart';
import 'package:fine_movie/util/constant.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class MovieSearchScreen extends StatefulWidget {
  const MovieSearchScreen({Key? key}) : super(key: key);

  @override
  State<MovieSearchScreen> createState() => _MovieSearchScreenState();
}

class _MovieSearchScreenState extends State<MovieSearchScreen> {
  final TextEditingController _textController = TextEditingController();
  late FocusNode _focusNode;

  @override
  void initState() {
    _focusNode = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    _textController.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<MovieSearchScreenViewModel>();
    final searchState = viewModel.searchState;

    return GestureDetector(
      onTap: () {
        _focusNode.unfocus();
      },
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Stack(
                        children: [
                          TextField(
                            onChanged: (text) {
                              setState(() {});
                            },
                            focusNode: _focusNode,
                            autofocus: false,
                            controller: _textController,
                            cursorColor: Colors.white60,
                            style: const TextStyle(
                              color: Colors.white,
                            ),
                            decoration: InputDecoration(
                              focusedBorder: const OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                ),
                                borderRadius: BorderRadius.zero,
                              ),
                              contentPadding: EdgeInsets.zero,
                              hintText: '제목, 배우, 감독 검색',
                              hintStyle: const TextStyle(
                                fontSize: 16,
                                color: Colors.grey,
                              ),
                              prefixIcon: const Icon(
                                Icons.search,
                                color: Colors.grey,
                                size: 20,
                              ),
                              filled: true,
                              fillColor: Colors.grey[800],
                              border: const OutlineInputBorder(
                                borderRadius: BorderRadius.zero,
                              ),
                            ),
                          ),
                          if (_textController.text.isNotEmpty)
                            Positioned(
                              right: 0,
                              child: IconButton(
                                onPressed: () {
                                  _textController.clear();
                                },
                                icon: const Icon(
                                  Icons.cancel_outlined,
                                ),
                                color: Colors.grey,
                                splashColor: Colors.transparent,
                                iconSize: 22,
                              ),
                            )
                        ],
                      ),
                    ),
                    TextButton(
                      onPressed: () async {
                        await viewModel.fetch(_textController.text);
                      },
                      child: const Text(
                        '확인',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                Expanded(
                  child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: searchState.searchedMovies.length,
                      itemBuilder: (BuildContext context, int index) {
                        final movie = searchState.searchedMovies[index];

                        return InkWell(
                          onTap: () {
                            context.push(
                              '/tap/home/detailScreen',
                              extra: movie,
                            );
                          },
                          child: Column(
                            // Todo: 제목 상단으로 이동 & 배우, 이용 연령대 추가
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10.0),
                                      child: CachedNetworkImage(
                                        width: 100,
                                        height: 130,
                                        imageUrl: posterPath +
                                            (movie.posterPath ?? ''),
                                        fit: BoxFit.cover,
                                        errorWidget: (context, url, error) =>
                                            const Icon(Icons.error),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const SizedBox(
                                          height: 8,
                                        ),
                                        Text(
                                          movie.title,
                                          style: const TextStyle(
                                            fontSize: 20,
                                            color: Colors.white,
                                          ),
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        const SizedBox(
                                          height: 4,
                                        ),
                                        Text(
                                          movie.releaseDate?.substring(0, 4) ??
                                              '',
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.grey[500],
                                          ),
                                        ),
                                        Text(
                                          viewModel.cast ?? '',
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.grey[500],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Divider(
                                color: Colors.grey[500],
                              ),
                            ],
                          ),
                        );
                      }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
