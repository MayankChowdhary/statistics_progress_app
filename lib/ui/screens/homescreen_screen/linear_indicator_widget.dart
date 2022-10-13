import 'dart:convert';

import 'package:android_lyrics_player/data/models/flunkey_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:android_lyrics_player/utils/constants/strings.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:multi_circular_slider/multi_circular_slider.dart';

import '../../widgets/dipslay_snackbar.dart';

class LinearIndicatorWidget extends StatelessWidget {
  LinearIndicatorWidget({super.key, required this.dataMap});

  final Map<String, double> dataMap;

  @override
  Widget build(BuildContext context) {
    List<double> valuesX = [];
    dataMap.forEach((key, value) {
      valuesX.add(value / 10);
    });

    debugPrint("ValueAdded: " + valuesX.toString());

    Widget _summeryWidget(string) {
      return Container(child: LayoutBuilder(builder: (context, constraint) {
        return Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 8.0,
                bottom: 8.0,
                left: 30.0,
                right: 8.0,
              ),
              child: Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: string.toString().contains("P")
                      ? Color(0xFFFD1960)
                      : Color(0xFF29D3E8),
                ),
              ),
            ),
            Text(string),
          ],
        );
      }));
    }

    Widget getSummeryWidgets() {
      List<Widget> _temp = [];
      dataMap.forEach((key, value) {
        _temp.add(_summeryWidget(key));
      });
      return Row(children: _temp);
    }

    return Stack(
      children: [
        MultiCircularSlider(
          size: MediaQuery.of(context).size.width * 0.8,
          progressBarType: MultiCircularSliderType.linear,
          values: valuesX,
          colors: const [
            Color(0xFFFD1960),
            Color(0xFF29D3E8),
            Color(0xFF18C737),
            Color(0xFFFFCC05)
          ],
          showTotalPercentage: false,
          animationDuration: const Duration(milliseconds: 1000),
          animationCurve: Curves.easeInOutCirc,
          trackColor: Colors.white,
          progressBarWidth: 26.0,
          trackWidth: 26.0,
        ),
        Positioned(
          top: 100,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [getSummeryWidgets()],
          ),
        )
      ],
    );
  }
}
