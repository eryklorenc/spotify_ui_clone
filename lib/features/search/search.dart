import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify_ui_clone/features/search/cubit/search_cubit.dart';
import 'package:spotify_ui_clone/features/search/widgets/search_card.dart';
import 'package:spotify_ui_clone/features/search/widgets/search_field.dart';
import 'package:spotify_ui_clone/generated/l10n.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => SearchCubit(),
        child: BlocBuilder<SearchCubit, SearchState>(
          builder: (context, state) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 50,
                ),
                Center(
                  child: Text(
                    S.of(context).search,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(32.0),
                  child: SearchField(
                    onChanged: (text) {
                      context.read<SearchCubit>().onSearchTextChanged(text);
                    },
                  ),
                ),
                Expanded(
                  child: BlocBuilder<SearchCubit, SearchState>(
                    builder: (context, state) {
                      final allGenres = state.allGenres;
                      final searchResults = state.searchResults.isNotEmpty
                          ? state.searchResults
                          : allGenres;

                      return GridView.count(
                        primary: false,
                        padding: const EdgeInsets.all(12),
                        crossAxisCount: 2,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        children: searchResults
                            .map(
                              (genre) => SearchCard(
                                text: genre,
                                color: context
                                    .read<SearchCubit>()
                                    .getGenreColor(genre),
                              ),
                            )
                            .toList(),
                      );
                    },
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
