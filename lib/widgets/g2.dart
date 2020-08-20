import 'package:flutter/material.dart';
import 'package:otss_assignment/widgets/grid_template.dart';

import 'g2/g2g1.dart';
import 'g2/g2g2.dart';
import 'g2/g2g3.dart';

class ContainersAtPort extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridTemplate(Column(
      children: [
        Container(
          color: Colors.green[900],
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.all(2),
          child: Center(
            child: Text(
              "Containers at Port",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            G2G1(),
            G2G2(),
            G2G3(),
          ],
        )
      ],
    ));
  }
}
