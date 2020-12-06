import 'package:flutter/material.dart';
import 'package:learning_flutter/login_page.dart';
import 'package:learning_flutter/state/app_controller.dart';
//import 'package:learning_flutter/state/home_page.dart';

class AppWidget extends StatelessWidget {
  // final String title;
  //
  // const AppWidget({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (context, child) {
        return MaterialApp(
          home: LoginPage(),    
        );
      },
    );
  }
}
