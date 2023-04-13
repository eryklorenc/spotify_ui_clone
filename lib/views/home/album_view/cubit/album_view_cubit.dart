import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:spotify_ui_clone/app/core/enums.dart';
import 'package:spotify_ui_clone/models/item_model_album_view.dart';
import 'package:spotify_ui_clone/repositories/items_repository_album_view.dart';

part 'album_view_state.dart';

part 'album_view_cubit.freezed.dart';

@injectable
class AlbumViewCubit extends Cubit<AlbumViewState> {
  AlbumViewCubit(
    this._itemsRepositoryAlbumView,
  ) : super(
          const AlbumViewState(),
        );

  final ItemsRepository _itemsRepositoryAlbumView;

  Future<void> getItemModelAlbumView() async {
    emit(const AlbumViewState(
      status: Status.loading,
    ));
    try {
      final itemModelAlbumView =
          await _itemsRepositoryAlbumView.getItemModelAlbumView();
      emit(
        AlbumViewState(
          model: itemModelAlbumView,
          status: Status.success,
        ),
      );
    } catch (error) {
      emit(
        AlbumViewState(
          status: Status.error,
          errorMessage: error.toString(),
        ),
      );
    }
  }
}
