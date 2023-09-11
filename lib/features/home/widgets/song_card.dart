import 'package:flutter/material.dart';
import 'package:spotify_ui_clone/generated/l10n.dart';

class SongCard extends StatelessWidget {
  final AssetImage image;
  const SongCard({
    super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 140,
      child: Column(
        children: [
          Image(
            image: image,
            width: 140,
            height: 140,
          ),
          Text(
            S.of(context).travis_scott_taylor_swift_eminem_drake,
            style: Theme.of(context).textTheme.bodySmall,
            softWrap: true,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          ),
        ],
      ),
    );
  }
}
