import 'package:flutter/material.dart';
import 'package:star_wars_app/models/person.model.dart';

class PersonalList extends StatelessWidget {
  PersonalList({Key key, this.dataList}) : super(key: key);

  final List<PersonModel> dataList;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        return ListTile(
          dense: true,
          title: Text(dataList.elementAt(index).name),
          subtitle: Text(dataList.elementAt(index).gender),
        );
      },
      separatorBuilder: (context, index) {
        return Divider();
      },
      itemCount: dataList.length,
    );
  }
}
