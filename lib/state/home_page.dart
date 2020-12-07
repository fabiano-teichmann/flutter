import 'package:flutter/material.dart';
import 'package:learning_flutter/state/app_controller.dart';
import 'package:learning_flutter/widget/list_view.dart';
import 'package:learning_flutter/widget/navigation.dart';
import 'package:learning_flutter/widget/swith.dart';

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
        drawer: Navigation(),
        appBar: AppBar(
          title: Center(
              child: Text(
            'State Flutter',
            style: TextStyle(fontSize: 40.0),
          )),
          actions: [CustomSwith()],
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Center(
              child: MyListView(count)),
        ),
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
