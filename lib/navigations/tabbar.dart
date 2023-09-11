import 'package:flutter/material.dart';
import 'package:spotify_ui_clone/features/home/home.dart';
import 'package:spotify_ui_clone/features/library/library.dart';
import 'package:spotify_ui_clone/features/profile/profile.dart';
import 'package:spotify_ui_clone/features/search/search.dart';
import 'package:spotify_ui_clone/generated/l10n.dart';

class Tabbar extends StatefulWidget {
  const Tabbar({super.key});

  @override
  TabbarState createState() => TabbarState();
}

class TabbarState extends State<Tabbar> {
  var currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (tabIndex) {
            setState(() {
              currentIndex = tabIndex;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: const Icon(Icons.home_outlined),
              label: S.of(context).home,
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.search_outlined),
              label: S.of(context).search,
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.library_music_outlined),
              label: S.of(context).your_library,
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.person),
              label: S.of(context).profile,
            ),
          ]),
      body: Builder(builder: (context) {
        if (currentIndex == 0) {
          return const HomeView();
        }
        if (currentIndex == 1) {
          return const SearchView();
        }

        if (currentIndex == 2) {
          return const LibraryView();
        }

        if (currentIndex == 3) {
          return const ProfileView();
        }
        return Stack(children: [
          renderView(
            0,
            const HomeView(),
          ),
          renderView(
            1,
            const SearchView(),
          ),
          renderView(
            2,
            const LibraryView(),
          ),
          renderView(
            3,
            const ProfileView(),
          ),
        ]);
      }),
    );
  }

  Widget renderView(int tabIndex, Widget view) {
    return IgnorePointer(
      ignoring: currentIndex != tabIndex,
      child: Opacity(
        opacity: currentIndex == 0 ? 1 : 0,
        child: view,
      ),
    );
  }
}
