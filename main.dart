import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MessagesScreen(),
    );
  }
}

class MessagesScreen extends StatelessWidget {
  final List<Map<String, String>> messages = [
    {
      "Name": "Zoro",
      "time": "09:18",
      "message": "I will become the world's greatest swordsman!",
      "image": "https://i.postimg.cc/Jh23DSy8/zoro.png"
    },
    {
      "Name": "Luffy",
      "time": "04:22",
      "message": "I'm Luffy! The man who will become the Pirate King!",
      "image": "https://i.postimg.cc/W4LTN18c/luffyy.png"
    },
    {
      "Name": "Gojo",
      "time": "12:34",
      "message": "Throughout the heavens & earth, I alone am the honored on",
      "image": "https://i.postimg.cc/g0VdnbtX/gojo.png"
    },
    {
      "Name": "Sakuna",
      "time": "11:05",
      "message": "A system that isn't based purely on strength is boring.",
      "image": "https://i.postimg.cc/cHTSBMSd/sakuna.png"
    },
    {
      "Name": "Sanji",
      "time": "09:46",
      "message": "Don't start a fight if you can't end it",
      "image": "https://i.postimg.cc/KjHhdGjV/sanji.jpg"
    },
    {
      "Name": "Ace",
      "time": "08:15",
      "message": "It's Natural For An Older Brother To Worry About His Bungling Kid Brother.",
      "image": "https://i.postimg.cc/t4GM7ZKk/ace.jpg"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'Messages',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: messages.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(messages[index]["image"]!), 
              radius: 25,
            ),
            title: Text(
              messages[index]["Name"]!,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(messages[index]["message"]!),
            trailing: Text(messages[index]["time"]!),
          );
        },
      ),
    );
  }
}
