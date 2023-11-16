import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:spotify_ui_clone/domain/models/album_view/item_model_album_view.dart';

part 'album_view_remote_data_source.g.dart';


@injectable
@RestApi()
abstract class AlbumViewRemoteRetrofitDataSource {
  @factoryMethod
  factory AlbumViewRemoteRetrofitDataSource(Dio dio) = _AlbumViewRemoteRetrofitDataSource;

  @GET("/posts/1")
  Future<ItemModelAlbumView> getDataAlbumView();
}
