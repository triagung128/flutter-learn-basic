import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';
import 'package:learn_flutter/studi_kasus/covid19_summary_app/models/covid_data.dart';
import 'package:learn_flutter/studi_kasus/covid19_summary_app/widgets/summary_card.dart';

class SummaryPage extends StatefulWidget {
  const SummaryPage({Key? key}) : super(key: key);

  @override
  State<SummaryPage> createState() => _SummaryPageState();
}

class _SummaryPageState extends State<SummaryPage> {
  late CovidData _data;

  Future getData() async {
    try {
      var response = await http.get(
        Uri.parse(
          "https://covid19.mathdro.id/api/countries/ID",
        ),
      );
      debugPrint(response.toString());

      Map<String, dynamic> responseBody =
          json.decode(response.body) as Map<String, dynamic>;
      _data = CovidData.fromJson(responseBody);
    } catch (error) {
      debugPrint("Terjadi Kesalahan: $error");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Covid 19 Summary"),
      ),
      body: FutureBuilder(
          future: getData(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: Text("LOADING..."),
              );
            } else {
              return Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    SummaryCard(
                      title: "CONFIRMED",
                      value: _data.confirmed.value,
                      color: Colors.amber[600],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SummaryCard(
                      title: "DEATHS",
                      value: _data.deaths.value,
                      color: Colors.red,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      "Last Updated :",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      DateFormat("d MMMM yyyy").format(_data.lastUpdate),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      DateFormat.Hm().format(_data.lastUpdate),
                    ),
                  ],
                ),
              );
            }
          }),
    );
  }
}
