import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class G3G1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.15,
      child: Column(
        children: [
          Image.asset("lib/assets/g3p1.PNG"),
          SizedBox(height: 10),
          AutoSizeText(
            "De-Stuff at Warehouse",
            style: TextStyle(
              fontSize: 12,
              color: Colors.teal[600],
            ),
          ),
          SizedBox(height: 5),
          AutoSizeText(
            "3145 Tons",
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
