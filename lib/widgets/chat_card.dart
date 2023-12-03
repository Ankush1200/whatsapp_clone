import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:whatsapp_clone/screens/You.dart';


class ChatList extends StatelessWidget {
  const ChatList({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Get.to(()=>You(),
              transition: Transition.rightToLeftWithFade
              );
      },
      child: Column(
        children: [
          ListTile(
            title: const Text("Ankush Prajapati",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
            subtitle:const Row(children: [
              Icon(Icons.done_all,size:17,color: Colors.blue,),
              SizedBox(width:5,),
              Text("Hi Ankush!",),
            ]),
            leading: CircleAvatar(radius:23,
            backgroundColor: Colors.grey,
            // ignore: deprecated_member_use
            child:SvgPicture.asset("assets/icons/person.svg",color: Colors.white,),
            ),
            trailing:const Column(children: [
              SizedBox(height:10,),
              Text("03:52PM",style: TextStyle(fontSize: 12),),
              SizedBox(height:5,),
              Icon(Icons.circle,color: Color.fromARGB(255, 7, 225, 79),size:23,)
            ],),
            // onTap:(){
              
            // },
          ),
        ],
      ),
    );
  }
}