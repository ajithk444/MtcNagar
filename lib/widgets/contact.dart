import 'package:flutter/material.dart';
import 'package:mtcnagar/models/contact.dart';

class ContactWidget extends StatefulWidget {
  ContactWidget({Key key, this.title, @required this.contact}) : super(key: key);
  String title;
  Contact contact;

  @override
  _ContactWidgetState createState() => _ContactWidgetState();
}

class _ContactWidgetState extends State<ContactWidget> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const ListTile(
            leading: Icon(Icons.album),
            title: Text('name'),
            subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
          ),
          ButtonTheme.bar(
            // make buttons use the appropriate styles for cards
            child: ButtonBar(
              children: <Widget>[
                // FlatButton(
                //   child: const Text('BUY TICKETS'),
                //   onPressed: () {/* ... */},
                // ),
                FlatButton(
                  child: const Text('VIEW'),
                  onPressed: () {/* ... */},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
