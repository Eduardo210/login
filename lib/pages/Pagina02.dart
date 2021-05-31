import 'package:flutter/material.dart';

class Pagina02 extends StatelessWidget {
  final opciones = ['Archivos', 'Imágenes', 'Contactos', 'Perfil', 'Pagos'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Menú"),
      ),
      body: ListView(children: _crearMenu()),
    );
  }

  List<Widget> _crearMenu() {
    return opciones
        .map((item) => Column(
              children: [
                ListTile(
                  title: Text(item + ':'),
                  leading: Icon(Icons.menu),
                  trailing: Icon(Icons.keyboard_arrow_right),
                  onTap: () {},
                ),
                Divider()
              ],
            ))
        .toList();
  }
}
