import 'package:flutter/material.dart';
import 'package:otss_assignment/data/columns.dart';
import 'package:otss_assignment/model/legend.dart';

class AddNewData extends StatefulWidget {
  static const String route = "/addData";

  @override
  _AddNewDataState createState() => _AddNewDataState();
}

class _AddNewDataState extends State<AddNewData> {
  final _formKey = new GlobalKey<FormState>();
  int _amount;
  Legend _selectedItem;
  String inputValidator(value) {
    if (value.isEmpty) {
      return 'Please enter a Number';
    } else if (int.parse(value) <= 1) {
      return "Please Enter value greater than 1";
    }
    return null;
  }

  @override
  void initState() {
    super.initState();
    _selectedItem = fields[0];
    _amount = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Data"),
        centerTitle: true,
      ),
      body: Container(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              DropdownButton(
                value: _selectedItem,
                icon: Icon(Icons.arrow_downward),
                iconSize: 24,
                elevation: 16,
                onChanged: (newValue) {
                  setState(() {
                    _selectedItem = newValue;
                  });
                },
                items: fields.map<DropdownMenuItem>((field) {
                  return DropdownMenuItem(
                    value: field,
                    child: Text(field.name),
                  );
                }).toList(),
              ),
              TextFormField(
                initialValue: _amount.toString(),
                keyboardType: TextInputType.number,
                validator: (value) {
                  return inputValidator(value);
                },
                onChanged: (value) => {
                  setState(
                    () {
                      _amount = int.parse(value);
                    },
                  )
                },
              ),
              FlatButton(
                  onPressed: () {
                    if (_formKey.currentState.validate()) {
                      setState(() {
                        _formKey.currentState.reset();
                      });
                    }
                  },
                  child: Text("Add to Database"))
            ],
          ),
        ),
      ),
    );
  }
}
