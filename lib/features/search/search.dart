import 'package:flutter/material.dart';
import 'package:spotify_ui_clone/app/core/theme/app_colors.dart';
import 'package:spotify_ui_clone/app/core/theme/app_text_theme_extension.dart';
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
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    padding: const EdgeInsets.all(12),
                    color: AppColors.deepPurple,
                    child: Text(
                      S.of(context).pop_music,
                      style: Theme.of(context).xTextTheme.body7,
                    ),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    padding: const EdgeInsets.all(12),
                    color: AppColors.deepOrangeAccent,
                    child: Text(
                      S.of(context).rock,
                      style: Theme.of(context).xTextTheme.body7,
                    ),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    padding: const EdgeInsets.all(12),
                    color: AppColors.deepPurpleAccent,
                    child: Text(
                      S.of(context).rap,
                      style: Theme.of(context).xTextTheme.body7,
                    ),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    padding: const EdgeInsets.all(12),
                    color: AppColors.blueAccent,
                    child: Text(
                      S.of(context).jazz,
                      style: Theme.of(context).xTextTheme.body7,
                    ),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    padding: const EdgeInsets.all(12),
                    color: AppColors.green,
                    child: Text(
                      S.of(context).reggae,
                      style: Theme.of(context).xTextTheme.body7,
                    ),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    padding: const EdgeInsets.all(12),
                    color: AppColors.deepOrange,
                    child: Text(
                      S.of(context).house,
                      style: Theme.of(context).xTextTheme.body7,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
