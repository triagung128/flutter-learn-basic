import 'dart:async';

import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'package:avatar_glow/avatar_glow.dart';

class PackageAvatarGlow extends StatefulWidget {
  const PackageAvatarGlow({Key? key}) : super(key: key);

  @override
  State<PackageAvatarGlow> createState() => _PackageAvatarGlowState();
}

class _PackageAvatarGlowState extends State<PackageAvatarGlow> {
  late String _date;
  late String _time;

  @override
  void initState() {
    // digunakan untuk menginisialisasi date format locale
    initializeDateFormatting();

    _date = _formatDate(DateTime.now());
    _time = _formatTime(DateTime.now());

    // digunakan untuk waktu agar bisa berjalan perdetik nya
    Timer.periodic(const Duration(seconds: 1), (timer) => _getTime());

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/images/wallpaper.jpg',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Container(
            margin: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      _time,
                      style: const TextStyle(
                        fontSize: 56,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      _date,
                      style: const TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                const AvatarGlow(
                  endRadius: 60,
                  child: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    radius: 32,
                    child: Icon(
                      Icons.lock_outline_rounded,
                      size: 32,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // fungsi untuk merubah state pada jam
  void _getTime() {
    final DateTime now = DateTime.now();
    final String formattedTime = _formatTime(now);

    setState(() {
      _time = formattedTime;
    });
  }

  // untuk format jam
  String _formatTime(DateTime dateTime) {
    return DateFormat('Hm', 'id_ID').format(dateTime);
  }

  // untuk menformat tanggal
  String _formatDate(DateTime dateTime) {
    return DateFormat('EEE, d MMMM yyyy', 'id_ID').format(dateTime);
  }
}
