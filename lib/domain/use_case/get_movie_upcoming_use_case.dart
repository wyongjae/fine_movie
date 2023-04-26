import 'package:fine_movie/core/param/param.dart';
import 'package:fine_movie/domain/model/movie/movie.dart';
import 'package:fine_movie/domain/repository/movie_data_repository.dart';
import 'package:fine_movie/domain/use_case/use_case.dart';
import 'package:fine_movie/util/result/result.dart';

class GetMovieUpcomingUseCase implements UseCase<List<Movie>, Param> {
  final MovieDataRepository _repository;

  GetMovieUpcomingUseCase(this._repository);

  @override
  Future<Result<List<Movie>>> execute(param) {
    // TODO: implement execute
    throw UnimplementedError();
  }
}
