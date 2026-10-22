import'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red, 
          title: Text('My  App'),
        ),
        body: Column(
          children: [
           Row(
            
          mainAxisAlignment: MainAxisAlignment.center,
          children: [ 
            Container(
              margin: EdgeInsets.all(10),
              color : Colors.blue,
          height: 100,
          width: 100,
            ),
            Container(
               margin: EdgeInsets.all(10),
              color : Colors.amber,
          height: 100,
          width: 100,
            ),
              Container(
                 margin: EdgeInsets.all(10),
              color : const Color.fromARGB(255, 212, 33, 243),
          height: 100,
          width: 100,
            ),
            Container(
               margin: EdgeInsets.all(10),
              color : const Color.fromARGB(255, 255, 7, 214),
          height: 100,
          width: 100,
            ),
          ],
           ),
           Row(
            
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.all(10),
              color : Colors.black,
          height: 100,
          width: 100,
            ),
            Container(
               margin: EdgeInsets.all(10),
              color : Colors.amber,
          height:100,
          width:100,
            ),
              Container(
                 margin: EdgeInsets.all(10),
              color : const Color.fromARGB(255, 212, 33, 243),
          height:100,
          width: 100,
            ),
            Container(
               margin: EdgeInsets.all(10),
              color : const Color.fromARGB(255, 255, 7, 214),
          height: 100,
          width: 100,
            ),
          ],
           ),
          ]
        )
        
        )
    );

  }
}
