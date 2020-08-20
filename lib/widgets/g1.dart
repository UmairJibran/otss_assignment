import 'package:flutter/material.dart';
import 'grid_template.dart';

class ContainersOnShip extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridTemplate(
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset("lib/assets/g1p1.PNG"),
          SizedBox(height: 10),
          Text(
            "Containers on Ship",
            style: TextStyle(
              fontSize: 12,
              color: Colors.teal[600],
            ),
          ),
          SizedBox(height: 5),
          Text(
            "127",
            style: TextStyle(
              fontSize: 20,
              color: Colors.teal[600],
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 5),
          Text(
            "3268 Tons",
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
