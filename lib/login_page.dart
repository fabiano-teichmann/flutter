import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = "";
  String password = "";

  Widget _body() {
    return SingleChildScrollView(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 80,
              height: 80,
              child: Image.asset('assets/images/cadeado.png'),
            ),
            SizedBox(
              height: 30,
            ),
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
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            // height: MediaQuery.of(context).size.height,
            child: Image.asset('assets/images/background.jpg', fit: BoxFit.cover,),
          ),
          Container(color: Colors.black.withOpacity(0.3),),
          _body(),
        ],
      ),
    );
  }
}
