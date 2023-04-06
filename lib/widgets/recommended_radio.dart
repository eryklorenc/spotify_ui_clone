import 'package:flutter/material.dart';
import 'package:spotify_ui_clone/widgets/song_card.dart';

class RecommendedRadio extends StatelessWidget {
  const RecommendedRadio({
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
            'Recommended radio',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        ),
        const SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics:  BouncingScrollPhysics(),
          padding:  EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children:  [
              SongCard(
                image: AssetImage('assets/album13.jpg'),
              ),
              SizedBox(
                width: 16,
              ),
              SongCard(
                image: AssetImage('assets/album3.jpg'),
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
                image: AssetImage('assets/album10.jpg'),
              ),
              SizedBox(
                width: 16,
              ),
              SongCard(
                image: AssetImage('assets/album9.jpg'),
              ),
              SizedBox(
                width: 16,
              ),
              SongCard(
                image: AssetImage('assets/album6.jpg'),
              ),
            ],
          ),
        )
      ],
    );
  }
}