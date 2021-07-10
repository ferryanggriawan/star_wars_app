import 'package:flutter/material.dart';
import 'package:star_wars_app/helper/route.helper.dart';
import 'package:star_wars_app/pages/auth/login.page.dart';
import 'package:star_wars_app/pages/favorite/favorite.page.dart';
import 'package:star_wars_app/pages/home/home.page.dart';
import 'package:star_wars_app/pages/user/profile.page.dart';

const data = 'nooo';

class MyRouter {
  static GlobalKey<NavigatorState> navigator = new GlobalKey<NavigatorState>();

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    Widget wgt = LoginPage();

    if(data == 'ferry') {
      wgt = HomePage();
    }

    switch (settings.name) {
      case "/":
        return createPage(wgt);

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
