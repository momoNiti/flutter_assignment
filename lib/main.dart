import 'package:flutter/material.dart';
import 'package:flutter_assignment/ui/loglin_screen.dart';

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
      initialRoute: "/",
      routes: {
        "/" :(context) => LoginForm(),
      },
    );
  }
}
// class MyHomePage extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Hello World"),
//       ),
//       body: Text("BODY"),
//     );
//   }

// }
