import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:login/pages/Pagina02.dart';

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
        title: Text('Inicio de Sesion',),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: Image(image:  NetworkImage('https://company.intertraffic.com/Image/RenderImage?lang=en&docid=64911&width=200&height=80&highres=1&color=ebebeb'),),
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
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.blueAccent),
              ),
              child: Text('Entrar',style: TextStyle(fontSize: 20),),
                onPressed: ()=>{
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) =>Pagina02()
                  )
                  )
                },
            ),
          ),
        ],
      ),
    );
  }
}


