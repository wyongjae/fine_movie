abstract class MovieDataRepository<DataType, ParamType> {
  Future<DataType> fetch(ParamType param);
}
