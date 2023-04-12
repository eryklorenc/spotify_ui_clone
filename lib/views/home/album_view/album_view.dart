import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify_ui_clone/data/remote_data_sources/album_view_remote_data_source.dart';
import 'package:spotify_ui_clone/models/item_model_album_view.dart';
import 'package:spotify_ui_clone/repositories/items_repository_album_view.dart';
import 'package:spotify_ui_clone/views/home/album_view/cubit/album_view_cubit.dart';

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
      create: (context) => AlbumViewCubit(ItemsRepositoryAlbumView(AlbumViewRemoteRetrofitDataSource(Dio())))..getItemModelAlbumView(),
      child: BlocBuilder<AlbumViewCubit, AlbumViewState>(
        builder: (context, state) {
          return Scaffold(
            body: Stack(
              children: [
                Container(
                  color: Colors.pink,
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
                                Colors.black.withOpacity(0),
                                Colors.black.withOpacity(0),
                                Colors.black.withOpacity(0),
                                Colors.black.withOpacity(1),
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
                                      color: Colors.black.withOpacity(0.5),
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
                                      const Row(
                                        children: [
                                          Image(
                                            image: AssetImage(
                                              'assets/logo.png',
                                            ),
                                            width: 52,
                                            height: 52,
                                          ),
                                          Text(
                                            'Spotify',
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 16,
                                      ),
                                      Text(
                                        '2,768,123 likes 5h 3m',
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
                                                color: Color(0xff14D860),
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
                          color: Colors.black,
                          height: 400,
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  child: SafeArea(
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 10,
                      ),
                      child: SafeArea(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            IconButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon: const Icon(
                                  Icons.arrow_left,
                                  size: 25,
                                )),
                            const SizedBox(
                              width: 60,
                            ),
                            Text(
                              label,
                              style: Theme.of(context).textTheme.headlineSmall,
                            ),
                          ],
                        ),
                      ),
                    ),
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
