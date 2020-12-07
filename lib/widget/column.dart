import 'package:flutter/material.dart';
import 'package:learning_flutter/widget/swith.dart';

class CustomColumn extends StatelessWidget {
  var count;
  CustomColumn(this.count);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      //for children
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text('Contator: $count'),
        Container(height: 10,),
        CustomSwith(),
        Container(height: 20,),
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

