
import 'package:flutter/material.dart';

class You extends StatefulWidget {
  const You({super.key});

  @override
  State<You> createState() => _YouState();
}

class _YouState extends State<You> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("You"),
      actions:  [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: IconButton(onPressed: (){}, icon: const Icon(Icons.search_rounded)),)
      ],
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top:30),
                child: CircleAvatar(backgroundImage:AssetImage("assets/images/profile.png"),radius:50,),
              ),
              const SizedBox(height: 10,),
              Text("Ankush Prajapati",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
              Text("+91 7860775609",style: TextStyle(fontSize:17,color: const Color.fromARGB(255, 121, 118, 118)),),
              const SizedBox(height: 10,),
              Container(
                width: 300,
                child: const Text("The happiness of your life is depend upon the quality of your thoughts....💖",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize:17,color: Color.fromARGB(255, 124, 123, 123)),
                overflow: TextOverflow.ellipsis,
                maxLines: 3,
                ),
              ),
              const SizedBox(height: 15,),
              Row(
                children: [
                   Card(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    elevation:2,
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal:25.0,vertical: 10),
                      child: Column(
                        children: [
                          Icon(Icons.person_pin,color: Color(0xFF075E54),),
                          SizedBox(height: 10,),
                          Text("Profile",style: TextStyle(fontSize:15),)
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 10,),
                   Card(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    elevation:2,
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal:23.0,vertical: 10),
                      child: Column(
                        children: [
                          Icon(Icons.lock,color: Color(0xFF075E54),),
                          SizedBox(height: 10,),
                          Text("Privacy",style: TextStyle(fontSize:15),)
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 10,),
                   Card(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    elevation:2,
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal:20.0,vertical: 10),
                      child: Column(
                        children: [
                          Icon(Icons.contacts,color: Color(0xFF075E54),size:30,),
                          SizedBox(height: 10,),
                          Text("Contacts",style: TextStyle(fontSize:15),)
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      )
    );
  }
}