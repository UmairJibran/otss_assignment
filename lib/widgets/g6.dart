import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'grid_template.dart';

class ContainersReturnedWaitingToReach extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridTemplate(
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset("lib/assets/g6p1.PNG"),
          SizedBox(height: 10),
          AutoSizeText(
            "Containers Returned waiting to Reach",
            style: TextStyle(
              color: Colors.teal[600],
            ),
            maxLines: 1,
            maxFontSize: 20,
            minFontSize: 6,
          ),
          SizedBox(height: 5),
          Text(
            "114",
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
