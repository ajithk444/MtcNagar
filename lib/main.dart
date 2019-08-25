import 'package:flutter/material.dart';
import 'package:mtcnagar/routes/routes.dart';
import 'package:mtcnagar/widgets/splash.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MTC Nagar Association',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: SplashScreen(),
      routes: appRoutes,
    );
  }
}
