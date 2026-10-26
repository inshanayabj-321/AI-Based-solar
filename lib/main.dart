
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
    title: Text("ui design"),


  ),
  body: Row(
         children: [
         Expanded(
          child: Column(
children: [
  Expanded(
    flex: 1,
    child: Container(
      width: double.infinity,
      color: Colors.amberAccent,
    ),
  ),
  Expanded(
    flex: 3,
    child: Container(
      width: double.infinity,
      color: const Color.fromARGB(255, 64, 74, 255),
    ),
  ),
  Expanded(
    flex: 1,
    child: Container(
      width: double.infinity,
      color: const Color.fromARGB(255, 255, 64, 172),
    ),
  ),
],
          ),
          ),
          Expanded(
          child: Column(
children: [
  Expanded(
    
    child: Container(
      width: double.infinity,
      color: const Color.fromARGB(255, 64, 166, 255),
    ),
  ),
  Expanded(
    
    child: Container(
      width: double.infinity,
      color: const Color.fromARGB(255, 255, 64, 115),
    ),
  ),
  Expanded(
    
    child: Container(
      width: double.infinity,
      color: const Color.fromARGB(255, 64, 255, 166),
    ),
  ),
   Expanded(
    
    child: Container(
      width: double.infinity,
      color: const Color.fromARGB(137, 255, 236, 64),
    ),
  ),
],
          ),
          ),
         ],
        
        ),
        
),
  );
}
    
  }

