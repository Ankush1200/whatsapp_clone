import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Colors/theaming.dart';


class ContactButton extends StatelessWidget {
  
  const ContactButton({super.key, required this.name, required this.icon,});
  final String name;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child:  ListTile(
          leading: CircleAvatar(backgroundColor: AppColors.defaultcolor,
          radius: 23,
          child: Icon(icon,color: Colors.white),
          ),
          title: Text(name,
          style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          ),
    );
  }
}