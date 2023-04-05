import 'package:flutter/material.dart';

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