import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(Login());

class Login extends StatelessWidget {
  const Login({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
      home: Center(
        child: Interfaz(),
      )
    );
  }
}


class Interfaz extends StatefulWidget {
  const Interfaz({Key key}) : super(key: key);

  @override
  _InterfazState createState() => _InterfazState();
}

class _InterfazState extends State<Interfaz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('Inicio de Sesion'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: Image(image:  NetworkImage('https://i.ytimg.com/vi/2eXwhKg06LQ/maxresdefault.jpg'),),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Ingresa el Usuario',
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: TextField(
              obscureText:  true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: '************',
              ),
            ),
          ),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: RaisedButton(
              child: Text('Entrar'),
              onPressed: () =>{},
            ),
          ),
        ],
      ),
    );
  }
}


