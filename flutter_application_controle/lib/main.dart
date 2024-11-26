import 'package:flutter/material.dart';
import 'package:flutter_application_controle/screens/home.page.dart';
import 'package:flutter_application_controle/screens/login.page.dart';
import 'package:flutter_application_controle/screens/register.page.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:
        ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.purple),
        useMaterial3: true),
      title: "YAMANI flutter App",
     // home: HomePage(),
      initialRoute: '/login',
      routes: {
        '/login':(context)=>LoginPage(),
        '/register':(context)=>RegisterPage(),
        '/home':(context)=>HomePage(),

      },
    );

  }
  
}