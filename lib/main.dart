import 'package:flutter/material.dart';
import './belajar_sliver_widget/belajar_sliver_widget.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BelajarSliverWidget(),
    );
  }
}
