import 'package:flutter/material.dart';
import 'package:star_wars_app/widgets/app/bottom.nav.dart';
import 'package:star_wars_app/widgets/personal/personal.list.dart';

class FavoritePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Favorite"),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
        child: PersonalList(dataList: [1,2,3],),
      ),
      bottomNavigationBar: BottomNav(
        currentIndex: 1,
      ),
    );
  }
}