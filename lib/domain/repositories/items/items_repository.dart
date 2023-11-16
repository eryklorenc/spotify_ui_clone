import 'package:injectable/injectable.dart';
import 'package:spotify_ui_clone/data/remote_data_sources/album_view/album_view_remote_data_source.dart';
import 'package:spotify_ui_clone/data/remote_data_sources/edit_profile/edit_profile_remote_data_source.dart';
import 'package:spotify_ui_clone/domain/models/album_view/item_model_album_view.dart';
import 'package:spotify_ui_clone/domain/models/edit_profile/item_model_edit_profile.dart';
@injectable
class ItemsRepository {
  ItemsRepository({
   required this.albumViewRemoteDataSource,
   required this.editProfileRemoteDataSource,
  });

  final AlbumViewRemoteRetrofitDataSource albumViewRemoteDataSource;
  final EditProfileRemoteRetrofitDataSource editProfileRemoteDataSource;


  Future<ItemModelAlbumView?> getItemModelAlbumView() async {
    return albumViewRemoteDataSource.getDataAlbumView();
  }

  Future<ItemModelEditProfile?> getItemModelEditProfile() async {
   return editProfileRemoteDataSource.getDataEditProfile();

  }
}
