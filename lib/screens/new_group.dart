
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Widgets/selected_avtaar.dart';
import '../Model/chatmodel.dart';
import '../Widgets/Contact_list.dart';

class NewGroupPage extends StatefulWidget {
  const NewGroupPage({super.key});

  @override
  State<NewGroupPage> createState() => _NewGroupPageState();
}

class _NewGroupPageState extends State<NewGroupPage> {
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
    ChatModel(name: "Sachin Gupta",icon: "assets/icons/person.svg",status: "Work is worship",),
    ChatModel(name: "Anmol Mishra",icon: "assets/icons/person.svg",status: "Radhe Radhe🙏",),
    ChatModel(name: "Kushwaha",icon: "assets/icons/person.svg",status: "At College",),
  ];
  List<ChatModel> selectedContect=[];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        title:  const Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("New Group",style:TextStyle(fontSize:18),),
            Text("Add members",style:TextStyle(fontSize: 10),),
          ],
        ),
        actions: const [
           Icon(Icons.search_rounded),
           SizedBox(width: 20,)
        ],
      ),
      body:Stack(
        children: [
          ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount:contacts.length+1,
                itemBuilder: (context, index) {
                  if(index==0){
                    return  Container(height:selectedContect.isNotEmpty?70:0);
                  }
                  return InkWell(
                    onTap: (){
                      if(contacts[index-1].isselected==false){
                        setState(() {
                          contacts[index-1].isselected=true;
                          selectedContect.add(contacts[index-1]);
                        });
                      }else{
                        setState(() {
                          contacts[index-1].isselected=false;
                          selectedContect.remove(contacts[index-1]);
                        });
                      }
                    },
                    child: ContactList(
                      chatModel: contacts[index-1],
                    ),
                  );
                },),
                selectedContect.isNotEmpty? Column(
                  children: [
                    Container(
                      height:75,
                      color: Colors.white,
                      child:ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: selectedContect.length,
                        itemBuilder: (context,index){
                          return InkWell( 
                            onTap: (){
                              setState(() {
                                selectedContect[index].isselected=false;
                                selectedContect.remove(selectedContect[index]);
                              });
                            },
                            child: SelectedAvtaar(chatModel:selectedContect[index]),);
                        })
                    ),
                     const Divider(thickness: 1,height: 0,),
                  ],
                ):const SizedBox(height: 0,width: 0,)
        ],
      )
    );
  }
}
