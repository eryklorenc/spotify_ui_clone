import 'package:flutter/material.dart';
import 'package:spotify_ui_clone/widgets/good_album_card.dart';

class GoodEvening extends StatelessWidget {
  const GoodEvening({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Good evening',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(
            height: 14,
          ),
         Row(
            children:  const [
              GoodAlbumCard(
                label: 'TOP 50 - Global',
                image: AssetImage('assets/top50.jpg'),
              ),
              SizedBox(
                width: 14,
              ),
              GoodAlbumCard(
                label: 'Pop Remix',
                image: AssetImage('assets/album6.jpg'),
              ),
            ],
          ),
          const SizedBox(
            height: 14,
          ),
       Row(
            children:  const [
              GoodAlbumCard(
                label: 'TOP 50 - USA',
                image: AssetImage('assets/album13.jpg'),
              ),
              SizedBox(
                width: 14,
              ),
              GoodAlbumCard(
                label: 'Workout',
                image: AssetImage('assets/album12.jpg'),
              ),
            ],
          ),
          const SizedBox(
            height: 14,
          ),
          Row(
            children:  const [
              GoodAlbumCard(
                label: 'Best of NF',
                image: AssetImage('assets/album9.jpg'),
              ),
              SizedBox(
                width: 14,
              ),
              GoodAlbumCard(
                label: 'Beats to Study',
                image: AssetImage('assets/album10.jpg'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}