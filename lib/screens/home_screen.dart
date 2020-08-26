import 'package:flutter/material.dart';
import '../data/grids.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 1,
        children: gridCards,
        padding: EdgeInsets.all(5),
      ),
    );
  }
}
