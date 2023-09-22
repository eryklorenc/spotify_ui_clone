import 'package:flutter/material.dart';
import 'package:spotify_ui_clone/features/home/widgets/song_card.dart';
import 'package:spotify_ui_clone/gen/assets.gen.dart';
import 'package:spotify_ui_clone/generated/l10n.dart';

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
            S.of(context).based_on_your_recent_listening,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              SongCard(
                image: Assets.album12.image().image,
              ),
              const SizedBox(
                width: 16,
              ),
              SongCard(
                image: Assets.album10.image().image,
              ),
              const SizedBox(
                width: 16,
              ),
              SongCard(
                image: Assets.album2.image().image,
              ),
              const SizedBox(
                width: 16,
              ),
              SongCard(
                image: Assets.album4.image().image,
              ),
              const SizedBox(
                width: 16,
              ),
              SongCard(
                image: Assets.album1.image().image,
              ),
              const SizedBox(
                width: 16,
              ),
              SongCard(
                image: Assets.album6.image().image,
              ),
              const SizedBox(
                width: 16,
              ),
            ],
          ),
        )
      ],
    );
  }
}
