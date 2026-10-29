
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
    body: Column(
      children: [
         

        TextField(
                     
          controller:passwordController ,
         obscureText: showPassword,
          decoration: InputDecoration(
            hintText: AutofillHints.password,
            border: OutlineInputBorder(),
            prefixIcon: Icon(Icons.password),
            suffixIcon: IconButton(
              onPressed: (){
                setState(() {
                  showPassword =! showPassword;
                });
                print(passwordController.text);
              print("hello world");
              
            },
             icon:Icon(Icons.remove_red_eye),
             ),
          ),
        ),
                  
ElevatedButton(
                  onPressed: () {
                    print(passwordController.text);
                  print("Login button clicked");
                 },
               child: Text("Login"),
             ),
      ],
    )
        

  ),
  );
}
}

