import 'dart:convert';

import 'package:android_lyrics_player/data/models/flunkey_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:android_lyrics_player/utils/constants/strings.dart';

import '../../widgets/dipslay_snackbar.dart';
import 'circular_indicator_widget.dart';
import 'linear_indicator_widget.dart';

class LinearCardWidget extends StatelessWidget {
  LinearCardWidget(
      {super.key,
      required this.title,
      required this.subTitle,
      required this.dataMap});

  final Map<String, double> dataMap;
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(title,
                      overflow: TextOverflow.ellipsis,
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                  new Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(left: 1.0),
                    child: Icon(Icons.calendar_month,
                        size: 25, color: Colors.black),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(subTitle,
                  overflow: TextOverflow.visible,
                  style:
                      TextStyle(fontSize: 18, fontWeight: FontWeight.normal)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40.0, left: 14, right: 14),
              child: LinearIndicatorWidget(dataMap: dataMap),
            )
          ],
        ),
      ),
    );
  }
}
