import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            height: 50,
          ),
          Center(
            child: Text(
              'Search',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(32.0),
            child: TextField(
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.black,
                    size: 28,
                  ),
                  filled: true,
                  border: InputBorder.none,
                  hintText: 'Find your music',
                  hintStyle: TextStyle(color: Colors.grey)),
            ),
          ),
          Expanded(
            child: GridView.count(
              primary: false,
              padding: const EdgeInsets.all(12),
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    padding: const EdgeInsets.all(12),
                    color: Colors.deepPurple,
                    child: const Text('Pop music',
                        style: TextStyle(color: Colors.white, fontSize: 28)),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    padding: const EdgeInsets.all(12),
                    color: Colors.deepOrangeAccent,
                    child: const Text('Rock',
                        style: TextStyle(color: Colors.white, fontSize: 28)),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    padding: const EdgeInsets.all(12),
                    color: Colors.deepPurpleAccent,
                    child: const Text('Rap',
                        style: TextStyle(color: Colors.white, fontSize: 28)),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    padding: const EdgeInsets.all(12),
                    color: Colors.blueAccent,
                    child: const Text('Jazz',
                        style: TextStyle(color: Colors.white, fontSize: 28)),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    padding: const EdgeInsets.all(12),
                    color: Colors.green,
                    child: const Text('Reggae',
                        style: TextStyle(color: Colors.white, fontSize: 28)),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    padding: const EdgeInsets.all(12),
                    color: Colors.deepOrange,
                    child: const Text('House',
                        style: TextStyle(color: Colors.white, fontSize: 28)),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
