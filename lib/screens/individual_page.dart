import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import '../Model/chatmodel.dart';

class IndividualChat extends StatefulWidget {
  final ChatModel chatModel;
  const IndividualChat({
    super.key,
    required this.chatModel,
    required Transition transition,
  });

  @override
  State<IndividualChat> createState() => _IndividualChatState();
}

class _IndividualChatState extends State<IndividualChat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          titleSpacing: 10,
          leadingWidth: 65,
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(Icons.arrow_back),
                CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: SvgPicture.asset(
                    widget.chatModel.icon,
                    // ignore: deprecated_member_use
                    color: Colors.white,
                    height: 35,
                  ),
                )
              ],
            ),
          ),
          title: InkWell(
            onTap: (){},
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.chatModel.name,
                ),
                const Text(
                  "Last scene today at 12:14AM",
                  style: TextStyle(
                    fontSize: 10,
                  ),
                )
              ],
            ),
          ),
          actions: [
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.videocam_rounded)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.call)),
            PopupMenuButton<String>(
              onSelected: (value){

              },
              itemBuilder: (BuildContext context) {
                return const [
                  PopupMenuItem(
                    value: 'View Contacts',
                    child: Text("View Contacts"),
                  ),
                  PopupMenuItem(
                    value: 'Media, links, docs',
                    child: Text("Media, links, docs"),
                  ),
                  PopupMenuItem(
                    value: 'Search',
                    child: Text("Search"),
                  ),
                  PopupMenuItem(
                    value: 'Mute notification',
                    child: Text("Mute notification"),
                  ),
                  PopupMenuItem(
                    value: 'Disappearing messages',
                    child: Text("Disappearing messages"),
                  ),
                  PopupMenuItem(
                    value: 'Wallpaper',
                    child: Text("Wallpaper"),
                  ),
                ];
              },
            ),
          ]),
      body: Container(),
    );
  }
}
