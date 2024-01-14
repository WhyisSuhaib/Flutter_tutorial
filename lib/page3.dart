import 'package:flutter/material.dart';
import 'package:flutter_tutorial/page2.dart';
import 'package:flutter_tutorial/page4.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page3"),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MaterialButton(
                color: Colors.blueAccent,
                onPressed:(){
                  //Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Page4()));
                  Navigator.of(context).pushReplacementNamed("Page4");
                },
                child: Text("Go to Page 4"),
              ),
              MaterialButton(
                color: Colors.red,
                onPressed:(){
                  Navigator.of(context).pop();
                },
                child: Text("Go back"),
              )
            ]
        ),
      ),
    );
  }
}
