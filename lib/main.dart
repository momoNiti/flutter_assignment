import 'package:flutter/material.dart';
import 'package:flutter_assignment/ui/home_screen.dart';
import 'package:flutter_assignment/ui/loglin_screen.dart';
import 'package:flutter_assignment/ui/register_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Assignment',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: MyHomePage(),
      initialRoute: "/register",
      routes: {
        "/" :(context) => LoginForm(),
        "/register" :(context) => RegisterForm(),
        "/home" :(context) => HomePage(),
      },
    );
  }
}
