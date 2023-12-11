import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Colors/theaming.dart';

class NewCommunity extends StatelessWidget {
  const NewCommunity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        const SizedBox(
          height: 100,
        ),
        Image.asset("assets/images/Community_logo.png"),
        const Text(
          "Create a new community",
          style: TextStyle(
              fontSize: 23, color: Colors.black, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height:10,
        ),
        const Text(
          "Bring together a neighbourhood,\nschool or more. Create topic-based\ngroups for members, and easily send\nadmin announcements",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize:15, color:AppColors.subtitle, fontWeight: FontWeight.bold,
          ),
        ),
        Expanded(child: Container()),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(shape: const StadiumBorder()),
                  child: const Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal:70, vertical: 12),
                    child: Text(
                      "Start new community",
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height:20,)
      ]),
    );
  }
}
