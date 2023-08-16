import 'package:flutter/material.dart';
import 'package:spotify_ui_clone/features/library/widgets/artist_card.dart';

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
                        Text('Your favorite Music',
                            style: Theme.of(context).textTheme.headlineSmall),
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
                const Padding(
                  padding: EdgeInsets.all(22),
                  child: Column(
                    children: [
                      ArtistCard(
                        artist: 'Drake',
                        image: AssetImage('assets/album1.jpg'),
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      ArtistCard(
                        artist: 'Travis Scott',
                        image: AssetImage('assets/album7.jpg'),
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      ArtistCard(
                        artist: 'NF',
                        image: AssetImage('assets/album4.jpg'),
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      ArtistCard(
                        artist: 'Eminem',
                        image: AssetImage('assets/album10.jpg'),
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
