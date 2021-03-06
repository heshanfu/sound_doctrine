import 'package:flutter/material.dart';
import './data/athanasiancreed.dart';

class AthanasianCreedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Athanasian Creed (A.D. 500)",
            style: Theme.of(context).textTheme.title),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(8.0),
        child: Text(AthanasianCreed.item),
      ),
    );
  }
}
