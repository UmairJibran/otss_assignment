import 'package:flutter/material.dart';
import 'package:hawk_fab_menu/hawk_fab_menu.dart';
import 'package:otss_assignment/data/amount.dart';
import 'package:otss_assignment/model/database_helper.dart';

import 'add_data.dart';
import 'home_screen.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final String userName = "Umair Jibran";
  bool loaded = false;
  final dbHelper = DatabaseHelper.instance;

  loadData() {
    dbHelper.retrieve().then((values) {
      values.forEach((value) {
        switch (value["type"]) {
          case "cos":
            amount["cos"] += value["amount"];
            break;
          case "wfc":
            amount["wfc"] += value["amount"];
            break;
          case "rfl":
            amount["rfl"] += value["amount"];
            break;
          case "ue":
            amount["ue"] += value["amount"];
            break;
          case "dsaw":
            amount["dsaw"] += value["amount"];
            break;
          case "cor":
            amount["cor"] += value["amount"];
            break;
          case "caff":
            amount["caff"] += value["amount"];
            break;
          case "cowf":
            amount["cowf"] += value["amount"];
            break;
          case "crw":
            amount["crw"] += value["amount"];
            break;
        }
      });
      setState(() {
        loaded = true;
      });
    });
  }

  @override
  void initState() {
    super.initState();
    setState(() {
      loadData();
    });
  }

  @override
  Widget build(BuildContext context) {
    return loaded
        ? Scaffold(
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
              items: [
                HawkFabMenuItem(
                  label: 'Add Record',
                  ontap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => AddNewData(),
                      ),
                    );
                  },
                  icon: Icon(Icons.add_shopping_cart),
                  color: Colors.orange[600],
                ),
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
              ].reversed.toList(),
              body: HomeScreen(),
            ),
          )
        : Center(child: CircularProgressIndicator());
  }
}
