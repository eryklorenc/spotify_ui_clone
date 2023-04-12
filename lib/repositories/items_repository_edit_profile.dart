import 'package:spotify_ui_clone/data/remote_data_sources/edit_profile_remote_data_source.dart';
import 'package:spotify_ui_clone/models/item_model_edit_profile.dart';

class ItemsRepositoryEditProfile {
  ItemsRepositoryEditProfile(
    this._editProfileRemoteDataSource,
  );
  final EditProfileRemoteRetrofitDataSource _editProfileRemoteDataSource;

  Future<ItemModelEditProfile?> getItemModelEditProfile() async {
   return _editProfileRemoteDataSource.getDataEditProfile();

  }
}
