import 'package:flutter/material.dart';
import 'package:learn_flutter/studi_kasus/covid19_summary_app/pages/summary_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SummaryPage(),
    );
  }
}
