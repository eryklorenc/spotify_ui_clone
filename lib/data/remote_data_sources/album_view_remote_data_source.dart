import 'package:dio/dio.dart';

class AlbumViewRemoteDataSource {
  Future<Map<String,dynamic>?> getDataAlbumView() async {
    final response = await Dio().get<Map<String, dynamic>>(
        'https://jsonplaceholder.typicode.com/posts/1');
    return response.data;

  }
}