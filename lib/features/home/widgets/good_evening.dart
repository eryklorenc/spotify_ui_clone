import 'package:flutter/material.dart';
import 'package:spotify_ui_clone/features/home/widgets/good_album_card.dart';
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
                image: const AssetImage('assets/top50.jpg'),
              ),
              const SizedBox(
                width: 14,
              ),
              GoodAlbumCard(
                label: S.of(context).pop_remix,
                image: const AssetImage('assets/album6.jpg'),
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
                image: const AssetImage('assets/album13.jpg'),
              ),
              const SizedBox(
                width: 14,
              ),
              GoodAlbumCard(
                label: S.of(context).workout,
                image: const AssetImage('assets/album12.jpg'),
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
                image: const AssetImage('assets/album9.jpg'),
              ),
              const SizedBox(
                width: 14,
              ),
              GoodAlbumCard(
                label: S.of(context).beats_to_study,
                image: const AssetImage('assets/album10.jpg'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
