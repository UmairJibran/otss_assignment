import 'package:flutter/material.dart';

class GridTemplate extends StatelessWidget {
  final Widget gridItem;
  GridTemplate(this.gridItem);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(3),
        boxShadow: [
          const BoxShadow(
            blurRadius: 7,
            spreadRadius: 3,
            color: Colors.black12,
          ),
        ],
        color: Colors.white,
      ),
      child: gridItem,
    );
  }
}
