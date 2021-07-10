import 'package:flutter/material.dart';
import 'package:star_wars_app/routes/router.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: RaisedButton(
            child: Text("Login With Google"),
            onPressed: () {
              MyRouter.navigator.currentState.pushReplacementNamed('/home');
            },
          ),
        ),
      ),
    );
  }
}
