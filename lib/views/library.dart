import 'package:flutter/material.dart';

class LibraryView extends StatefulWidget {
  const LibraryView({super.key});

  @override
  State<LibraryView> createState() => _LibraryViewState();
}

class _LibraryViewState extends State<LibraryView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
                  Row(
                    children: const [
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
              children: const [
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
    );
  }
}

class ArtistCard extends StatelessWidget {
  final AssetImage image;
  final String artist;
  const ArtistCard({
    super.key,
    required this.image,
    required this.artist,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CircleAvatar(
          backgroundImage: image,
          radius: 45,
        ),
        const Padding(padding: EdgeInsets.all(16)),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              artist,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.w800),
            ),
            const Text(
              'Artist',
              style: TextStyle(
                  color: Colors.white24,
                  fontSize: 15,
                  fontWeight: FontWeight.w300),
            )
          ],
        ),
      ],
    );
  }
}
