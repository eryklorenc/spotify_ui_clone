part of 'album_view_cubit.dart';

class AlbumViewState {
  const AlbumViewState({
    this.model,
    this.status = Status.initial,
    this.errorMessage,
  });
  final ItemModelAlbumView? model;
  final Status status;
  final String? errorMessage;
}
