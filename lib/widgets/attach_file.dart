import 'package:flutter/material.dart';

class AttachFile extends StatelessWidget {
  const AttachFile({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:380,
      width: MediaQuery.of(context).size.width,
      child:  Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        margin: const EdgeInsets.only(bottom:60,right: 10,left: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:58,vertical:5),
              child: Row(      
                children: [
                  iconCreation(Icons.insert_drive_file,"Documents", Colors.deepPurple),
                  const SizedBox(height:90,width:10,),
                  iconCreation(Icons.camera_alt,"Camera", Colors.pink),
                  const SizedBox(height:90,width: 17,),
                  iconCreation(Icons.photo_size_select_actual,"Gallery", Colors.purple),
              ],),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:66,vertical: 5),
              child: Row(     
                children: [
                  iconCreation(Icons.headphones,"Audio", Colors.deepOrangeAccent),
                  const SizedBox(height:90,width: 22,),
                  iconCreation(Icons.location_pin,"Location", const Color.fromARGB(255, 4, 109, 8)),
                  const SizedBox(height:90,width: 17,),
                  iconCreation(Icons.person,"Contacts", Colors.blue),
              ],),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:65,vertical: 5),
              child: Row(     
                children: [
                  iconCreation(Icons.currency_rupee,"Payment", Colors.green),
                  const SizedBox(height:90,width: 22,),
                  iconCreation(Icons.poll,"Poll", Colors.deepPurple),
                  // const SizedBox(height:80,width: 15,),
                  // iconCreation(Icons.photo_size_select_actual,"Gallery", Colors.purple),
              ],),
            ),
          ],
        ),
      ),
    );
  }
  Widget iconCreation(IconData icon, String text, Color color){
    return  Column( 
      mainAxisAlignment: MainAxisAlignment.spaceAround, 
      children: [
        InkWell(
          onTap: (){},
          child: CircleAvatar(
            backgroundColor: color,
            radius:28,
            child: Icon(icon,size:29,color: Colors.white,),
          ),
        ),
        Text(text),
      ],
    );
  }
}