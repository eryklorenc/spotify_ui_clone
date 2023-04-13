import 'package:flutter/material.dart';
import 'package:spotify_ui_clone/app/auth_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:spotify_ui_clone/app/core/injection_container.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
        brightness: Brightness.dark,
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            backgroundColor: Colors.white10,
            type: BottomNavigationBarType.fixed,
            selectedLabelStyle: TextStyle(fontSize: 12),
            unselectedLabelStyle: TextStyle(fontSize: 12),
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white38),
      ),
      home: const RootPage(),
    );
  }
}
