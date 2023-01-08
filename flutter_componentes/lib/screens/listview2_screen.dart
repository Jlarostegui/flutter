import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
  final opciones = const ['entrada', 'salida', 'descanso', 'vacaciones'];

  const ListView2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.indigo,
        title: const Text('List view tipo 2'),
      ),
      body: ListView.separated(
        itemCount: opciones.length,
        itemBuilder: (context, index) => ListTile(
          title: Text(
            opciones[index],
          ),
          trailing: const Icon(
            Icons.arrow_forward_ios,
            color: Colors.indigo,
          ),
          onTap: () {
            final opcion = opciones[index];
            print(opcion);
          },
        ),
        separatorBuilder: (_, __) => const Divider(),
      ),
    );
  }
}
