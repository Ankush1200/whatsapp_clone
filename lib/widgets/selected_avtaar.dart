import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:whatsapp_clone/Colors/theaming.dart';

class SelectedAvtaar extends StatelessWidget {
  const SelectedAvtaar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(5.0),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.bottomRight,
            children: [
              CircleAvatar(
                backgroundColor: Colors.grey,
                radius: 23,
                child: SvgPicture.asset(
                  "assets/icons/person.svg",
                  // ignore: deprecated_member_use
                  color: Colors.white,
                ),
              ),
              const CircleAvatar(
                backgroundColor:Colors.red,
                radius: 10,
                child: Icon(
                  Icons.clear,
                  size: 18,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          const Text("Hi"),
        ],
      ),
    );
  }
}