import 'package:flutter/material.dart';
import 'package:learning_flutter/state/app_controller.dart';

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
