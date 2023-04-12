import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:spotify_ui_clone/models/item_model_album_view.dart';

part 'album_view_remote_data_source.g.dart';

@RestApi(baseUrl: "https://jsonplaceholder.typicode.com")
abstract class AlbumViewRemoteRetrofitDataSource {
  factory AlbumViewRemoteRetrofitDataSource(Dio dio, {String baseUrl}) = _AlbumViewRemoteRetrofitDataSource;

  @GET("/posts/1")
  Future<ItemModelAlbumView> getDataAlbumView();
}
