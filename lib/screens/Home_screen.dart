
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsapp_clone/colors/theaming.dart';
import 'package:whatsapp_clone/pages/chat_page.dart';
import 'package:whatsapp_clone/screens/You.dart';


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
        backgroundColor: AppColors.defaultcolor,
        title: const Text("WhatsApp",
            style: TextStyle(
              fontSize: 23,
              // fontFamily: 'OpenSans',
              fontWeight: FontWeight.bold
            )),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.camera_alt_outlined)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.search_rounded)),
          PopupMenuButton<String>(
            onSelected: (value){
                if(value=='Settings'){
                  Get.to(()=>const You(),
                  transition: Transition.rightToLeftWithFade,
                  );
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
                  value: 'Whatsapp Web',
                  child: Text("Whatsapp Web"),
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
          // Padding(
          //   padding: const EdgeInsets.only(right:10),
          //   child: IconButton(onPressed: () {
          //     Get.to(()=>const You(),
          //     transition:Transition.rightToLeft
          //     );
          //   }, icon: const CircleAvatar(backgroundImage:AssetImage("assets/images/profile.png"),)),
          // ),
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
        onPressed: (){},
        backgroundColor: AppColors.defaultcolor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: const Icon(Icons.chat),
        ),
    );
  }
}
