import 'package:flutter/material.dart';
import 'package:learning_flutter/state/app_controller.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  var count = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
              child: Text(
            'State Flutter',
            style: TextStyle(fontSize: 40.0),
          )),
          actions: [CustomSwith()],
        ),
        body: Center(child: CustomSwith()),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              count++;
              print(count);
            });
          },
          child: Icon(Icons.add),
        ),
      ),
      theme: ThemeData(
        primarySwatch: Colors.red,
        brightness: AppController.instance.isDartTheme
            ? Brightness.dark
            : Brightness.light,
      ),
    );
  }
}

class CustomSwith extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Switch(
      value: AppController.instance.isDartTheme,
      onChanged: (value) {
        AppController.instance.changeTheme();
      },
    );
  }
}
