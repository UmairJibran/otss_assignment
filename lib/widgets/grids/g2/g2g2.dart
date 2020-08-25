import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class G2G2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.15,
      child: Column(
        children: [
          SvgPicture.asset(
            "lib/assets/g2p2.svg",
            height: 30,
            color: Colors.teal[600],
          ),
          SizedBox(height: 10),
          AutoSizeText(
            "Ready for Logistics",
            style: TextStyle(
              color: Colors.teal[600],
            ),
            minFontSize: 8.0,
            maxFontSize: 10.0,
          ),
          SizedBox(height: 5),
          AutoSizeText(
            "87",
            style: TextStyle(
              fontSize: 20,
              color: Colors.teal[600],
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 5),
          AutoSizeText(
            "2304 Tons",
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
