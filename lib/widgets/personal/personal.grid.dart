import 'package:flutter/material.dart';
import 'package:star_wars_app/models/person.model.dart';

class PersonalGrid extends StatelessWidget {
  PersonalGrid({Key key, this.dataList}) : super(key: key);

  final List<PersonModel> dataList;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
      itemCount: dataList.length,
      itemBuilder: (context, index) {
        return Card(
          elevation: 1,
          child: ListTile(
            title: Text(dataList.elementAt(index).name),
            subtitle: Text(dataList.elementAt(index).gender),
          ),
        );
      },
    );
  }
}
