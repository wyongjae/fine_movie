//TODO: ParamType 을 여기서 따로 만들어주는 이유

abstract class MovieDataRepository<DataType, ParamType> {
  Future<DataType> fetch(ParamType param);
}
