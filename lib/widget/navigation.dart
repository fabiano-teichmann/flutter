import 'package:flutter/material.dart';

class Navigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          UserAccountsDrawerHeader(
            currentAccountPicture: ClipOval(
              child: Image.network(
                  'https://avatars0.githubusercontent.com/u/29966200?s=60&v=4'),
            ),
            accountEmail: Text('Fabiano'),
            accountName: Text('fabiano@gmail.com'),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            subtitle: Text('Pagina inicial'),
            onTap: () {
              Navigator.of(context).pushNamed('/home');
            },
          ),
          ListTile(
            leading: Icon(Icons.login),
            title: Text('Logout'),
            subtitle: Text('Fazendo logout'),
            onTap: () {
              Navigator.of(context).pushNamed('/');
            },
          ),
        ],
      ),
    );
  }
}
