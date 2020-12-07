import 'package:flutter/material.dart';

class Navigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
          children: [
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              subtitle: Text('Pagina inicial'),
              onTap: (){
                Navigator.of(context).pushNamed('/home');
              },
            ),
            ListTile(
              leading: Icon(Icons.login),
              title: Text('Logout'),
              subtitle: Text('Fazendo logout'),
              onTap: (){
                Navigator.of(context).pushNamed('/');
              },
            ),
          ],
        ),
      );
  }
}