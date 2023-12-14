
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Colors/theaming.dart';
import 'package:whatsapp_clone/Screens/Camera_Access.dart';
import 'package:whatsapp_clone/Screens/new_group.dart';
import 'package:whatsapp_clone/Screens/select_contacts.dart';

import 'package:whatsapp_clone/Screens/settings.dart';

import '../pages/chat_page.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
  with SingleTickerProviderStateMixin {
  late TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 4, vsync: this, initialIndex: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: AppColors.defaultcolor,
        title: const Text("WhatsApp",
            style: TextStyle(
              fontSize: 23,
              // fontFamily: 'OpenSans',
              fontWeight: FontWeight.bold
            )),
        actions: [
          IconButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (builder)=>const CameraAccess()));
          }, icon: const Icon(Icons.camera_alt_outlined)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.search_rounded)),
          PopupMenuButton<String>(
            onSelected: (value){
                if(value=='Settings'){
                  Navigator.push(context,MaterialPageRoute(builder: (builder)=>const You()));
                }else if(value=='New Group'){
                  Navigator.push(context, MaterialPageRoute(builder: (builder)=>const NewGroupPage()));
                }
            },
            itemBuilder: (BuildContext context) {
              return const[
                PopupMenuItem(
                  value: 'New Group',
                  child: Text("New Group"),
                ),
                PopupMenuItem(
                  value: 'New Brodcast',
                  child: Text("New Brodcast"),
                ),
                PopupMenuItem(
                  value: 'Linked devices',
                  child: Text("Linked devices"),
                ),
                PopupMenuItem(
                  value: 'Shared Messages',
                  child: Text("Shared Messages"),
                ),
                PopupMenuItem(
                  value: 'Settings',
                  child: Text("Settings"),
                ),
              ];
            },
          ),
        ],
        bottom: TabBar(
          indicatorColor: Colors.white,
          indicatorWeight: 3,
          controller: _controller,
          tabs: const [
            Tab(icon: Icon(Icons.groups)),
            Tab(text: 'Chats'),
            Tab(text: 'Updates'),
            Tab(text: 'Calls'),
          ],
        ),
      ),
      body: TabBarView(controller: _controller, children: const [
        Center(child: Text("Community")),
        ChatPage(),
        Center(child: Text("Updates")),
        Center(child: Text("Calls")),
      ]),
      floatingActionButton:FloatingActionButton(
        onPressed: (){
          Navigator.push(context,MaterialPageRoute(builder: (builder)=>const SelectContacts()));
        },
        backgroundColor: AppColors.defaultcolor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: const Icon(Icons.chat),
        ),
    );
  }
}
