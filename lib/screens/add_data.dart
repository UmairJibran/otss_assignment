import 'package:flutter/material.dart';

class AddNewData extends StatelessWidget {
  static const String route = "/addData";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Data"),
        centerTitle: true,
      ),
      body: Center(
        child: Text("Add"),
      ),
    );
  }
}
