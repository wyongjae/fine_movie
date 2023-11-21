import 'package:cached_network_image/cached_network_image.dart';
import 'package:fine_movie/domain/model/movie/movie.dart';
import 'package:fine_movie/util/constant.dart';
import 'package:flutter/material.dart';

class MovieItem extends StatelessWidget {
  final Movie movie;

  const MovieItem({
    Key? key,
    required this.movie,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 150,
          height: 200,
          child: CachedNetworkImage(
            imageUrl: posterPath + (movie.posterPath ?? ''),
            fit: BoxFit.cover,
            errorWidget: (context, url, error) => const Icon(Icons.error),
          ),
        ),
        const SizedBox(height: 6),
        SizedBox(
          width: 150,
          child: Text(
            movie.title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.white,
            ),
            textAlign: TextAlign.start,
          ),
        ),
      ],
    );
  }
}
