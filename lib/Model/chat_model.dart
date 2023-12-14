class ChatModel{
  String name;
  String icon;
  String currentmessage;
  String time;
  bool isgroup;
  String status;
  bool isselected;

  ChatModel({
   this.name='',
   this.icon='',
   this.isgroup=false,
   this.time='',
   this.currentmessage='',
   this.status='',
   this.isselected=false,
 });

}