import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify_ui_clone/features/album_view/cubit/album_view_cubit.dart';
import 'package:spotify_ui_clone/gen/assets.gen.dart';
import 'package:spotify_ui_clone/generated/l10n.dart';
import 'package:spotify_ui_clone/models/item_model_album_view.dart';
import 'package:spotify_ui_clone/features/home/widgets/album_card.dart';

class RecentlyPlayedCard extends StatelessWidget {
  const RecentlyPlayedCard({
    super.key,
    required this.itemModelAlbumView,
  });

  final ItemModelAlbumView itemModelAlbumView;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AlbumViewCubit, AlbumViewState>(
      builder: (context, state) {
        return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.all(20),
          child: Row(
            children: [
              AlbumCard(
                label: S.of(context).best_mode,
                image: Assets.album3.image().image,
                itemModelAlbumView: itemModelAlbumView,
              ),
              const SizedBox(
                width: 14,
              ),
              AlbumCard(
                label: S.of(context).relax_mode,
                image: Assets.album1.image().image,
                itemModelAlbumView: itemModelAlbumView,
              ),
              const SizedBox(
                width: 14,
              ),
              AlbumCard(
                label: S.of(context).best_songs_global,
                image: Assets.album2.image().image,
                itemModelAlbumView: itemModelAlbumView,
              ),
              const SizedBox(
                width: 14,
              ),
              AlbumCard(
                label: S.of(context).rap_mode,
                image: Assets.album4.image().image,
                itemModelAlbumView: itemModelAlbumView,
              ),
              const SizedBox(
                width: 14,
              ),
              AlbumCard(
                label: S.of(context).gaming_mode,
                image: Assets.album5.image().image,
                itemModelAlbumView: itemModelAlbumView,
              ),
            ],
          ),
        );
      },
    );
  }
}
