import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify_ui_clone/app/core/enums.dart';
import 'package:spotify_ui_clone/app/core/injection_container.dart';
import 'package:spotify_ui_clone/views/home/album_view/cubit/album_view_cubit.dart';
import 'package:spotify_ui_clone/widgets/good_evening.dart';
import 'package:spotify_ui_clone/widgets/recent_listening.dart';
import 'package:spotify_ui_clone/widgets/recently_played_card.dart';
import 'package:spotify_ui_clone/widgets/recommended_radio.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeView();
}

class _HomeView extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topLeft,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * .5,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.white.withOpacity(0.5),
                  Colors.white.withOpacity(0.1),
                  Colors.black.withOpacity(0)
                ],
              ),
            ),
          ),
          SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.white.withOpacity(0),
                    Colors.black.withOpacity(1)
                  ],
                ),
              ),
              child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 40,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Recently Played',
                              style: Theme.of(context).textTheme.headlineSmall),
                           Row(
                            children: const [
                              Icon(Icons.history),
                              SizedBox(
                                width: 20,
                              ),
                              Icon(Icons.settings),
                            ],
                          )
                        ],
                      ),
                    ),
                    BlocProvider(
                      create: (context) => getIt<AlbumViewCubit>()
                        ..getItemModelAlbumView(),
                      child: BlocConsumer<AlbumViewCubit, AlbumViewState>(
                        listener: (context, state) {
                        if (state.status == Status.error) {
                          final errorMessage =
                              state.errorMessage ?? 'Unkown error';
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(errorMessage),
                              backgroundColor: Colors.red,
                            ),
                          );
                        }
                      },
                        builder: (context, state) {
                          final itemModelAlbumView = state.model;

                          return Column(
                            children: [
                              if (itemModelAlbumView != null)
                                RecentlyPlayedCard(
                                  itemModelAlbumView: itemModelAlbumView,
                                ),
                            ],
                          );
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 22,
                    ),
                    const GoodEvening(),
                    const RecentListening(),
                    const SizedBox(
                      width: 16,
                    ),
                    const RecommendedRadio(),
                    const SizedBox(
                      width: 16,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
