import 'package:flutter/material.dart';
import './belajar_package/package_carousel_slider/package_carousel_slider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PackageCarouselSlider(),
    );
  }
}
