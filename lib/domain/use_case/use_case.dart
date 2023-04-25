import 'package:fine_movie/util/result/result.dart';

abstract class UseCase<T, P> {
  Future<Result<T>> execute(P param);
}
