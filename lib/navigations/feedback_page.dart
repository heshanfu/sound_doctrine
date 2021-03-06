import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class FeedbackPage extends StatelessWidget {
  final List<TileItem> tileItems = [
    TileItem(
      title: 'Rating and Comments',
      description:
          'I will never bother you with pop-ups to rate my app or leave a reivew. But if you have any feedbacks, feel free to either email me directly or leave a rating and comment on the app store.',
    ),
    TileItem(
      title: 'Typos and Bugs',
      description:
          'Although developed with care and love, if there be any typos or mistakes please contact me with concise details to help me fix it.',
    ),
    TileItem(
      title: 'Feature Request',
      description:
          'Have an improvement or additional features? I\'d love to hear it! \n\nPlease bare in mind that this app was designed, developed, and is currently being maintained by one developer.\n\nThis app is open source and is public to all contributions.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Feedback', style: Theme.of(context).textTheme.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
              child: ListView.builder(
            itemCount: tileItems.length,
            itemBuilder: (BuildContext context, int index) {
              return (_buildTile(context, tileItems[index]));
            },
          )),
          MaterialButton(
            minWidth: double.maxFinite,
            height: 60,
            color: Theme.of(context).primaryColor,
            child: Text('CONTACT', style: Theme.of(context).textTheme.button),
            onPressed: () => sendEmail('jessethetentdeveloper@gmail.com'),
          )
        ],
      ),
    );
  }

  Widget _buildTile(BuildContext context, TileItem tile) {
    return Column(
      children: <Widget>[
        _buildHeader(context, tile.title),
        _buildBody(context, tile.description),
      ],
    );
  }

  Widget _buildHeader(BuildContext context, String title) {
    return Container(
      height: 50.0,
      color: Colors.blueGrey[700],
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      alignment: Alignment.centerLeft,
      child: Text('$title', style: Theme.of(context).textTheme.display1),
    );
  }

  Widget _buildBody(BuildContext context, String description) {
    return Container(
      padding: EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 24.0),
      child: Text(description, style: TextStyle(fontSize: 16.0)),
    );
  }

  sendEmail(String address) async {
    if (await canLaunch('mailto:$address')) {
      await launch('mailto:$address');
    } else {
      throw 'Could not launch mailto:$address';
    }
  }
}

class TileItem {
  String title;
  String description;
  TileItem({this.title, this.description});
}
