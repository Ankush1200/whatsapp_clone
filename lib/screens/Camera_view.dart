import 'dart:io';

import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Colors/theaming.dart';

class CameraView extends StatelessWidget {
  const CameraView({super.key, required this.path,});

  final String path;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: [
          IconButton(onPressed: (){}, icon:const Icon(Icons.hd_outlined)),
          IconButton(onPressed: (){}, icon:const Icon(Icons.crop_rotate)),
          IconButton(onPressed: (){}, icon:const Icon(Icons.text_fields_rounded)),
          IconButton(onPressed: (){}, icon:const Icon(Icons.edit_outlined)),
          const SizedBox(width: 10,)
        ],
      ),
      body:SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/1.5,
              child: Image.file(File(path),
              fit:BoxFit.cover,
              ),
            ),
            Positioned(
              bottom:10,
              child: Row(
                children: [
                  SizedBox(
                     width: MediaQuery.of(context).size.width-50,
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: TextFormField(
                        style: const TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          hintText: 'Add a caption...',
                          hintStyle: const TextStyle(color: Colors.white),
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
                          prefixIcon:const Icon(Icons.add_photo_alternate,color: Colors.white,) ,
                          filled: true,
                          fillColor: const Color.fromARGB(255, 1, 27, 24),
                          contentPadding: const EdgeInsets.all(8)
                          ),
                      ),
                    ),
                  ),
                  const CircleAvatar(
                    radius: 23,
                    backgroundColor: AppColors.defaultcolor,
                    child: Icon(Icons.check_sharp,color:Colors.white,),
              ),
                ],
              ),
            ),
        ],)
      ),
    );
  }
}