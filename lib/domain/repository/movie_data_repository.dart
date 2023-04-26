import 'package:fine_movie/util/result/result.dart';

abstract class MovieDataRepository<DataType, ParamType> {
  Future<Result<DataType>> fetch(ParamType param);
}
