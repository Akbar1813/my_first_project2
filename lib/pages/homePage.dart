import 'package:flutter/material.dart';
import 'package:my_first_project/pages/detail_page.dart';
class HomePage extends StatefulWidget {

  static final String id = "home_page";
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  String input = "Open Details";
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FlatButton(
          onPressed: (){
            Navigator.pushNamed(context, DetailPage.id);
          },
          color: Colors.amber,
          child: Text(input),
        )
      ),
    );
  }
}

