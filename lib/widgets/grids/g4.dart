import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../grid_template.dart';

class ContainersArrivedAndWaitingForOffloading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridTemplate(
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(
            "lib/assets/g4p1.svg",
            height: 50,
            color: Colors.teal[600],
          ),
          SizedBox(height: 10),
          AutoSizeText(
            "Containers Arrived at FF waiting for Offloading",
            style: TextStyle(
              color: Colors.teal[600],
            ),
            maxLines: 1,
            maxFontSize: 20,
            minFontSize: 6,
          ),
          SizedBox(height: 5),
          Text(
            "20",
            style: TextStyle(
              fontSize: 20,
              color: Colors.teal[600],
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 5),
          Text(
            "1285 Tons",
            style: TextStyle(
              fontSize: 12,
              color: Colors.teal[600],
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
