
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsapp_clone/colors/theaming.dart';
import 'package:whatsapp_clone/screens/You.dart';
import 'package:whatsapp_clone/widgets/my_cutom_list.dart';

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
        backgroundColor: AppColors.iconcolor,
        title: const Text("WhatsApp",style: TextStyle(fontSize:23,)),
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
          indicatorColor: Colors.white,
          indicatorWeight:2,
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
        ListView(
          children: [],
        ),
        // Center(child: Text("Community")),
        ListView(
          children: [
            MyCustomList(title: 'Ankush Prajapati', subtitle: 'Hi How are you', leadingIcon: CircleAvatar(backgroundImage: AssetImage("assets/images/profile.png")), onTap:(){}),
            MyCustomList(title: 'Abhishek Kumar', subtitle: 'Happy Birthday', leadingIcon: CircleAvatar(backgroundImage: AssetImage("assets/images/profile.png")), onTap:(){}),
            MyCustomList(title: 'Mrityunjay Singh', subtitle: 'dagd', leadingIcon: CircleAvatar(backgroundImage: AssetImage("assets/images/profile.png")),  onTap:(){}),
            MyCustomList(title: 'Vedant Singh', subtitle: 'dagd', leadingIcon: CircleAvatar(backgroundImage: AssetImage("assets/images/profile.png")),  onTap:(){}),
            MyCustomList(title: 'Dharmendra Baghel', subtitle: 'dagd', leadingIcon: CircleAvatar(backgroundImage: AssetImage("assets/images/profile.png")),  onTap:(){}),
          ],
        ),
        Center(child: Text("Updates")),
        Center(child: Text("Calls")),
      ]),
    );
  }
}
