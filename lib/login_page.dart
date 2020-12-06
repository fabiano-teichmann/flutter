import 'package:flutter/material.dart';
import 'package:learning_flutter/state/home_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = "";
  String password = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                onChanged: (text) {
                  email = text;
                },
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    labelText: 'Email', border: OutlineInputBorder()),
              ),
              SizedBox(height: 20),
              TextField(
                obscureText: true,
                onChanged: (text) {
                  password = text;
                },
                decoration: InputDecoration(
                    labelText: 'Senha', border: OutlineInputBorder()),
              ),
              SizedBox(height: 20),
              RaisedButton(
                onPressed: () {
                  if (email == 'fabiano@gmail.com' && password == 'carai') {
                    //Navigator.of(context).pushReplacementNamed without return
                    Navigator.of(context).pushNamed('/home');
                  } else {
                    print('Errou !!!');
                  }
                },
                child: Text('Entrar'),
                color: Colors.blue[200],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
