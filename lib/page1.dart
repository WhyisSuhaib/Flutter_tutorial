import 'package:flutter/material.dart';
import 'package:flutter_tutorial/page2.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page1"),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              color: Colors.tealAccent,
            onPressed:(){
               Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Page2(id: 570, name: "Someone",)));
              //Navigator.of(context).pushNamed("Page2");
            },
            child: Text("Go to Page 2"),
              )
          ]
        ),
      ),
    );
  }
}
