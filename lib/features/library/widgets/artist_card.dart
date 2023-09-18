import 'package:flutter/material.dart';
import 'package:spotify_ui_clone/app/core/theme/app_colors.dart';
import 'package:spotify_ui_clone/generated/l10n.dart';

class ArtistCard extends StatelessWidget {
  final AssetImage image;
  final String artist;
  const ArtistCard({
    super.key,
    required this.image,
    required this.artist,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CircleAvatar(
          backgroundImage: image,
          radius: 45,
        ),
        const Padding(padding: EdgeInsets.all(16)),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              artist,
              style: const TextStyle(
                color: AppColors.white,
                fontSize: 28,
                fontWeight: FontWeight.w800,
              ),
            ),
            Text(
              S.of(context).artist,
              style: const TextStyle(
                color: AppColors.white2,
                fontSize: 15,
                fontWeight: FontWeight.w300,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
