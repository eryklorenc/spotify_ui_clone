import 'package:flutter/material.dart';
import 'package:spotify_ui_clone/app/app.dart';
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


