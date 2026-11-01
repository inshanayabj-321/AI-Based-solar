
import 'package:flutter/material.dart';
import 'chathistory.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool showPassword = true;
  final passwordController = TextEditingController();

  List<String> students = [
    "papa g", "mama", "mARYAM", "AYESHA",
    "MEHAK", "INSHA", "zahra", "muskan",
    "nida", "mehrab", "zainab",
  ];

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Whats App"),
          centerTitle: true,
          backgroundColor: Colors.green,
        ),

        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: "Search here",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(100.0),
                  ),
                ),
              ),
            ),

            Row(
              children: [
                TextButton(onPressed: () {}, child: Text("unread")),
                TextButton(onPressed: () {}, child: Text("all")),
                TextButton(onPressed: () {}, child: Text("groups")),
                TextButton(onPressed: () {}, child: Text("favourities")),
                TextButton(onPressed: () {}, child: Text("communities")),
              ],
            ),

            Expanded(
              child: ListView.builder(
                itemCount: students.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      ListTile(
                        onTap: () {
                          print(index);
                          Get.to(ChatHistory(
                            name: students[index],
                            n: index,
                          ));
                        },

                        leading: CircleAvatar(
                          child: Icon(Icons.person),
                        ),

                        title: Text(students[index]),
                        subtitle: Text("How are you?"),

                        trailing: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              [
                                "9:00 am",
                                "9:30 am",
                                "10:15 am",
                                "11:00 am",
                                "12:00 pm",
                                "9:00 am",
                                "9:30 am",
                                "10:15 am",
                                "11:00 am",
                                "12:00 pm",
                                "9:00 am",
                              ][index],
                            ),

                            CircleAvatar(
                              radius: 10,
                              backgroundColor: Colors.green,
                              child: Text(
                                "1",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
