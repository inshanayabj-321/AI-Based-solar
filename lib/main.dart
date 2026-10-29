
import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());

}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
bool showPassword = true;
}

class _MyAppState extends State<MyApp> {
  bool showPassword = true;
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
  return MaterialApp(
debugShowCheckedModeBanner: false,
home: Scaffold(
  appBar: AppBar(
    title: Text("BS IT"),
  ),
    body: ListView(
      children: [
        ListTile(
          leading: CircleAvatar(
            child: Icon( Icons.person),
          ),
          title: Text("insha"),
          subtitle: Text("hy"),
          trailing: Icon(Icons.arrow_forward),
          ),
         ListTile(title: Text("mehak"),),
          ListTile(title: Text("maryam"),),
           ListTile(title: Text("rabia"),),
            ListTile(title: Text("ayesha"),),
             ListTile(title: Text("fatima"),),
              ListTile(title: Text("zahra"),),

      ],
    )

        

  ),
  );
}
}

