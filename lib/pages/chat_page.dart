import 'package:flutter/material.dart';
import 'package:whatsapp_clone/widgets/chat_card.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:ListView(
          children: const [
            CustomCards(),
            CustomCards(),
            CustomCards(),
            CustomCards(),
            // MyCustomList(
            //     title: 'Dharmendra Baghel',
            //     subtitle: 'dagd',
            //     leadingIcon: CircleAvatar(
            //         backgroundImage: AssetImage("assets/images/profile.png")),
            //     onTap: () {}),          
          ],
        ), 
    );
  }
}