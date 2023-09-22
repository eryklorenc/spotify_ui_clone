import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify_ui_clone/app/core/theme/app_colors.dart';
import 'package:spotify_ui_clone/app/core/utils/injection_container.dart';
import 'package:spotify_ui_clone/features/album_view/cubit/album_view_cubit.dart';
import 'package:spotify_ui_clone/gen/assets.gen.dart';
import 'package:spotify_ui_clone/generated/l10n.dart';
import 'package:spotify_ui_clone/models/item_model_album_view.dart';

class AlbumView extends StatelessWidget {
  final ImageProvider image;
  final String label;
  final ItemModelAlbumView itemModelAlbumView;

  const AlbumView({
    super.key,
    required this.image,
    required this.label,
    required this.itemModelAlbumView,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AlbumViewCubit>()..getItemModelAlbumView(),
      child: BlocBuilder<AlbumViewCubit, AlbumViewState>(
        builder: (context, state) {
          return Scaffold(
            body: Stack(
              children: [
                Container(
                  color: AppColors.pink,
                ),
                SafeArea(
                  child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Column(
                      children: [
                        Container(
                          clipBehavior: Clip.none,
                          width: MediaQuery.of(context).size.width,
                          height: 600,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                AppColors.dark.withOpacity(0),
                                AppColors.dark.withOpacity(0),
                                AppColors.dark.withOpacity(0),
                                AppColors.dark.withOpacity(1),
                              ],
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 40),
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 40,
                                ),
                                Container(
                                  decoration: BoxDecoration(boxShadow: [
                                    BoxShadow(
                                      color: AppColors.black.withOpacity(0.5),
                                      offset: const Offset(0, 20),
                                      blurRadius: 32,
                                      spreadRadius: 16,
                                    )
                                  ]),
                                  child: Image(
                                    image: image,
                                    width:
                                        MediaQuery.of(context).size.width - 150,
                                    height:
                                        MediaQuery.of(context).size.width - 150,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(16),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        itemModelAlbumView.content.toString(),
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelSmall,
                                      ),
                                      const SizedBox(
                                        height: 8,
                                      ),
                                      Row(
                                        children: [
                                          Image(
                                            image: Assets.logo.image().image,
                                            width: 52,
                                            height: 52,
                                          ),
                                          Text(
                                            S.of(context).spotify,
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 16,
                                      ),
                                      Text(
                                        S.of(context).likes,
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelSmall,
                                      ),
                                      const SizedBox(
                                        height: 8,
                                      ),
                                      Stack(
                                        clipBehavior: Clip.none,
                                        children: [
                                          const Row(
                                            children: [
                                              Icon(Icons.favorite),
                                              SizedBox(
                                                width: 14,
                                              ),
                                              Icon(Icons.more_horiz),
                                            ],
                                          ),
                                          Positioned(
                                            right: 0,
                                            bottom: 0,
                                            child: Container(
                                              width: 64,
                                              height: 64,
                                              alignment: Alignment.center,
                                              decoration: const BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: AppColors.green0,
                                              ),
                                              child: const Icon(
                                                Icons.play_arrow,
                                                size: 40,
                                              ),
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          color: AppColors.dark,
                          height: 400,
                        )
                      ],
                    ),
                  ),
                ),
                SafeArea(
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.keyboard_arrow_left,
                          size: 40,
                        ),
                      ),
                      const Spacer(),
                      Text(
                        label,
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                      const Spacer(
                        flex: 2,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
