import 'package:flutter/material.dart';

class InfoPage extends StatefulWidget {
  InfoPage({Key key, this.title}) : super(key: key);
  String title;

  @override
  _InfoPageState createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
    @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Events Info Page'),
      ),
    );
  }
}
