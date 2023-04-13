import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:spotify_ui_clone/models/item_model_edit_profile.dart';

part 'edit_profile_remote_data_source.g.dart';


@injectable
@RestApi()
abstract class EditProfileRemoteRetrofitDataSource {
  @factoryMethod
  factory EditProfileRemoteRetrofitDataSource(Dio dio) = _EditProfileRemoteRetrofitDataSource;

  @GET("/posts/1")
  Future<ItemModelEditProfile> getDataEditProfile();
}


