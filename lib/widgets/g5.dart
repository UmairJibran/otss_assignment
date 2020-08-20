import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'grid_template.dart';

class ContainersOffloadedWaitingForEmptyReturn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridTemplate(
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset("lib/assets/g5p1.PNG"),
          SizedBox(height: 10),
          AutoSizeText(
            "Containers Offloaded waiting for Empty Return",
            style: TextStyle(
              color: Colors.teal[600],
            ),
            maxLines: 1,
            maxFontSize: 20,
            minFontSize: 6,
          ),
          SizedBox(height: 5),
          Text(
            "29",
            style: TextStyle(
              fontSize: 20,
              color: Colors.teal[600],
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
