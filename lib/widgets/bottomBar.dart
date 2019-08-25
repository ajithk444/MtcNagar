import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:mtcnagar/ui/accounts.dart';
import 'package:mtcnagar/ui/contact.dart';
import 'package:mtcnagar/ui/home.dart';
import 'package:mtcnagar/ui/info.dart';

class BottomBar extends StatefulWidget {
  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int pageIndex = 0;

  //create navigation
  final HomePage _homePage = new HomePage();
  final InfoPage _infoPage = new InfoPage();
  final AccountsPage _accountsPage = new AccountsPage();
  final ContactsPage _contactsPage = new ContactsPage();

  Widget _showPage = new HomePage();

  Widget _pageChooser(int page) {
    switch (page) {
      case 0:
        return _homePage;
        break;
      case 1:
        return _infoPage;
        break;
      case 2:
        return _accountsPage;
        break;
      case 3:
        return _contactsPage;
        break;
      default:
        return new Container(
          child: new Center(
            child: new Text(
              'no page found',
              style: new TextStyle(fontSize: 30),
            ),
          ),
        );
    }
  }

  Future<bool> _onBackPressed() {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'Do You Want to Exit?',
            style: TextStyle(fontSize: 20.0),
          ),
          actions: <Widget>[
            FlatButton(
              child: Text(
                'Cancel',
                style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0),
              ),
              onPressed: () {
                Navigator.of(context).pop(false);
              },
            ),
            FlatButton(
              child: Text(
                'Confirm',
                style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0),
              ),
              onPressed: () {
                Navigator.of(context).pop(true);
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        index: pageIndex,
        height: 55.0,
        items: <Widget>[
          Icon(Icons.home, size: 30),
          Icon(Icons.event, size: 30),
          Icon(Icons.business, size: 30),
          Icon(Icons.contact_phone, size: 30)
        ],
        color: Colors.green,//blue[300],
        buttonBackgroundColor: Colors.green,//blue[300],
        backgroundColor: Colors.white,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 300),
        onTap: (int tappedIndex) {
          setState(() {
            _showPage = _pageChooser(tappedIndex);
          });
        },
      ),
      body: WillPopScope(
        onWillPop: _onBackPressed,
        child: Container(
          color: Colors.black,
          child: Center(
            child: _showPage,
          ),
        ),
      ),
    );
  }
}
