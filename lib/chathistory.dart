import 'package:flutter/material.dart';

class ChatHistory extends StatefulWidget {
  const ChatHistory({super.key, required this.name, required int n});

final String name;
  @override
  State<ChatHistory> createState() => _ChatHistoryState();
}

class _ChatHistoryState extends State<ChatHistory> {
  List<String> send = [
    "hello","hi","hoe arw you","i am fine","what are you upto","nothing","ok",
  ];

 
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(widget.name),
        ),
                body: Column(
                  children: [
                    Expanded(
                      child: ListView.builder(
                        itemCount: 7,
                        itemBuilder: ((context, index) {
                          bool isMe = index % 2 != 0;
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Align(
                              alignment: isMe ? Alignment.centerLeft: Alignment.centerRight,
                              
                              child: Container(
                                    padding: EdgeInsets.all(12.0),
                                    
                                    color: Colors.green.shade100,
                                    child: Column(
                                      children: [
                                        Text(send[index]),
                                        
                                      ],
                                    ),
                                    
                                  ),
                            ),
                          );
                        })
                        ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                        
                      ),
                    ),
                    
                  ],
                ),
      ),
    );
  }
}