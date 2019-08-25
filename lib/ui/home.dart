import 'package:flutter/material.dart';
import 'package:mtcnagar/ui/requestForm.dart';
import 'package:mtcnagar/widgets/carousel.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);
  String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Welcome to MTC Nagar Association'),
            SizedBox(height: 15.0),
            CarouselWidget(),
            SizedBox(height: 15.0)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => RequestForm()));
        },
      ),
    );
  }
}
