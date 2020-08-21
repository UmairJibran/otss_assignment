import 'package:flutter/material.dart';
import 'package:hawk_fab_menu/hawk_fab_menu.dart';
import './screens/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final String userName = "Umair Jibran";
  final List<HawkFabMenuItem> hawkFABS = [
    HawkFabMenuItem(
      label: 'Arrived at Port',
      ontap: () {},
      icon: Icon(Icons.archive),
      color: Colors.orange[600],
    ),
    HawkFabMenuItem(
      label: 'De-Stuff at Port',
      ontap: () {},
      icon: Icon(Icons.local_convenience_store),
      color: Colors.blue,
    ),
    HawkFabMenuItem(
      label: 'Dispach from Port',
      ontap: () {},
      icon: Icon(Icons.local_shipping),
      color: Colors.green,
    ),
    HawkFabMenuItem(
      label: 'Arrived at FF Location',
      ontap: () {},
      icon: Icon(
        Icons.shopping_basket,
      ),
      color: Colors.orange[300],
    ),
    HawkFabMenuItem(
      label: 'Containers Offloaded',
      ontap: () {},
      icon: Icon(Icons.file_download),
      color: Colors.teal,
    ),
    HawkFabMenuItem(
      label: 'Returned Containers',
      ontap: () {},
      icon: Icon(Icons.local_shipping),
      color: Colors.purple,
    ),
  ].reversed.toList();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
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
        body: HawkFabMenu(
          blur: 1,
          icon: AnimatedIcons.add_event,
          iconColor: Colors.white,
          fabColor: Colors.orange,
          items: hawkFABS,
          body: HomeScreen(),
        ),
      ),
    );
  }
}
