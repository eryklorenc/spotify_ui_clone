import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:spotify_ui_clone/models/item_model_edit_profile.dart';

part 'edit_profile_remote_data_source.g.dart';

@RestApi(baseUrl: "https://jsonplaceholder.typicode.com")
abstract class EditProfileRemoteRetrofitDataSource {
  factory EditProfileRemoteRetrofitDataSource(Dio dio, {String baseUrl}) = _EditProfileRemoteRetrofitDataSource;

  @GET("/posts/1")
  Future<ItemModelEditProfile> getDataEditProfile();
}


