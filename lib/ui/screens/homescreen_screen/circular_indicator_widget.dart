import 'dart:convert';

import 'package:android_lyrics_player/data/models/flunkey_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:android_lyrics_player/utils/constants/strings.dart';
import 'package:pie_chart/pie_chart.dart';

import '../../widgets/dipslay_snackbar.dart';

class CircularIndicatorWidget extends StatelessWidget {
  CircularIndicatorWidget({super.key, required this.dataMap});

  final Map<String, double> dataMap;
  var gradientList = <List<Color>>[
    [
      Color.fromRGBO(175, 63, 62, 1.0),
      Color.fromRGBO(254, 154, 92, 1),
    ],
    [
      Color.fromRGBO(223, 250, 92, 1),
      Color.fromRGBO(129, 250, 112, 1),
    ],
    [
      Color.fromRGBO(129, 182, 205, 1),
      Color.fromRGBO(91, 253, 199, 1),
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return PieChart(
      dataMap: dataMap,
      animationDuration: Duration(milliseconds: 800),
      chartLegendSpacing: 32,
      chartRadius: MediaQuery.of(context).size.width / 3.2,
      // Pass gradient to PieChart
      gradientList: gradientList,
      emptyColorGradient: [
        Color(0xff6c5ce7),
        Colors.blue,
      ],

      initialAngleInDegree: 0,
      chartType: ChartType.ring,
      ringStrokeWidth: 18,
      centerText: "10 Total",
      legendOptions: LegendOptions(
        showLegendsInRow: true,
        legendPosition: LegendPosition.bottom,
        showLegends: true,
        legendTextStyle: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      chartValuesOptions: ChartValuesOptions(
        showChartValueBackground: false,
        showChartValues: false,
        showChartValuesInPercentage: false,
        showChartValuesOutside: false,
        decimalPlaces: 1,
      ),
      // gradientList: ---To add gradient colors---
      // emptyColorGradient: ---Empty Color gradient---
    );
  }
}
