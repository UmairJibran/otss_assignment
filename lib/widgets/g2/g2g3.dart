import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class G2G3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.15,
      child: Column(
        children: [
          Image.asset("lib/assets/g2p3.PNG"),
          SizedBox(height: 10),
          AutoSizeText(
            "Under Examination",
            style: TextStyle(
              fontSize: 12,
              color: Colors.teal[600],
            ),
          ),
          SizedBox(height: 5),
          AutoSizeText(
            "25",
            style: TextStyle(
              fontSize: 20,
              color: Colors.teal[600],
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 5),
          AutoSizeText(
            "500 Tons",
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
