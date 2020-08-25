import 'package:flutter/material.dart';
import 'package:otss_assignment/widgets/grid_template.dart';

import '../grids/g3/g3g1.dart';
import '../grids/g3/g3g2.dart';

class WarehouseAndRoad extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridTemplate(
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              G3G1(),
              G3G2(),
            ],
          ),
        ],
      ),
    );
  }
}
