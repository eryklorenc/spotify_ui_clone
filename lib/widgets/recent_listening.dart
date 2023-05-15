import 'package:flutter/material.dart';
import 'package:spotify_ui_clone/widgets/song_card.dart';

class RecentListening extends StatelessWidget {
  const RecentListening({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            'Based on your recent listening',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        ),
       SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics:  const BouncingScrollPhysics(),
          padding:  const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: const [
              SongCard(
                image: AssetImage('assets/album12.jpg'),
              ),
              SizedBox(
                width: 16,
              ),
              SongCard(
                image: AssetImage('assets/album10.jpg'),
              ),
              SizedBox(
                width: 16,
              ),
              SongCard(
                image: AssetImage('assets/album2.jpg'),
              ),
              SizedBox(
                width: 16,
              ),
              SongCard(
                image: AssetImage('assets/album4.jpg'),
              ),
              SizedBox(
                width: 16,
              ),
              SongCard(
                image: AssetImage('assets/album1.jpg'),
              ),
              SizedBox(
                width: 16,
              ),
              SongCard(
                image: AssetImage('assets/album6.jpg'),
              ),
              SizedBox(
                width: 16,
              ),
            ],
          ),
        )
      ],
    );
  }
}
