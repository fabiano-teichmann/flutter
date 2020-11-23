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
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              setState(() {
                count++;
              });
            },
            child: Icon(Icons.add),
          ),
          
          body: Center(
              child: Text(
                'Contando: $count',
                style: TextStyle(fontSize: 30.0, color: Colors.blue[300]),
              ),
            ),
                      
          ),
    );
  }
}
