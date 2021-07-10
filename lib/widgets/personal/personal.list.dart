import 'package:flutter/material.dart';

class PersonalList extends StatelessWidget {
  PersonalList({Key key, this.dataList}) : super(key: key);

  final List<dynamic> dataList;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        return ListTile(
          dense: true,
          title: Text("Title"),
          subtitle: Text("Sub Title"),
        );
      },
      separatorBuilder: (context, index) {
        return Divider();
      },
      itemCount: dataList.length,
    );
  }
}
