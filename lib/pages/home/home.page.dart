import 'package:flutter/material.dart';
import 'package:star_wars_app/widgets/app/bottom.nav.dart';
import 'package:star_wars_app/widgets/personal/personal.grid.dart';
import 'package:star_wars_app/widgets/personal/personal.list.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isGridview = true;
  List<int> listData = [1,2,3,4,5,6,7,8,9,0];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Beranda"),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(bottom: 15),
              child: Row(
                children: [
                  Expanded(child: TextField()),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isGridview = true;
                      });
                    },
                    child: Container(
                      alignment: Alignment.center,
                      width: 50,
                      height: 50,
                      child: Icon(Icons.grid_view),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isGridview = false;
                      });
                    },
                    child: Container(
                      alignment: Alignment.center,
                      width: 50,
                      height: 50,
                      child: Icon(Icons.list),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: showView(),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNav(
        currentIndex: 0,
      ),
    );
  }

  Widget showView() {
    if(isGridview) {
      return PersonalGrid(dataList: listData,);
    }

    return PersonalList(dataList: listData,);
  }
}
