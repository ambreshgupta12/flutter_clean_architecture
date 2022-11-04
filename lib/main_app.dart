import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/presentation/features/movies/view/movie_screen.dart';
class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MovieScreen(),
    );
  }
}
