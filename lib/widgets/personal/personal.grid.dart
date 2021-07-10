import 'package:flutter/material.dart';

class PersonalGrid extends StatelessWidget {
  PersonalGrid({Key key, this.dataList}) : super(key: key);

  final List<dynamic> dataList;

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
        return ListTile(
          title: Text("Title"),
          subtitle: Text("Sub Title"),
        );
      },
    );
  }
}
