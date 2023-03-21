import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:life_expectatation_app/hesap.dart';
import 'package:life_expectatation_app/user_data.dart';

class ResulPage extends StatelessWidget {
  final UserData _userData;
  ResulPage(this._userData);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Result Page')),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 8,
              child: Center(
                  child: Text(
                Calculating(_userData).hesaplama().toString(),
                style: TextStyle(fontSize: 20),
              )),
            ),
            Expanded(
              flex: 1,
              child: TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Go Back!',
                    style: TextStyle(color: Colors.black),
                  ),
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.white,
                  )),
            ),
          ]),
    );
  }
}
