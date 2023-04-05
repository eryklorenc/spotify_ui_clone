import 'package:flutter/material.dart';
import 'package:spotify_ui_clone/widgets/album_card.dart';
import 'package:spotify_ui_clone/widgets/song_card.dart';

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
                         const  Row(
                            children:  [
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
                  const  SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      physics:  BouncingScrollPhysics(),
                      padding:  EdgeInsets.all(20),
                      child: Row(
                        children:  [
                          AlbumCard(
                            label: 'Best Mode',
                            image: AssetImage('assets/album3.jpg'),
                          ),
                          SizedBox(
                            width: 14,
                          ),
                          AlbumCard(
                            label: 'Relax Mode',
                            image: AssetImage('assets/album1.jpg'),
                          ),
                          SizedBox(
                            width: 14,
                          ),
                          AlbumCard(
                            label: 'Best Songs - Global',
                            image: AssetImage('assets/album2.jpg'),
                          ),
                          SizedBox(
                            width: 14,
                          ),
                          AlbumCard(
                            label: 'Rap Mode',
                            image: AssetImage('assets/album4.jpg'),
                          ),
                          SizedBox(
                            width: 14,
                          ),
                          AlbumCard(
                            label: 'Gaming Mode',
                            image: AssetImage('assets/album5.jpg'),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 22,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Good evening',
                            style: Theme.of(context).textTheme.headlineSmall,
                          ),
                          const SizedBox(
                            height: 14,
                          ),
                        const  Row(
                            children:  [
                              RowAlbumCard(
                                label: 'TOP 50 - Global',
                                image: AssetImage('assets/top50.jpg'),
                              ),
                              SizedBox(
                                width: 14,
                              ),
                              RowAlbumCard(
                                label: 'Pop Remix',
                                image: AssetImage('assets/album6.jpg'),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 14,
                          ),
                      const    Row(
                            children:  [
                              RowAlbumCard(
                                label: 'TOP 50 - USA',
                                image: AssetImage('assets/album13.jpg'),
                              ),
                              SizedBox(
                                width: 14,
                              ),
                              RowAlbumCard(
                                label: 'Workout',
                                image: AssetImage('assets/album12.jpg'),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 14,
                          ),
                        const  Row(
                            children:  [
                              RowAlbumCard(
                                label: 'Best of NF',
                                image: AssetImage('assets/album9.jpg'),
                              ),
                              SizedBox(
                                width: 14,
                              ),
                              RowAlbumCard(
                                label: 'Beats to Study',
                                image: AssetImage('assets/album10.jpg'),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            'Based on your recent listening',
                            style: Theme.of(context).textTheme.headlineSmall,
                          ),
                        ),
                      const  SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          physics:  BouncingScrollPhysics(),
                          padding:  EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            children:  [
                              SongCard(
                                image: AssetImage('assets/album12.jpg'),
                              ),
                              SizedBox(
                                width: 16,
                              ),
                              SongCard(
                                image: AssetImage('assets/album10.jpg'),
                              ),
                              SizedBox(
                                width: 16,
                              ),
                              SongCard(
                                image: AssetImage('assets/album2.jpg'),
                              ),
                              SizedBox(
                                width: 16,
                              ),
                              SongCard(
                                image: AssetImage('assets/album4.jpg'),
                              ),
                              SizedBox(
                                width: 16,
                              ),
                              SongCard(
                                image: AssetImage('assets/album1.jpg'),
                              ),
                              SizedBox(
                                width: 16,
                              ),
                              SongCard(
                                image: AssetImage('assets/album6.jpg'),
                              ),
                              SizedBox(
                                width: 16,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            'Recommended radio',
                            style: Theme.of(context).textTheme.headlineSmall,
                          ),
                        ),
                        const SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          physics:  BouncingScrollPhysics(),
                          padding:  EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            children:  [
                              SongCard(
                                image: AssetImage('assets/album13.jpg'),
                              ),
                              SizedBox(
                                width: 16,
                              ),
                              SongCard(
                                image: AssetImage('assets/album3.jpg'),
                              ),
                              SizedBox(
                                width: 16,
                              ),
                              SongCard(
                                image: AssetImage('assets/album2.jpg'),
                              ),
                              SizedBox(
                                width: 16,
                              ),
                              SongCard(
                                image: AssetImage('assets/album10.jpg'),
                              ),
                              SizedBox(
                                width: 16,
                              ),
                              SongCard(
                                image: AssetImage('assets/album9.jpg'),
                              ),
                              SizedBox(
                                width: 16,
                              ),
                              SongCard(
                                image: AssetImage('assets/album6.jpg'),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class RowAlbumCard extends StatelessWidget {
  final AssetImage image;
  final String label;
  const RowAlbumCard({
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
