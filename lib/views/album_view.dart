import 'package:flutter/material.dart';

class AlbumView extends StatefulWidget {
  final ImageProvider image;

  const AlbumView({super.key, required this.image});

  @override
  State<AlbumView> createState() => _AlbumViewState();
}

class _AlbumViewState extends State<AlbumView> {
  @override
  Widget build(BuildContext context) {
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
                              image: widget.image,
                              width: MediaQuery.of(context).size.width - 150,
                              height: MediaQuery.of(context).size.width - 150,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Et exaltabitur cor ejus cicatricibus. Sunt qui testimonium pugnavit et possit vivere',
                                  style: Theme.of(context).textTheme.labelSmall,
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Row(
                                  children: const [
                                    Image(
                                      image: AssetImage('assets/logo.png'),
                                      width: 52,
                                      height: 52,
                                    ),
                                    Text('Spotify'),
                                  ],
                                ),
                                const SizedBox(
                                  height: 16,
                                ),
                                Text(
                                  '2,768,123 likes 5h 3m',
                                  style: Theme.of(context).textTheme.labelSmall,
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    Row(
                                      children: const [
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
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.arrow_left,
                        size: 30,
                      )),
                  const SizedBox(
                    width: 90,
                  ),
                  Text(
                    'Best Mode',
                    style: Theme.of(context).textTheme.headlineSmall,
                  )
                ],
              ),
            ),
          )))
        ],
      ),
    );
  }
}
