import 'package:flutter/material.dart';
import 'package:flutter_componentes/router/app_routes.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      // home: const ListView2Screen(),
      initialRoute: AppRoputes.initialRoute,
      routes: AppRoputes.getAppRoutes(),
      onGenerateRoute: AppRoputes.onGenerateRoute,
      theme: ThemeData.light().copyWith(
        primaryColor: Colors.indigo,
        appBarTheme: const AppBarTheme( color: Colors.indigo)
      ),
    );
  }
}
