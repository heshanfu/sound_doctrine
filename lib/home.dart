import 'package:flutter/material.dart';
import 'navigation_drawer.dart';
import 'heidelberg/heidelberg_page.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Project Heidelberg'),
      ),
      body: HeidelbergPage(),
      drawer: NavigationDrawer(),
    );
  }
}
