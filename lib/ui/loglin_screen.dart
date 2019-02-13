import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginFormState();
  }
}

class LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // resizeToAvoidBottomPadding: false,
        appBar: AppBar(
          title: Text("Log in"),
        ),
        body: Form(
          key: _formKey,
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
                      ),
                    ),
                    FlatButton(
                      child: Text("LOGIN"),
                      textColor: Colors.green,
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
