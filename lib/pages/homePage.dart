import 'package:flutter/material.dart';
import 'package:my_first_project/pages/detail_page.dart';
class HomePage extends StatefulWidget {

  static final String id = "home_page";
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String data = "Open Details";
  Future _openDetails() async{

    Map results = await Navigator.of(context).push(MaterialPageRoute(
        builder: (BuildContext context){
          return DetailPage(input: "Assalomu alaykum");
        }
    ));

    if(results != null && results.containsKey('data')){
     setState(() {
       data = results['data'];
     });
    }else{
      print("Nothing");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FlatButton(
          onPressed: (){
            _openDetails();
            //Navigator.pushReplacementNamed(context, DetailPage.id);
          },
          color: Colors.amber,
          child: Text(data),
        )
      ),
    );
  }
}

