import 'package:flutter/material.dart';
import 'package:flutter_assignment/ui/register_screen.dart';

class LoginForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginFormState();
  }
}

class LoginFormState extends State<LoginForm> {
  final useridController = TextEditingController();
  final passwordController = TextEditingController();
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        body: Form(
          child: ListView(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 10.0),
                child: Image.asset(
                  "resources/statice.jpg",
                  height: 150,
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 20.0, right: 20.0),
                child: Column(
                  children: <Widget>[
                    TextField(
                      controller: useridController,
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.account_circle),
                          labelText: "User ID",
                          labelStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          )),
                    ),
                    SizedBox(height: 5.0),
                    TextField(
                      controller: passwordController,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock),
                        labelText: "Password",
                        labelStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                      ),
                      obscureText: true,
                    ),
                    SizedBox(height: 6.50),
                    ButtonTheme(
                      minWidth: 350,
                      child: RaisedButton(
                          child: Text("LOGIN"),
                          onPressed: () {
                            if (useridController.text.isEmpty ||
                                passwordController.text.isEmpty) {
                              final snackBar = SnackBar(
                                content: Text("กรุณาระบุ user or password"),
                              );
                              _scaffoldKey.currentState.showSnackBar(snackBar);
                            } else if (useridController != "admin" &&
                                passwordController != "admin") {
                              final snackBar = SnackBar(
                                content: Text("user or password ไม่ถูกต้อง"),
                              );
                              _scaffoldKey.currentState.showSnackBar(snackBar);
                            }
                          }),
                    ),
                    FlatButton(
                      padding: EdgeInsets.only(left: 170.0),
                      child: Text(
                        "Register New Account",
                        style: TextStyle(
                          color: Colors.green,
                        ),
                      ),
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => RegisterForm()),
                        );
                      },
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
