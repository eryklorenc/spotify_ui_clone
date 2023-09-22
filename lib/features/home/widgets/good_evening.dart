import 'package:flutter/material.dart';
import 'package:spotify_ui_clone/features/home/widgets/good_album_card.dart';
import 'package:spotify_ui_clone/gen/assets.gen.dart';
import 'package:spotify_ui_clone/generated/l10n.dart';

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
            S.of(context).good_evening,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(
            height: 14,
          ),
          Row(
            children: [
              GoodAlbumCard(
                label: S.of(context).top_global,
                image: Assets.top50.image().image,
              ),
              const SizedBox(
                width: 14,
              ),
              GoodAlbumCard(
                label: S.of(context).pop_remix,
                image: Assets.album6.image().image,
              ),
            ],
          ),
          const SizedBox(
            height: 14,
          ),
          Row(
            children: [
              GoodAlbumCard(
                label: S.of(context).top_usa,
                image: Assets.album13.image().image,
              ),
              const SizedBox(
                width: 14,
              ),
              GoodAlbumCard(
                label: S.of(context).workout,
                image: Assets.album12.image().image,
              ),
            ],
          ),
          const SizedBox(
            height: 14,
          ),
          Row(
            children: [
              GoodAlbumCard(
                label: S.of(context).best_of_nf,
                image: Assets.album9.image().image,
              ),
              const SizedBox(
                width: 14,
              ),
              GoodAlbumCard(
                label: S.of(context).beats_to_study,
                image: Assets.album10.image().image,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
