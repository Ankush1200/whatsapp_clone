import 'package:flutter/material.dart';

import '../widgets/my_cutom_list.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:ListView(
          children: [
            MyCustomList(
                title: 'Ankush Prajapati',
                subtitle: 'Hi How are you',
                leadingIcon: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/profile.png")),
                onTap: () {}),
            MyCustomList(
                title: 'Abhishek Kumar',
                subtitle: 'Happy Birthday',
                leadingIcon: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/profile.png")),
                onTap: () {}),
            MyCustomList(
                title: 'Mrityunjay Singh',
                subtitle: 'dagd',
                leadingIcon: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/profile.png")),
                onTap: () {}),
            MyCustomList(
                title: 'Vedant Singh',
                subtitle: 'dagd',
                leadingIcon: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/profile.png")),
                onTap: () {}),
            MyCustomList(
                title: 'Dharmendra Baghel',
                subtitle: 'dagd',
                leadingIcon: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/profile.png")),
                onTap: () {}),
            MyCustomList(
                title: 'Dharmendra Baghel',
                subtitle: 'dagd',
                leadingIcon: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/profile.png")),
                onTap: () {}),
            MyCustomList(
                title: 'Dharmendra Baghel',
                subtitle: 'dagd',
                leadingIcon: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/profile.png")),
                onTap: () {}),
            MyCustomList(
                title: 'Dharmendra Baghel',
                subtitle: 'dagd',
                leadingIcon: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/profile.png")),
                onTap: () {}),
            MyCustomList(
                title: 'Dharmendra Baghel',
                subtitle: 'dagd',
                leadingIcon: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/profile.png")),
                onTap: () {}),
            MyCustomList(
                title: 'Dharmendra Baghel',
                subtitle: 'dagd',
                leadingIcon: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/profile.png")),
                onTap: () {}),
            MyCustomList(
                title: 'Dharmendra Baghel',
                subtitle: 'dagd',
                leadingIcon: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/profile.png")),
                onTap: () {}),
          ],
        ), 
    );
  }
}