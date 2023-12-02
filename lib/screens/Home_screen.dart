
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsapp_clone/screens/You.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin{
late TabController _controller;

  @override
  void initState(){
    super.initState();
    _controller=TabController(length:4, vsync:this,initialIndex: 1);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("WhatsApp",style: TextStyle(fontSize:23)),
        actions: [
          IconButton(onPressed: () {},icon: const Icon(Icons.camera_alt_outlined)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.search_rounded)),
          // PopupMenuButton(itemBuilder:(BuildContext context) {
          //   return [
          //     PopupMenuItem(child:Text("New Group"),value: 'NewGroup',),
          //     PopupMenuItem(child:Text("New Group"),value: 'NewGroup',),
          //     PopupMenuItem(child:Text("New Group"),value: 'NewGroup',),
          //     PopupMenuItem(child:Text("New Group"),value: 'NewGroup',),
          //   ];
          // },),
          Padding(
            padding: const EdgeInsets.only(right:10),
            child: IconButton(onPressed: () {
              Get.to(()=>const You(),
              transition:Transition.rightToLeft
              );
            }, icon: const CircleAvatar(backgroundImage:AssetImage("assets/images/profile.png"),)),
          ),
        ],
        bottom: TabBar(
          controller: _controller,
          tabs: [
            Tab(icon: Icon(Icons.groups),),
            Tab(text: 'Chats',),
            Tab(text: 'Updates'),
            Tab(text: 'Calls'),
          ],
        ),
      ),
      body: TabBarView(
        controller:_controller ,
        children: [
        Center(child: Text("Community")),
        Center(child: Text("Chats")),
        Center(child: Text("Updates")),
        Center(child: Text("Calls")),
      ]),
    );
  }
}
