import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:mtcnagar/widgets/badge.dart';

class InfoPage extends StatefulWidget {
  InfoPage({Key key, this.title}) : super(key: key);
  String title;

  @override
  _InfoPageState createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  Widget _createEventTile(titleText, subtitleText) {
    return ListTile(
      leading: Icon(Icons.access_alarms),
      title: Text(titleText),
      subtitle: Text(subtitleText),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: EdgeInsets.fromLTRB(25.0, 50.0, 25.0, 10.0),
      child: Column(
        children: <Widget>[
          Text('Recent Events'),
          SizedBox(
            height: 10.0,
          ),
          Card(
            child: InkWell(
              splashColor: Colors.blue.withAlpha(30),
              onTap: () {
                print('Vinayagar Card tapped.');
              },
              child: Container(
                // padding: new EdgeInsets.all(5.0),
                child: Column(
                  children: <Widget>[
                    _createEventTile(
                        'Vinayagar Chathurthi Events', '01 September 2019'),
                  ],
                ),
              ),
            ),
          ),
          Card(
            child: InkWell(
              splashColor: Colors.blue.withAlpha(30),
              onTap: () {
                print('Velankanni Card tapped.');
              },
              child: Container(
                // padding: new EdgeInsets.all(5.0),
                child: Column(
                  children: <Widget>[
                    _createEventTile(
                        'Annai Velankanni Events', '08 September 2019'),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 75.0,
          ),
          Text('Upcoming Events'),
          SizedBox(
            height: 10.0,
          ),
          Card(
            child: InkWell(
              splashColor: Colors.blue.withAlpha(30),
              onTap: () {
                print('Diwali tapped.');
              },
              child: Container(
                // padding: new EdgeInsets.all(5.0),
                child: Column(
                  children: <Widget>[
                    _createEventTile(
                        'Ayudha Pooja Events', '07 October 2019'),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
