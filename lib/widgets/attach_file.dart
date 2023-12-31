import 'package:flutter/material.dart';

import '../Screens/Camera_Access.dart';

class AttachFile extends StatelessWidget {
  const AttachFile({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 380,
      width: MediaQuery.of(context).size.width,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        margin: const EdgeInsets.only(bottom: 60, right: 10, left: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 58, vertical: 5),
              child: Row(
                children: [
                  iconCreation(
                      Icons.insert_drive_file, "Documents", Colors.deepPurple,context),
                  const SizedBox(
                    height: 90,
                    width: 10,
                  ),
                  iconCreation(Icons.camera_alt, "Camera", Colors.pink,context),
                  const SizedBox(
                    height: 90,
                    width: 17,
                  ),
                  iconCreation(
                      Icons.photo_size_select_actual, "Gallery", Colors.purple,context),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 66, vertical: 5),
              child: Row(
                children: [
                  iconCreation(
                      Icons.headphones, "Audio", Colors.deepOrangeAccent,context),
                  const SizedBox(
                    height: 90,
                    width: 22,
                  ),
                  iconCreation(Icons.location_pin, "Location",
                      const Color.fromARGB(255, 4, 109, 8),context),
                  const SizedBox(
                    height: 90,
                    width: 17,
                  ),
                  iconCreation(Icons.person, "Contacts", Colors.blue,context),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 65, vertical: 5),
              child: Row(
                children: [
                  iconCreation(Icons.currency_rupee, "Payment", Colors.green,context),
                  const SizedBox(
                    height: 90,
                    width: 22,
                  ),
                  iconCreation(Icons.bar_chart, "Poll", Colors.deepPurple,context),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget iconCreation(IconData icon, String text, Color color,BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        InkWell(
          onTap: () {
            if(text=="Camera"){
              Navigator.push(context,MaterialPageRoute(builder: (builder)=>const CameraAccess()));
            }
          },
          child: CircleAvatar(
            backgroundColor: color,
            radius: 28,
            child: Icon(
              icon,
              size: 29,
              color: Colors.white,
            ),
          ),
        ),
        Text(text),
      ],
    );
  }
}
