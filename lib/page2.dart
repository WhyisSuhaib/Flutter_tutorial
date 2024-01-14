import 'package:flutter/material.dart';
import 'package:flutter_tutorial/page1.dart';
import 'package:flutter_tutorial/page3.dart';

class Page2 extends StatelessWidget {

  String ? name;
  int ? id;

  Page2({this.id, this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page2"),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MaterialButton(
                color: Colors.green,
                onPressed:(){
                  //Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> Page3()));
                  Navigator.of(context).pushNamed("Page3");
                },
                child: Text("Go to Page 3"),
              ),

              MaterialButton(
                color: Colors.red,
                onPressed:(){
                  Navigator.of(context).pop();
                },
                child: Text("Go Back."),
              ),
              Text("$name, Your ID is $id")
            ]
        ),
      ),
    );
  }
}
