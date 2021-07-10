import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:star_wars_app/helper/route.helper.dart';
import 'package:star_wars_app/pages/auth/login.page.dart';
import 'package:star_wars_app/pages/favorite/favorite.page.dart';
import 'package:star_wars_app/pages/home/home.page.dart';
import 'package:star_wars_app/pages/user/profile.page.dart';

const data = 'nooo';

class MyRouter {
  static GlobalKey<NavigatorState> navigator = new GlobalKey<NavigatorState>();

  static Route<dynamic> onGenerateRoute(RouteSettings settings, SharedPreferences pref) {
    String userStr = pref.getString('user');
    Widget initPage = LoginPage();

    if(userStr != null) {
      initPage = HomePage();
    }

    switch (settings.name) {
      case "/":
        return createPage(initPage);

      case "/home":
        return createPage(HomePage());

      case '/login':
        return createPage(LoginPage());

      case '/favorite':
        return createPage(FavoritePage());

      case '/profile':
        return createPage(ProfilePage());

      default:
        return createPage(
          Scaffold(
            body: Text("Route Tidak ditemukan"),
          ),
        );
    }
  }
}
