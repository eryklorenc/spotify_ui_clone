import 'package:spotify_ui_clone/data/remote_data_sources/album_view_remote_data_source.dart';
import 'package:spotify_ui_clone/models/item_model_album_view.dart';

class ItemsRepositoryAlbumView {
  ItemsRepositoryAlbumView(
    this._albumViewRemoteDataSource,
  );
  final AlbumViewRemoteDataSource _albumViewRemoteDataSource;

  Future<ItemModelAlbumView?> getItemModelAlbumView() async {
    final responseData = await _albumViewRemoteDataSource.getDataAlbumView();

    if (responseData == null) {
      return null;
    }

    final content = responseData['body'] as String;

    return ItemModelAlbumView(
      content: content,
    );
  }
}
