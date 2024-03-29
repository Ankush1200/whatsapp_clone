import 'package:flutter/material.dart';

class OwnMessageCard extends StatelessWidget {
  const OwnMessageCard({super.key});
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: ConstrainedBox(constraints: BoxConstraints(
        maxWidth: MediaQuery.of(context).size.width-45,
      ),
      child: const Card(
        elevation: 1,
        margin: EdgeInsets.symmetric(horizontal:8,vertical: 5),
        color: Color(0xffdcf8c6),
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(top:5,bottom:20,left:10,right:20),
              child: Text("It's Time To Explore the AI Technnology",
              style: TextStyle(
                fontWeight: FontWeight.w500
              ),
              ),
            ),
            SizedBox(width: 5,),
            Positioned(
              bottom:4,
              right: 10,
              child: Row(
                children: [
                  Text('15:20',style: TextStyle(fontSize:12),),
                  Icon(Icons.done_all,size: 15,color: Colors.blue,)
                ],
              ),
            ),
          ],
        ),
      ),
      ),
    );
  }
}