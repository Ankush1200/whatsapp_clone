import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:whatsapp_clone/Colors/theaming.dart';
import 'package:whatsapp_clone/Model/chat_model.dart';

class ContactList extends StatelessWidget {
  final ChatModel chatModel;
  const ContactList({super.key, required this.chatModel});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Stack(
        alignment: Alignment.bottomRight,
        children: [
          CircleAvatar(
            backgroundColor: Colors.grey,
            radius: 23,
            child: SvgPicture.asset(
              chatModel.icon,
              height: 35,
              // ignore: deprecated_member_use
              color: Colors.white,
            ),
          ),
          chatModel.isselected?
          const CircleAvatar(
            backgroundColor: AppColors.defaultcolor,
            radius: 10,
            child: Icon(
              Icons.check,
              size: 18,
              color: Colors.white,
            ),
          ):const SizedBox(height: 0,width: 0,),
        ],
      ),
      title: Text(
        chatModel.name,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Text(chatModel.status),
    );
  }
}
