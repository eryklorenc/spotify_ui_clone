import 'package:flutter/material.dart';
import 'package:spotify_ui_clone/app/core/theme/app_colors.dart';
import 'package:spotify_ui_clone/features/search/widgets/search_card.dart';
import 'package:spotify_ui_clone/generated/l10n.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
            child: TextField(
              decoration: InputDecoration(
                fillColor: AppColors.white,
                prefixIcon: const Icon(
                  Icons.search,
                  color: AppColors.dark,
                  size: 28,
                ),
                filled: true,
                border: InputBorder.none,
                hintText: S.of(context).find_your_music,
                hintStyle: const TextStyle(
                  color: AppColors.grey,
                ),
              ),
            ),
          ),
          Expanded(
            child: GridView.count(
              primary: false,
              padding: const EdgeInsets.all(12),
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              children: [
                SearchCard(
                  text: S.of(context).pop_music,
                  color: AppColors.deepPurple,
                ),
                SearchCard(
                  color: AppColors.deepOrangeAccent,
                  text: S.of(context).rock,
                ),
                SearchCard(
                  color: AppColors.deepPurpleAccent,
                  text: S.of(context).rap,
                ),
                SearchCard(
                  color: AppColors.blueAccent,
                  text: S.of(context).jazz,
                ),
                SearchCard(
                  color: AppColors.green,
                  text: S.of(context).reggae,
                ),
                SearchCard(
                  color: AppColors.deepOrange,
                  text: S.of(context).house,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
