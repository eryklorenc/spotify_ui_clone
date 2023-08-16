import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify_ui_clone/features/album_view/album_view.dart';
import 'package:spotify_ui_clone/features/album_view/cubit/album_view_cubit.dart';
import 'package:spotify_ui_clone/models/item_model_album_view.dart';

class AlbumCard extends StatelessWidget {
  final ImageProvider image;
  final String label;

  const AlbumCard({
    super.key,
    required this.image,
    required this.label,
    required this.itemModelAlbumView,
  });

  final ItemModelAlbumView itemModelAlbumView;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AlbumViewCubit, AlbumViewState>(
      builder: (context, state) {
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => AlbumView(
                  itemModelAlbumView: itemModelAlbumView,
                  image: image,
                  label: label,
                ),
              ),
            );
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image(
                image: image,
                width: 120,
                height: 120,
                fit: BoxFit.cover,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                label,
              ),
            ],
          ),
        );
      },
    );
  }
}
