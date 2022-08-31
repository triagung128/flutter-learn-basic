import 'package:flutter/material.dart';
import './belajar_animation/materi_fade_transition/materi_fade_transition.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MateriFadeTransition(),
    );
  }
}
