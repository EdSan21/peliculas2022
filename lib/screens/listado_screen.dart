import 'package:flutter/material.dart';

class List extends StatelessWidget {
  const List({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Listado de Mascotas Registradas"),
      ),
      body: Container(
          child: ListView(
        children: <Widget>[
          ListTile(
            title: Text("Pet 1"),
          ),
          ListTile(
            title: Text("Pet 2"),
          ),
          ListTile(
            title: Text("Pet 3"),
          ),
        ],
      )),
    );
  }
}
