import 'package:flutter/material.dart';

class GoodAlbumCard extends StatelessWidget {
  final AssetImage image;
  final String label;
  const GoodAlbumCard({
    super.key,
    required this.image,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white10,
          borderRadius: BorderRadius.circular(4),
        ),
        clipBehavior: Clip.antiAlias,
        child: Row(
          children: [
            Image(
              image: image,
              height: 48,
              width: 48,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              width: 8,
            ),
            Text(label)
          ],
        ),
      ),
    );
  }
}