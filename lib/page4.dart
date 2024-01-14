import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_tutorial/page1.dart';
import 'package:flutter_tutorial/page3.dart';

class Page4 extends StatelessWidget {
  const Page4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page4"),
      ),
      body: Container(
        width: double.infinity,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          MaterialButton(
            color: Colors.yellowAccent,
            onPressed: () {
              //Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Page1()));
              Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(builder: (context) => Page1()),
                  (route) => false);
            },
            child: Text("Back to Page 1"),
          ),
          MaterialButton(
            color: Colors.red,
            onPressed: () {
              exit(0);
            },
            child: Text("Go back"),
          )
        ]),
      ),
    );
  }
}
