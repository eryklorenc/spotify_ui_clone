import 'package:flutter/material.dart';
import 'package:spotify_ui_clone/views/home/home.dart';
import 'package:spotify_ui_clone/views/library.dart';
import 'package:spotify_ui_clone/views/profile/profile.dart';
import 'package:spotify_ui_clone/views/search.dart';

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
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.search_outlined), label: 'Search'),
            BottomNavigationBarItem(
                icon: Icon(Icons.library_music_outlined),
                label: 'Your Library'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
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
