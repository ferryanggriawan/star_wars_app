import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:star_wars_app/apis/auth.api.dart';
import 'package:star_wars_app/models/user.model.dart';
import 'package:star_wars_app/routes/router.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  AuthApi _authApi = AuthApi();

  loginWithGoogle() async {
    UserModel user = await _authApi.loginWithGoogle();
    await saveToLocal(user.toString());
    MyRouter.navigator.currentState.pushReplacementNamed('/home');
  }

  saveToLocal(String userStr) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString('user', userStr);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          child: RaisedButton(
            child: Text("Login With Google"),
            onPressed: () {
              loginWithGoogle();
            },
          ),
        ),
      ),
    );
  }
}
