import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Model/chatmodel.dart';
import 'package:whatsapp_clone/widgets/chat_list.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<ChatModel> chatmodel = [
    ChatModel(
      name: "Ankush Prajapati",
      icon: "assets/icons/person.svg",
      isgroup: false,
      time: "5:26PM",
      currentmessage: "Hi Ankush",
    ),
    ChatModel(
      name: "Placements",
      icon: "assets/icons/groups.svg",
      isgroup: false,
      time: "10:06PM",
      currentmessage: "Happy birthday",
    ),
    ChatModel(
      name: "Nitin Prajapati",
      icon: "assets/icons/person.svg",
      isgroup: false,
      time: "5:26AM",
      currentmessage: "Hi Ankush",
    ),
    ChatModel(
      name: "Mrityunjay Singh",
      icon: "assets/icons/person.svg",
      isgroup: false,
      time: "08:52PM",
      currentmessage: "How are You?",
    ),
    ChatModel(
      name: "Home",
      icon: "assets/icons/groups.svg",
      isgroup: true,
      time: "6:20PM",
      currentmessage: "Hi Everyone",
    ),
    ChatModel(
      name: "Abhishek Kumar",
      icon: "assets/icons/groups.svg",
      isgroup: false,
      time: "02:52AM",
      currentmessage: "Hi Ankush",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:ListView.builder(
        itemCount: chatmodel.length,
        itemBuilder: (context, index) {
        return ChatList(chatModel:chatmodel[index],);
      }),
    );
  }
}


 // MyCustomList(
          //     title: 'Dharmendra Baghel',
          //     subtitle: 'dagd',
          //     leadingIcon: CircleAvatar(
          //         backgroundImage: AssetImage("assets/images/profile.png")),
          //     onTap: () {}),