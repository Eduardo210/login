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
        ));
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
        title: Text('Inicio de Sesión'),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: Image(
              image: NetworkImage(
                  'https://company.intertraffic.com/Image/RenderImage?lang=en&docid=64911&width=200&height=80&highres=1&color=ebebeb'),
            ),
          ),
          _crearEmail(),
          Divider(),
          _crearPassword(),
          Divider(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.blueAccent),
              ),
              child: Text(
                'Entrar',
                style: TextStyle(fontSize: 20),
              ),
              onPressed: () => {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Pagina02()))
              },
            ),
          ),
          Center(
              child: TextButton(
                  style: TextButton.styleFrom(primary: Colors.indigo),
                  onPressed: () {},
                  child: Text('¿Olvidaste tu contraseña?'))),
          Center(
              child: TextButton(
            style: TextButton.styleFrom(
              primary: Colors.black,
            ),
            onPressed: () {},
            child: Text('Aviso de Privacidad'),
          ))
        ],
      ),
    );
  }

  /*Widget _crearLogo(){
    return Image.asset(AssetImage(''));
  }*/

  Widget _crearEmail() {
    return TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
            hintText: 'correo@dominio.com',
            labelText: 'E-mail',
            suffixIcon: Icon(Icons.alternate_email),
            icon: Icon(Icons.email_outlined)));
  }

  Widget _crearPassword() {
    return TextField(
        obscureText: true,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
            hintText: '**********',
            labelText: 'Contraseña',
            suffixIcon: Icon(Icons.password_rounded),
            icon: Icon(Icons.lock_outline)));
  }
}
