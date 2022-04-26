import 'informacion.dart';
import 'listaestudiantes.dart';
import 'package:flutter/material.dart';

class Consumiendo extends StatefulWidget {
  const Consumiendo({ Key? key }) : super(key: key);

  @override
  State<Consumiendo> createState() => _ConsumiendoState();
}

class _ConsumiendoState extends State<Consumiendo> {
  final _estudiantes = listaEstudiantes;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[600],
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 50),
        child: ListView.builder(itemCount: _estudiantes.length ,itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              Navigator.push(context, MaterialPageRoute<void>(builder:( BuildContext context) => Informacion(index) ));
            },
            title: Text(_estudiantes[index].nombre),
           leading: CircleAvatar(
             child: Text(_estudiantes[index].nombre.substring(0,1)),
           ),
          );
        }),
      )
      );
  }
}
