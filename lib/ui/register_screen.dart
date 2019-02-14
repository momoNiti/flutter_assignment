import 'package:flutter/material.dart';

class RegisterForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return RegisterFormState();
  }
}

class RegisterFormState extends State<RegisterForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    // controller: useridController,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.email,
                        color: Colors.blue,
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.blue
                        )
                      )
                    ),
                  ),
                  SizedBox(height: 5.0),
                  TextField(
                    // controller: passwordController,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Colors.blue,
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.blue
                        )
                      )
                    ),
                    obscureText: true,
                  ),
                  SizedBox(height: 5.0),
                  TextField(
                    // controller: passwordController,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Colors.blue,
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.blue
                        )
                      )
                    ),
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
                          // if (useridController.text.isEmpty ||
                          //     passwordController.text.isEmpty) {
                          //   final snackBar = SnackBar(
                          //     content: Text("กรุณาระบุ user or password"),
                          //   );
                          //   _scaffoldKey.currentState.showSnackBar(snackBar);
                          // } else if (useridController != "admin" &&
                          //     passwordController != "admin") {
                          //   final snackBar = SnackBar(
                          //     content: Text("user or password ไม่ถูกต้อง"),
                          //   );
                          //   _scaffoldKey.currentState.showSnackBar(snackBar);
                          // }
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
