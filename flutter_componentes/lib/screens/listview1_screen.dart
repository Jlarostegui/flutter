import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
  final opciones = const ['entrada', 'salida', 'descanso', 'vacaciones'];

  const ListView1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('List view tipo 1'),
        ),
        body: ListView(
          children: [
            ...opciones.map(
              (elemntoOpciones) => ListTile(
                title: Text(elemntoOpciones),
                trailing: const Icon(Icons.arrow_forward_ios_sharp),
              ),
            ).toList(),  
          ],
        ));
  }
}
