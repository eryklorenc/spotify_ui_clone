import 'package:spotify_ui_clone/data/remote_data_sources/edit_profile_remote_data_source.dart';
import 'package:spotify_ui_clone/models/item_model_edit_profile.dart';

class ItemsRepositoryEditProfile {
  ItemsRepositoryEditProfile(
    this._editProfileRemoteDataSource,
  );
  final EditProfileRemoteDataSource _editProfileRemoteDataSource;

  Future<ItemModelEditProfile?> getItemModelEditProfile() async {
    final json = await _editProfileRemoteDataSource.getDataEditProfile();

    if (json == null) {
      return null;
    }

    return ItemModelEditProfile.fromJson(json);
  }
}
