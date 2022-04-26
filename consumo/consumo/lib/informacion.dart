import 'package:consumo/listaestudiantes.dart';
import 'package:flutter/material.dart';

final _estudiantes = listaEstudiantes;
// ignore: must_be_immutable
class Informacion extends StatelessWidget {
  int numero;
  Informacion(this.numero, { Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ListTile(
          title: Row(children: [ const Text("Matricula: "),Text(_estudiantes[numero].matricula)]),
          subtitle: Column(
            children: [
              Container(color: Colors.green,height: 1, width: double.infinity,),
              Row(children: [const Text("Nombre: "),Text(_estudiantes[numero].nombre),]),
              Row(children: [const Text("Carrera: "),Text(_estudiantes[numero].carrera),]),
              Row(children: [const Text("Semestre: "),Text(_estudiantes[numero].semestre),]),
              Row(children: [const Text("Telefono: "),Text(_estudiantes[numero].telefono),]),
              Row(children: [const Text("Correo: "),Text(_estudiantes[numero].correo),]),
            ],
          ),
        ),
      )
    );
  }
}