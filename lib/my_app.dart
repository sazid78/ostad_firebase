import 'package:flutter/material.dart';
import 'package:ostad_firebase/match_list_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MatchListScreen(),
    );
  }
}
