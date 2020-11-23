import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
              title: Center(
                  child: Text(
            'Meu app',
            style: TextStyle(fontSize: 40.0),
          ))),
          body: Container(
            height: 530,
            width: 500,
            color: Colors.blue[300],
            child: Align(
              alignment: Alignment.center,
              child: Container(
                height: 100,
                width: 100,
                color: Colors.amber,

              ),
            ),
          ),
                      
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              setState(() {
                count++;
              });
            },
            child: Icon(Icons.add),
          ),
          
          ),
    );
  }
}
