import 'package:flutter/material.dart';

class AccountsPage extends StatefulWidget {
  AccountsPage({Key key, this.title}) : super(key: key);
  String title;

  @override
  _AccountsPageState createState() => _AccountsPageState();
}

class _AccountsPageState extends State<AccountsPage> {
  @override
  Widget build(BuildContext context) {
      return Scaffold(
      body: Center(
        child: Text('Accounts Page'),
      ),
    );
  }
}
