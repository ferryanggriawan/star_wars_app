import 'package:flutter/material.dart';
import 'package:star_wars_app/routes/router.dart';
import 'package:star_wars_app/widgets/app/bottom.nav.dart';

class ProfilePage extends StatelessWidget {
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
              subtitle: Text("User name"),
            ),
            ListTile(
              title: Text("Email"),
              subtitle: Text("User email"),
            ),
            RaisedButton(
                child: Text("Logout"),
                onPressed: () {
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
}
