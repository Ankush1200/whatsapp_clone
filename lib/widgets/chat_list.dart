import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:whatsapp_clone/Model/chat_model.dart';

import 'package:whatsapp_clone/Screens/individual_page.dart';

class ChatList extends StatelessWidget {
  final ChatModel chatModel;
  const ChatList({super.key, required this.chatModel});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => IndividualChat(
            chatModel: chatModel,
          )),
        );
      },
      child: Column(
        children: [
          ListTile(
            title: Text(
              chatModel.name,
              style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
            subtitle: Row(children: [
              const Icon(
                Icons.done_all,
                size: 17,
                color: Colors.blue,
              ),
              const SizedBox(
                width: 5,
              ),
              Text(chatModel.currentmessage),
            ]),
            leading: CircleAvatar(
              radius: 23,
              backgroundColor: Colors.grey,
              child: SvgPicture.asset(
                chatModel.isgroup
                    ? "assets/icons/groups.svg"
                    : "assets/icons/person.svg",
                // ignore: deprecated_member_use
                color: Colors.white,
                height: 35,
              ),
            ),
            trailing: Column(
              children: [
                const SizedBox(
                  height:0,
                ),
                Text(
                  chatModel.time,
                  style: const TextStyle(fontSize: 12),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Icon(
                  Icons.circle,
                  color: Color.fromARGB(255, 7, 225, 79),
                  size: 23,
                )
              ],
            ),
            // onTap:(){
            // },
          ),
        ],
      ),
    );
  }
}
