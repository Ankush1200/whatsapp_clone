import 'package:flutter/material.dart';

class ReplyCard extends StatelessWidget {
  const ReplyCard({super.key});
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: ConstrainedBox(constraints: BoxConstraints(
        maxWidth: MediaQuery.of(context).size.width-45,
      ),
      child: const Card(
        elevation: 1,
        margin: EdgeInsets.symmetric(horizontal:8,vertical: 5),
        color: Colors.white,
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(top:5,bottom:20,left:10,right:20),
              child: Text("Okay Lets explore",
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
            )
          ],
        ),
      ),),
    );
  }
}