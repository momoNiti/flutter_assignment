import 'package:flutter/material.dart';
import 'package:flutter_assignment/ui/loglin_screen.dart';

class RegisterForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return RegisterFormState();
  }
}

class RegisterFormState extends State<RegisterForm> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final passwordCheckController = TextEditingController();
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text("REGISTER"),
      ),
      body: Form(
        child: ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 20.0, right: 20.0),
              child: Column(
                children: <Widget>[
                  TextField(
                    controller: emailController,
                    style: TextStyle(color: Colors.blue),
                    decoration: InputDecoration(
                        hintText: "email",
                        // labelText: "email",
                        prefixIcon: Icon(
                          Icons.email,
                          color: Colors.blue,
                        ),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue))),
                  ),
                  SizedBox(height: 5.0),
                  TextField(
                    controller: passwordController,
                    style: TextStyle(color: Colors.blue),
                    decoration: InputDecoration(
                        hintText: "password",
                        // labelText: "password",
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Colors.blue,
                        ),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue))),
                    obscureText: true,
                  ),
                  SizedBox(height: 5.0),
                  TextField(
                    controller: passwordCheckController,
                    style: TextStyle(color: Colors.blue),
                    decoration: InputDecoration(
                        hintText: "password",
                        // labelText: "password",
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Colors.blue,
                        ),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue))),
                    obscureText: true,
                  ),
                  SizedBox(height: 6.50),
                  ButtonTheme(
                    minWidth: 350,
                    child: RaisedButton(
                        child: Text(
                          "CONTINUE",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        onPressed: () {
                          if (emailController.text.isEmpty ||
                              passwordController.text.isEmpty || passwordCheckController.text.isEmpty) {
                            final snackBar = SnackBar(
                              content: Text("กรุณาระบุข้อมูลให้ครบถ้วน"),
                            );
                            _scaffoldKey.currentState.showSnackBar(snackBar);
                          } else if (emailController.text == "admin") {
                            final snackBar = SnackBar(
                              content: Text("user นี้มีอยู่ในระบบแล้ว"),
                            );
                            _scaffoldKey.currentState.showSnackBar(snackBar);
                          }
                          else{
                            Navigator.pop(
                              context,
                              MaterialPageRoute(builder: (context) => LoginForm()),
                            );
                          }
                        }),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
