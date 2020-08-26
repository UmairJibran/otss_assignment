import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:otss_assignment/data/amount.dart';

class G3G2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.15,
      child: Column(
        children: [
          SvgPicture.asset(
            "lib/assets/g3p2.svg",
            height: 50,
            color: Colors.teal[600],
          ),
          SizedBox(height: 10),
          AutoSizeText(
            "Containers on Road",
            style: TextStyle(
              color: Colors.teal[600],
            ),
            minFontSize: 8.0,
            maxFontSize: 10.0,
          ),
          SizedBox(height: 5),
          // AutoSizeText(
          //   "20",
          //   style: TextStyle(
          //     fontSize: 20,
          //     color: Colors.teal[600],
          //     fontWeight: FontWeight.bold,
          //   ),
          // ),
          SizedBox(height: 5),
          AutoSizeText(
            '${amount["cor"]} Tons',
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
