import 'package:dio/dio.dart';

class EditProfileRemoteDataSource {
  Future<Map<String, dynamic>?> getDataEditProfile() async {
    try {
      final response = await Dio().get<Map<String, dynamic>>(
          'https://jsonplaceholder.typicode.com/posts/1');
      return response.data;
    } on DioError catch (error) {
      throw Exception(
        error.response?.data['error']['message'] ?? 'Unknown error',
      );
    }
  }
}