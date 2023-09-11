import 'package:flutter/material.dart';
import 'package:spotify_ui_clone/features/library/widgets/artist_card.dart';
import 'package:spotify_ui_clone/generated/l10n.dart';

class LibraryView extends StatefulWidget {
  const LibraryView({super.key});

  @override
  State<LibraryView> createState() => _LibraryViewState();
}

class _LibraryViewState extends State<LibraryView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topLeft,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * .5,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.white.withOpacity(0.3),
                  Colors.white.withOpacity(0.1),
                  Colors.black.withOpacity(0),
                ],
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomRight,
                colors: [
                  Colors.white.withOpacity(0),
                  Colors.black.withOpacity(1),
                ],
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 30,
                ),
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          S.of(context).your_favorite_music,
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                        const Row(
                          children: [
                            Icon(Icons.search),
                            SizedBox(
                              width: 20,
                            ),
                            Icon(Icons.add),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.all(22),
                  child: Column(
                    children: [
                      ArtistCard(
                        artist: S.of(context).drake,
                        image: const AssetImage('assets/album1.jpg'),
                      ),
                      const SizedBox(
                        height: 35,
                      ),
                      ArtistCard(
                        artist: S.of(context).travis_scott,
                        image: const AssetImage('assets/album7.jpg'),
                      ),
                      const SizedBox(
                        height: 35,
                      ),
                      ArtistCard(
                        artist: S.of(context).nf,
                        image: const AssetImage('assets/album4.jpg'),
                      ),
                      const SizedBox(
                        height: 35,
                      ),
                      ArtistCard(
                        artist: S.of(context).eminem,
                        image: const AssetImage('assets/album10.jpg'),
                      ),
                    ],
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
