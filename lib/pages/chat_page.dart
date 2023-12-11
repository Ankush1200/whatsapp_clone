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
      isgroup: true,
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
      icon: "assets/icons/person.svg",
      isgroup: false,
      time: "02:52AM",
      currentmessage: "Hi Ankush",
    ),
    ChatModel(
      name: "Abhishek Vishwakarma",
      icon: "assets/icons/person.svg",
      isgroup: false,
      time: "02:52AM",
      currentmessage: "Please Subscribe us👆",
    ),
    ChatModel(
      name: "Carrer Boost",
      icon: "assets/icons/person.svg",
      isgroup:true,
      time: "02:52AM",
      currentmessage: "Hello everyone",
    ),
    ChatModel(
      name: "Rishabh Rajora",
      icon: "assets/icons/person.svg",
      isgroup: false,
      time: "02:52AM",
      currentmessage: "Photo bhej de bhai",
    ),
    ChatModel(
      name: "Papa",
      icon: "assets/icons/person.svg",
      isgroup: false,
      time: "02:52AM",
      currentmessage: "Hi",
    ),
    ChatModel(
      name: "Ratan Garg",
      icon: "assets/icons/person.svg",
      isgroup: false,
      time: "02:06AM",
      currentmessage: "Hey Bro👋",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: chatmodel.length,
        itemBuilder: (context, index) {
        return ChatList(chatModel:chatmodel[index]);
      },
),
    );
  }
}