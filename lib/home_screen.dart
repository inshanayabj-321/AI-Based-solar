
import 'package:flutter/material.dart';
import 'chat_screen.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final names = ['Insha', 'Maryam', 'Mehak', 'Rabia'];
  final unread = [2, 3, 3, 9];
  bool showUnread = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('WhatsApp'),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
           Padding(
            padding: EdgeInsets.all(8),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius:
                   BorderRadius.circular(100),
                ),
              ),
            ),
          ),
          Row(
            children: [
              TextButton(
                onPressed: () => setState(() => showUnread = false),
                child: const Text('All'),
              ),
              TextButton(
                onPressed: () => setState(() => showUnread = true),
                child: const Text('Unread'),
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: names.length,
              itemBuilder: (context, i) {
                if (showUnread && unread[i] == 0) {
                  return const SizedBox.shrink();
                }

                return ListTile(
                  leading: const CircleAvatar(
                    child: Icon(Icons.person),
                  ),
                  title: Text(names[i]),
                  subtitle: const Text('Hello!'),
                  trailing: unread[i] > 0
                      ? CircleAvatar(
                          radius: 12,
                          backgroundColor: Colors.green,
                          child: Text(
                            '${unread[i]}',
                            style: const TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        )
                      : null,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            ChatScreen(name: names[i]),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.green,
        child: const Icon(Icons.add_comment),
      ),
    );
  }
}
