import 'package:spotify_ui_clone/models/item_model_album_view.dart';

class ItemsRepositoryAlbumView {
  Future<ItemModelAlbumView?> getItemModelAlbumView() async {
    return const ItemModelAlbumView(
      content: 'tekst',
    );
  }
}
