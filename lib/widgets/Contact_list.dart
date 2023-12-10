
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:whatsapp_clone/Model/chatmodel.dart';

class ContactList extends StatefulWidget {
  final ChatModel chatModel;
  const ContactList({super.key,required this.chatModel});

  @override
  State<ContactList> createState() => _ContactListState();
}

class _ContactListState extends State<ContactList> {
  @override
  Widget build(BuildContext context) {

    return InkWell(
      onTap: (){},
      child: ListTile(
          leading: CircleAvatar(backgroundColor: Colors.grey,
          radius: 23,
          child: SvgPicture.asset(widget.chatModel.icon,
          height:35,
          // ignore: deprecated_member_use
          color: Colors.white,
          ),
          ),
          title: Text(widget.chatModel.name,
          style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text(widget.chatModel.status),
        ),
    );    
  }
}