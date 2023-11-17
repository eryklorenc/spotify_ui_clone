part of 'search_cubit.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState({
    @Default(Status.initial) Status status,
    String? errorMessage,
    required List<String> allGenres,
    required List<String> searchResults,
  }) = _SearchState;
}
