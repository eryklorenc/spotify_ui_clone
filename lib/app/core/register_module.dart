import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@module
abstract class RegisterModule {
  @Named("BaseUrl")
  String get baseUrl => 'https://jsonplaceholder.typicode.com';

  @lazySingleton
  Dio dio(@Named('BaseUrl') String url) => Dio(
        BaseOptions(baseUrl: url),
      );
}
