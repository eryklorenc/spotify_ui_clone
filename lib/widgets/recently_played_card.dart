import 'package:flutter/material.dart';
import 'package:spotify_ui_clone/widgets/album_card.dart';

class RecentlyPlayedCard extends StatelessWidget {
  const RecentlyPlayedCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const  SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        physics:  BouncingScrollPhysics(),
        padding:  EdgeInsets.all(20),
        child: Row(
          children:  [
            AlbumCard(
              label: 'Best Mode',
              image: AssetImage('assets/album3.jpg'),
            ),
            SizedBox(
              width: 14,
            ),
            AlbumCard(
              label: 'Relax Mode',
              image: AssetImage('assets/album1.jpg'),
            ),
            SizedBox(
              width: 14,
            ),
            AlbumCard(
              label: 'Best Songs - Global',
              image: AssetImage('assets/album2.jpg'),
            ),
            SizedBox(
              width: 14,
            ),
            AlbumCard(
              label: 'Rap Mode',
              image: AssetImage('assets/album4.jpg'),
            ),
            SizedBox(
              width: 14,
            ),
            AlbumCard(
              label: 'Gaming Mode',
              image: AssetImage('assets/album5.jpg'),
            ),
          ],
        ),
      );
  }
}