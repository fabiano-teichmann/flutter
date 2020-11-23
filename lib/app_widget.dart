import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  final String title;

  const AppWidget({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        child: Center(
            child: Text(
          "Testando",
          style: TextStyle(color: Colors.blue[300], fontSize: 40.0),
        )),
      ),
      theme: ThemeData(primaryColor: Colors.orange),
    );
  }
}
