part of 'album_view_cubit.dart';


@freezed
class AlbumViewState  with _$AlbumViewState {
  const factory AlbumViewState({
    ItemModelAlbumView? model,
    @Default(Status.initial) Status status,
    String? errorMessage,
  }) = _MostPopularState;
}
