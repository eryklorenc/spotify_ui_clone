import 'package:flutter/material.dart';

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
            'Travis Scott, Taylor Swift, Eminem, Drake, ...',
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
