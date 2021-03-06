import 'package:flutter/material.dart';
import './data/nicenecreed.dart';

class NiceneCreedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Nicene Creed (A.D. 325)",
            style: Theme.of(context).textTheme.title),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(8.0),
        child: Text(NiceneCreed.item),
      ),
    );
  }
}
