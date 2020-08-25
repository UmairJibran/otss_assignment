import 'package:flutter/material.dart';
import 'package:otss_assignment/screens/add_data.dart';

import 'screens/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Home(),
      ),
      routes: {
        AddNewData.route: (ctx) => AddNewData(),
      },
    );
  }
}
