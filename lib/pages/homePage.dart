import 'package:flutter/material.dart';
import 'package:my_first_project/pages/detail_page.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static final String id = "home_page";
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: (){
            Navigator.pushNamed(context, DetailPage.id);
          },
          child: Text("Open details"),
        )
      ),
    );
  }
}

