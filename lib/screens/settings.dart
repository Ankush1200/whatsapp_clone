import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:whatsapp_clone/Colors/theaming.dart';
import 'package:whatsapp_clone/Model/settings_model.dart';
import 'package:whatsapp_clone/Widgets/settings_item.dart';

class You extends StatefulWidget {
  const You({super.key});

  @override
  State<You> createState() => _YouState();
}

class _YouState extends State<You> {
  List<SettingsModel> settingsModel = [
    SettingsModel(
        icon: Icons.key,
        title: 'Account',
        subtitle: 'Security notifications,change\nnumber'),
    SettingsModel(
        icon: Icons.lock,
        title: 'Privacy',
        subtitle: 'Block contacts, disappearing \nmessages'),
    SettingsModel(
        icon: Icons.child_care,
        title: 'Avtar',
        subtitle: 'Create, edit,profile photo'),
    SettingsModel(
        icon: Icons.chat,
        title: 'Chats',
        subtitle: 'Theam, wallpaper,chat\nhistory'),
    SettingsModel(
        icon: Icons.notifications,
        title: 'Notifications',
        subtitle: 'Message,group & call tones'),
    SettingsModel(
        icon: Icons.circle_outlined,
        title: 'Storage and data',
        subtitle: 'Network useges,auto-downlodes'),
    SettingsModel(
        icon: Icons.language,
        title: 'App Languages',
        subtitle: 'English(device\'s language'),
    SettingsModel(
        icon: Icons.help_outline,
        title: 'Help',
        subtitle: 'Help center,contact us, privacy policy'),
    SettingsModel(icon: Icons.group, title: 'Invite a friend', subtitle: ''),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: AppColors.defaultcolor,
        title: const Text("Settings"),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: IconButton(
                onPressed: () {}, icon: const Icon(Icons.search_rounded)),
          )
        ],
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 80,
                width: MediaQuery.of(context).size.width,
                child: ListTile(
                  onTap: () {},
                  leading: CircleAvatar(
                    backgroundColor: Colors.grey,
                    radius: 30,
                    child: SvgPicture.asset(
                      "assets/icons/person.svg",
                      // ignore: deprecated_member_use
                      color: Colors.white,
                    ),
                  ),
                  title: const Text(
                    "Ankush Prajapati",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  subtitle: const Text(
                    "The happiness of your life is depend upon the quality of your thoughts..💖 Happy coding.....",
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  trailing: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.qr_code,
                            color: AppColors.defaultcolor,
                          )),
                      IconButton(
                          onPressed: () {
                            showModalBottomSheet(
                              context: context,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              builder: (BuildContext context) {
                                // ignore: sized_box_for_whitespace
                                return Container(
                                  height: 200,
                                  child: ListView(
                                    children: [
                                      const Icon(Icons.linear_scale),
                                      ListTile(
                                        leading: CircleAvatar(
                                          backgroundColor: Colors.grey,
                                          child: SvgPicture.asset(
                                            "assets/icons/person.svg",
                                            // ignore: deprecated_member_use
                                            color: Colors.white,
                                          ),
                                        ),
                                        title: const Text(
                                          "Ankush Prajapati",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        subtitle: const Text("+91 7860775609"),
                                        trailing: const Icon(
                                          Icons.check_circle,
                                          color: AppColors.defaultcolor,
                                        ),
                                      ),
                                      const ListTile(
                                        // leading: CircleAvatar(backgroundImage: AssetImage("assets/images/profile.png")),
                                        title: Text("Add another account",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500)),
                                        // subtitle: Text("+91 7860775609"),
                                        leading: CircleAvatar(
                                            backgroundColor: Colors.grey,
                                            // ignore: deprecated_member_use
                                            child: Icon(
                                              Icons.add,
                                              size: 25,
                                              color: AppColors.defaultcolor,
                                            )),
                                        // : Icon(Icons.add_circle_outline, color: AppColors.defaultcolor,),
                                      )
                                    ],
                                  ),
                                );
                              },
                            );
                          },
                          icon: const Icon(
                            Icons.arrow_drop_down_circle_outlined,
                            color: AppColors.defaultcolor,
                          )),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const Divider(
            height: 0,
            thickness: 0,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 10,
          ),
          Expanded(
            child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: settingsModel.length,
                itemBuilder: (context, index) {
                  return SettingItem(settingsModel: settingsModel[index]);
                }),
          ),
        ],
      ),
    );
  }
}

// ListView.builder(
//             itemCount: settingsModel.length,
//             itemBuilder: (context,index){
//               return SettingItem(settingsModel: settingsModel[index]);
//           }),
