import 'package:flutter/material.dart';


class IndividualChat extends StatefulWidget {
  const IndividualChat({super.key});

  @override
  State<IndividualChat> createState() => _IndividualChatState();
}

class _IndividualChatState extends State<IndividualChat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ankush Prajapti"),
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.video_call_sharp)),
          IconButton(onPressed: (){}, icon: const Icon(Icons.call)),
          IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert)),
      ]),
      body:Container(

      ),
    );
  }
}