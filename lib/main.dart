import 'package:flutter/material.dart';
import 'package:sun_t_t/views/home/home_view.dart';
import 'package:sun_t_t/widgets/navigation_bar/navigation_bar.dart';
import 'package:sun_t_t/widgets/places_list.dart';
import 'package:sun_t_t/widgets/welcome.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

// ...

Future<void> main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sun Travels and Tours',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeView(),
    );
  }
}


