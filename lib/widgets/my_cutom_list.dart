import 'package:flutter/material.dart';

class MyCustomList extends StatelessWidget{
  final String title;
  final String subtitle;
  final CircleAvatar leadingIcon;
  final VoidCallback onTap;

  const MyCustomList({
    super.key, 
    required this.title, 
    required this.subtitle, 
    required this.leadingIcon, 
    required this.onTap});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      subtitle: Text(subtitle),
      leading: CircleAvatar(child: leadingIcon),
      onTap: onTap,
    );
  }
}