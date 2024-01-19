import 'package:emoji_picker_flutter/emoji_picker_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:whatsapp_clone/Colors/theaming.dart';
import 'package:whatsapp_clone/Screens/Camera_Access.dart';
import 'package:whatsapp_clone/Widgets/Attach_file.dart';
import '../Model/chat_model.dart';
import '../Widgets/Reply_card.dart';
import '../Widgets/own_Message_card.dart';

class IndividualChat extends StatefulWidget {
  final ChatModel chatModel;
  const IndividualChat({
    super.key,
    required this.chatModel,
  });

  @override
  State<IndividualChat> createState() => _IndividualChatState();
}

class _IndividualChatState extends State<IndividualChat> {
  bool showingEmoji = false;
  FocusNode focusNode = FocusNode();
  TextEditingController textEditingController=TextEditingController();

  @override
  void initState() {
    super.initState();
    focusNode.addListener(() {
      if (focusNode.hasFocus) {
        setState(() {
          showingEmoji = false;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset('assets/images/chatbackground.png',
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        fit: BoxFit.cover,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
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
            child: WillPopScope(
              child: Stack(
                children: [
                  ListView(
                    physics:const BouncingScrollPhysics(),
                    shrinkWrap: true,
                    children: const [
                      OwnMessageCard(),
                      ReplyCard(),
                      OwnMessageCard(),
                      ReplyCard(),
                      OwnMessageCard(),
                      ReplyCard(),
                      OwnMessageCard(),
                      ReplyCard(),
                      OwnMessageCard(),
                      ReplyCard(),
                      OwnMessageCard(),
                      ReplyCard(),
                      OwnMessageCard(),
                      ReplyCard(),
                      OwnMessageCard(),
                      ReplyCard(),
                    ],
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width - 55,
                              child: Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30)),
                                child: TextFormField(
                                  controller: textEditingController,
                                  focusNode: focusNode,
                                  textAlignVertical: TextAlignVertical.center,
                                  keyboardType: TextInputType.multiline,
                                  minLines: 1,
                                  maxLines: 5,
                                  decoration: InputDecoration(
                                      prefixIcon: IconButton(
                                          onPressed: () {
                                            focusNode.unfocus();
                                            focusNode.canRequestFocus = false;
                                            setState(() {
                                              showingEmoji = !showingEmoji;
                                              // showingEmoji?
                                              // FocusScope.of(context).unfocus():FocusScope.of(context).requestFocus();
                                            });
                                          },
                                          icon: const Icon(
                                              Icons.emoji_emotions_outlined)),
                                      suffixIcon: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                // Attached file using model bottum sheeet
                                          IconButton(
                                            onPressed: () {
                                              showModalBottomSheet(
                                              backgroundColor: Colors.transparent,
                                              context: context, 
                                              builder:(BuildContext context){
                                                return const AttachFile();
                                              });
                                            },
                                            icon: const Icon(Icons.attach_file),
                                          ),
                                          IconButton(
                                            onPressed: () {
                                              Navigator.push(context,MaterialPageRoute(builder: (builder)=>const CameraAccess()));
                                            },
                                            icon: const Icon(
                                                Icons.camera_alt_rounded),
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
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.mic,
                                    color: Colors.white,
                                  )),
                            )
                          ],
                        ),

                        //------------- for showing the emoji below your chat area--------------------

                        showingEmoji
                            ? SizedBox(
                                height: MediaQuery.of(context).size.height / 3,
                                child: emojiSelect())
                            : const SizedBox(),
                      ],
                    ),
                  ),
                ],
              ),
              onWillPop: () {
                if (showingEmoji) {
                  setState(() {
                    showingEmoji=false;
                  });
                }else{
                  Navigator.pop(context);
                }
                return Future.value(
                  false
                );
              },
            ),
          ),
        ),
      ],
    );
  }

  Widget emojiSelect() {
    return EmojiPicker(
      onEmojiSelected: (category, emoji) {
        setState(() {
          textEditingController.text=textEditingController.text + emoji.emoji;
        });
      },
    );
  }
}
