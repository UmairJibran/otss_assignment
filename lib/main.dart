import 'package:flutter/material.dart';
import './screens/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final String userName = "Umair Jibran";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
          backgroundColor: Colors.orange,
        ),
        floatingActionButtonLocation:
            FloatingActionButtonLocation.miniEndDocked,
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(
            "Dashboard( $userName )",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w400,
              fontSize: 14,
            ),
          ),
          backgroundColor: Colors.white,
          actions: [
            IconButton(
              icon: Icon(Icons.stars),
              onPressed: null,
              color: Colors.green[900],
            ),
            IconButton(
              icon: Icon(Icons.cloud_download),
              onPressed: null,
              color: Colors.green[900],
            ),
            IconButton(
              icon: Icon(Icons.cloud_upload),
              onPressed: null,
              color: Colors.green[900],
            ),
            IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: () => {},
              color: Colors.grey[700],
            )
          ],
        ),
        body: HomeScreen(),
      ),
    );
  }
}
