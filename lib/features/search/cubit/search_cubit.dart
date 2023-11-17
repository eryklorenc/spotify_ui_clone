import 'dart:ui';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:spotify_ui_clone/app/core/config/enums.dart';
import 'package:spotify_ui_clone/app/core/theme/app_colors.dart';
import 'package:spotify_ui_clone/generated/l10n.dart';

part 'search_state.dart';

part 'search_cubit.freezed.dart';

@injectable
class SearchCubit extends Cubit<SearchState> {
  SearchCubit()
      : super(SearchState(
          allGenres: [
            S.current.pop_music,
            S.current.rock,
            S.current.rap,
            S.current.jazz,
            S.current.reggae,
            S.current.house,
          ],
          searchResults: [],
        ));

  void onSearchTextChanged(String text) {
    final searchResults = state.allGenres
        .where(
            (genre) => genre.toLowerCase().contains(text.toLowerCase().trim()))
        .toList();

    emit(state.copyWith(searchResults: searchResults));
  }

  Color getGenreColor(String genre) {
    switch (genre) {
      case 'Pop Music':
        return AppColors.deepPurple;
      case 'Rock':
        return AppColors.deepOrangeAccent;
      case 'Rap':
        return AppColors.deepPurpleAccent;
      case 'Jazz':
        return AppColors.blueAccent;
      case 'Reggae':
        return AppColors.green;
      case 'House':
        return AppColors.deepOrange;
      default:
        return AppColors.deepPurple;
    }
  }
}
