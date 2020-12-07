import 'package:flutter/material.dart';

class MyListView extends StatelessWidget {
  // used for scroll page if use column error happen if overtake height screen
  var count;
  MyListView(this.count);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Text('Contator: $count'),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            Container(
              width: 50,
              height: 50,
              color: Colors.amber,
            ),
            Container(
              width: 50,
              height: 50,
              color: Colors.blue,
            ),
            Container(
              width: 50,
              height: 50,
              color: Colors.cyan,
            ),
          ],
        ),
        Text('Contator: $count'),
        Container(height: 100,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            Container(
              width: 50,
              height: 50,
              color: Colors.amber,
            ),
            
            Container(
              width: 50,
              height: 50,
              color: Colors.blue,
            ),
            Container(
              width: 50,
              height: 50,
              color: Colors.cyan,
            ),
          ],
        ),
        Text('Contator: $count'),
        Container(height: 100,),
        Text('Contator: $count'),
        Container(height: 150,),
        
        Text('Contator: $count'),
        Container(height: 10,),
        Container(height: 50,),
        Text('Contator: $count'),
        Container(height: 10,),
        Container(height: 50,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            Container(
              width: 50,
              height: 50,
              color: Colors.amber,
            ),
            Container(
              width: 50,
              height: 50,
              color: Colors.blue,
            ),
            Container(
              width: 50,
              height: 50,
              color: Colors.cyan,
            ),
          ],
        )
      ],
    );
  }
}