import 'package:flutter/material.dart';
import 'package:sp_finder/ui/home.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  var title = "SP Finder";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "$title",
      home: Home(header: "$title",),
//      home: Start(
//        header: "$title",
//      ),
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        primaryColor: Colors.white,
        accentColor: Colors.red,
      ),
    );
  }
}