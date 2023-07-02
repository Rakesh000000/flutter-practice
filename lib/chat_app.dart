import 'package:flutter/material.dart';

import 'custom_chathead.dart';

class ChatApp extends StatefulWidget {
  const ChatApp({super.key});

  @override
  State<ChatApp> createState() => _ChatAppState();
}

class _ChatAppState extends State<ChatApp> {

  List _chat_list = ["Cristina", "Jake", "Sam", "Jalaaludin", "Mohammad"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Team", style: Theme.of(context).textTheme.headlineMedium,)),
      body: 
          ListView.builder(
            itemCount: _chat_list.length,
            itemBuilder: (context, index) => CustomChatHead(title: _chat_list[index]),
            
            
            ),
    );
  }
}