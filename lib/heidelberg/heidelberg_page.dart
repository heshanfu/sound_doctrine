import 'package:flutter/material.dart';
import 'package:sticky_headers/sticky_headers.dart';

import './data/heidelberg.dart';
import './data/section.dart';
import './data/lordsday.dart';
import './lordsday.dart';

class HeidelbergPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Heidelberg Catechism (A.D. 1576)'),
      ),
      body: ListView.builder(
        itemCount: Heidelberg.items.length ?? 0,
        itemBuilder: (BuildContext context, int index) {
          return StickyHeader(
              header: Container(
                height: 50.0,
                color: Colors.blueGrey[700],
                padding: new EdgeInsets.symmetric(horizontal: 16.0),
                alignment: Alignment.centerLeft,
                child: new Text(
                  '${Heidelberg.items[index].header}',
                  style: const TextStyle(color: Colors.white),
                ),
              ),
              content: Column(
                children: _buildChildItems(context, Heidelberg.items[index]),
              )
              );
        },
      ),
    );
  }

  List<Widget> _buildChildItems(BuildContext context, Section section) {
    List<Widget> childItems = [];
    section.lordsDays.forEach((lordsDay) {
      childItems.add(ListTile(
        title: Text('${lordsDay.header}'),
        onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => LordsDayPage(lordsDay: lordsDay))),
      ));
    });
    return childItems;
  }
}
