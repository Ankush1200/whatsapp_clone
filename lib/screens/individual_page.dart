import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:whatsapp_clone/Colors/theaming.dart';
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
      // backgroundColor: Colors.blueGrey,
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
            onTap: () {},
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
              onSelected: (value) {},
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
      body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: [
              ListView(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 5),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width - 55,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                          child: TextFormField(
                            textAlignVertical: TextAlignVertical.center,
                            minLines: 1,
                            maxLines: 5,
                            decoration: InputDecoration(
                                prefixIcon: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                        Icons.emoji_emotions_outlined)),
                                suffixIcon: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    IconButton(
                                      onPressed: () {},
                                      icon: const Icon(Icons.attach_file),
                                    ),
                                    IconButton(
                                      onPressed: () {},
                                      icon:
                                          const Icon(Icons.camera_alt_rounded),
                                    ),
                                  ],
                                ),
                                //border: OutlineInputBorder(borderRadius: BorderRadius.circular(50),),
                                hintText: 'Message',
                                border: InputBorder.none,
                                hintStyle: const TextStyle(
                                    fontWeight: FontWeight.bold),
                                contentPadding: const EdgeInsets.all(8.0)),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 2,
                      ),
                      CircleAvatar(
                        backgroundColor: AppColors.defaultcolor,
                        radius: 24,
                        child: IconButton(
                          onPressed: () {}, icon: const Icon(Icons.mic,color:Colors.white,)),
                      )
                    ],
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
