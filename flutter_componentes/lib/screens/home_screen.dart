import 'package:flutter/material.dart';
import 'package:flutter_componentes/router/app_routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuOption = AppRoputes.menuOption;

    return Scaffold(
      appBar: AppBar(
        title: const Text('componentes en flutter'),
        elevation: 0,
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => ListTile(
                leading: Icon(menuOption[index].icon, color: Colors.indigo,),
                title: Text(menuOption[index].name),
                onTap: () {
                  // final route = MaterialPageRoute(
                  //     builder: (context) => const ListView1Screen());
                  // Navigator.push(context, route);
                  Navigator.pushNamed(
                      context, menuOption[index].route);
                },
              ),
          separatorBuilder: (_, __) => const Divider(),
          itemCount: menuOption.length),
    );
  }
}
