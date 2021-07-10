import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:star_wars_app/models/user.model.dart';
import 'package:star_wars_app/routes/router.dart';
import 'package:star_wars_app/widgets/app/bottom.nav.dart';

class ProfilePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  UserModel user;

  @override
  void initState() {
    super.initState();

    _getUser();
  }

  Future<void> _getUser() async {
    SharedPreferences pref = await SharedPreferences.getInstance();

    String userStr = pref.getString('user');
    Map<String, dynamic> userJson = jsonDecode(userStr);
    UserModel userModel = UserModel.fromJson(userJson);

    setState(() {
      user = userModel;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: ListView(
          children: [
            ListTile(
              title: Text("Name"),
              subtitle: Text(getText(user.name)),
            ),
            ListTile(
              title: Text("Email"),
              subtitle: Text(getText(user.email)),
            ),
            RaisedButton(
              child: Text("Logout"),
              onPressed: () async {
                final GoogleSignIn googleSignIn = new GoogleSignIn();
                SharedPreferences pref = await SharedPreferences.getInstance();
                pref.remove('user');
                await googleSignIn.signOut();
                MyRouter.navigator.currentState.pushReplacementNamed('/login');
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNav(
        currentIndex: 2,
      ),
    );
  }

  String getText(text) {
    if(text == null) {
      return "";
    }

    return text;
  }
}
