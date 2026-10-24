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
          backgroundColor: const Color.fromARGB(133, 244, 67, 54), 
          title: Text('My  App'),
        ),

        body: Container(
         width:  double. infinity,
         height: double.infinity,
          decoration: BoxDecoration(
            color: Colors.lime,
            gradient: LinearGradient(colors:[
              const Color.fromARGB(11, 244, 67, 54) , const Color.fromARGB(98, 76, 175, 79),
            ] )
          ),

          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              children: [
                Text("wellcome back",
                style:TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                ) ,
                ),
                 SizedBox(
                  height: 20,
                 ),
                 TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.email),
                    filled: true,
                    fillColor: Colors.white,
                    hintText: "enter your email",
                  ),
                 ),
                  SizedBox(
                  height: 20,
                 ),
                  TextField(
                    obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.password),
                    filled: true,
                    fillColor: Colors.white,
                    hintText: "enter your password",
                  ),
                 ),
                  SizedBox(
                  height: 20,
                 ),
                 Container(
                  width: 100,
                  height: 50,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                    const Color.fromARGB(3, 255, 255, 255) , const Color.fromARGB(0, 30, 128, 233),
                    ])
                  ),
                   child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                    ),
                    onPressed: (){},
                     child: Text("login")),
                 ),

              ],
            ),
          )
          
        )
        
        )
    );

  }
}
