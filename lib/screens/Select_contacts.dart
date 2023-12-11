import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Model/chatmodel.dart';
import 'package:whatsapp_clone/Screens/new_group.dart';

import '../Widgets/Contact_button.dart';
import '../Widgets/Contact_list.dart';
import 'New_contact.dart';

class SelectContacts extends StatefulWidget {
  const SelectContacts({super.key});

  @override
  State<SelectContacts> createState() => _SelectContactsState();
}

class _SelectContactsState extends State<SelectContacts> {
  List<ChatModel> contacts = [
    ChatModel(name: "Anksuh Prajapati(YOU)",icon: "assets/icons/person.svg",status: "Message Yourself",),
    ChatModel(name: "Rakesh Maurya",icon: "assets/icons/person.svg",status: "Hi there I am using whatapp",),
    ChatModel(name: "Nitin Prajapati",icon: "assets/icons/person.svg",status: "Student",),
    ChatModel(name: "Saurabh Dubey",icon: "assets/icons/person.svg",status: "Follow Dream",),
    ChatModel(name: "Jay",icon: "assets/icons/person.svg",status: "All is Good",),
    ChatModel(name: "Piyush Prajapati",icon: "assets/icons/person.svg",status: "YouTuber",),
    ChatModel(name: "Rohan Jayswaal",icon: "assets/icons/person.svg",status: "Whatsapp Only",),
    ChatModel(name: "Mammi",icon: "assets/icons/person.svg",status: "Hi there I am using whatsapp",),
    ChatModel(name: "Gurmeet Singhla",icon: "assets/icons/person.svg",status: "App Developer",),
    ChatModel(name: "Vedant Singh",icon: "assets/icons/person.svg",status: "Hi there I am using whatapp",),
    ChatModel(name: "Nishant Prajapati",icon: "assets/icons/person.svg",status: "Student",),
    ChatModel(name: "Yash Jayswaal",icon: "assets/icons/person.svg",status: "At TCS",),
    ChatModel(name: "Raj Yadav",icon: "assets/icons/person.svg",status: "Whatsapp Only",),
    ChatModel(name: "Raunak Prajapati",icon: "assets/icons/person.svg",status: "At Home",),
    ChatModel(name: "Aman Mishra",icon: "assets/icons/person.svg",status: "At Home",),
    ChatModel(name: "Kushagra Gupta",icon: "assets/icons/person.svg",status: "Flutter Developer",),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          titleSpacing: 0,
          title: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Select Contacts"),
              Text(
                "16 contacts",
                style: TextStyle(fontSize: 12),
              )
            ],
          ),
          actions: [
            const Icon(Icons.search_rounded),
            PopupMenuButton(
              onSelected: (value) {},
              itemBuilder: (BuildContext context) {
                return const [
                  PopupMenuItem(
                    value: 'Inviite a friend',
                    child: Text("Inviite a friend"),
                  ),
                  PopupMenuItem(
                    value: 'Contacts',
                    child: Text("Contacts"),
                  ),
                  PopupMenuItem(
                    value: 'Refresh',
                    child: Text("Refresh"),
                  ),
                  PopupMenuItem(
                    value: 'Help',
                    child: Text("Help"),
                  ),
                ];
              },
            ),
            const SizedBox(
              width: 5,
            )
          ],
        ),
        body: ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount:contacts.length+3,
            itemBuilder: (context, index) {
              if(index==0){
                return InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (builder)=>const NewGroupPage()));
                  },
                  child: const ContactButton(name: 'New Group', icon: Icons.group,));
              }
              if(index==1){
               return InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (builder)=>const AddNewContact()));
                },
                child: const ContactButton(name:'New Contact',icon: Icons.person_add,));
              }
              if(index==2){
               return const ContactButton(name:'New Community',icon: Icons.groups);
              }
              return InkWell(
                onTap: (){},
                child: ContactList(
                  chatModel: contacts[index-3],
                ),
              );
            }));
  }
}
