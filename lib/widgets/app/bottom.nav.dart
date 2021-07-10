import 'package:flutter/material.dart';
import 'package:star_wars_app/routes/router.dart';

class BottomNav extends StatefulWidget {
  BottomNav({Key key, this.currentIndex}) : super(key: key);
  final int currentIndex;

  @override
  State<StatefulWidget> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  // int _currentIndex = widget.currentIndex;

  void onTap(index) {
    // setState(() {
    //   _currentIndex = index;
    // });

    switch (index) {
      case 0:
        MyRouter.navigator.currentState.pushReplacementNamed('/home');
        break;

      case 1:
        MyRouter.navigator.currentState.pushReplacementNamed('/favorite');
        break;

      case 2:
        MyRouter.navigator.currentState.pushReplacementNamed('/profile');
        break;

      default:
        MyRouter.navigator.currentState.pushReplacementNamed('/home');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: widget.currentIndex,
      onTap: onTap,
      items: [
        BottomNavigationBarItem(
          label: "Home",
          icon: Icon(Icons.home),
        ),
        BottomNavigationBarItem(
          label: "Favorite",
          icon: Icon(Icons.favorite),
        ),
        BottomNavigationBarItem(
          label: "Profile",
          icon: Icon(Icons.account_box_outlined),
        ),
      ],
    );
  }
}
