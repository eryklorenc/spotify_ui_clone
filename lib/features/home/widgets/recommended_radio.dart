import 'package:flutter/material.dart';
import 'package:spotify_ui_clone/features/home/widgets/song_card.dart';
import 'package:spotify_ui_clone/gen/assets.gen.dart';
import 'package:spotify_ui_clone/generated/l10n.dart';

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
          padding: const EdgeInsets.all(
            16.0,
          ),
          child: Text(
            S.of(context).recommended_radio,
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
                image: Assets.album13.image().image,
              ),
              const SizedBox(
                width: 16,
              ),
              SongCard(
                image: Assets.album3.image().image,
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
                image: Assets.album10.image().image,
              ),
              const SizedBox(
                width: 16,
              ),
              SongCard(
                image: Assets.album9.image().image,
              ),
              const SizedBox(
                width: 16,
              ),
              SongCard(
                image: Assets.album6.image().image,
              ),
            ],
          ),
        )
      ],
    );
  }
}
