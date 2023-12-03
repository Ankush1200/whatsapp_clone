import 'package:flutter/material.dart';
import 'package:whatsapp_clone/widgets/my_cutom_list.dart';

import '../colors/theaming.dart';

class You extends StatefulWidget {
  const You({super.key});

  @override
  State<You> createState() => _YouState();
}

class _YouState extends State<You> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        backgroundColor: AppColors.defaultcolor,
        title: const Text("You"),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: IconButton(
                onPressed: () {}, icon: const Icon(Icons.search_rounded)),
          )
        ],
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 30),
                child: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/profile.png"),
                  radius: 50,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextButton(
                child: const Text(
                  "Ankush Prajapati⌄",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color: AppColors.textcolor),
                ),
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
                            const ListTile(
                              leading: CircleAvatar(
                                  backgroundImage:
                                      AssetImage("assets/images/profile.png")),
                              title: Text(
                                "Ankush Prajapati",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              subtitle: Text("+91 7860775609"),
                              trailing: Icon(
                                Icons.check_circle,
                                color: AppColors.defaultcolor,
                              ),
                            ),
                            ListTile(
                              // leading: CircleAvatar(backgroundImage: AssetImage("assets/images/profile.png")),
                              title: const Text("Add another account",
                                  style:
                                      TextStyle(fontWeight: FontWeight.w500)),
                              // subtitle: Text("+91 7860775609"),
                              leading: IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.add_circle_outline,
                                  color: AppColors.defaultcolor,
                                ),
                              ),
                              // : Icon(Icons.add_circle_outline, color: AppColors.defaultcolor,),
                            )
                          ],
                        ),
                      );
                    },
                  );
                },
              ),
              const Text(
                "+91 7860775609",
                style: TextStyle(
                    fontSize: 17, color: Color.fromARGB(255, 121, 118, 118)),
              ),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                width: 300,
                child: Text(
                  "The happiness of your life is depend upon the quality of your thoughts....💖",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 17, color: AppColors.subtitle),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 3,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  InkWell(
                    borderRadius: BorderRadius.circular(20),
                    onTap: () {},
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      elevation: 2,
                      child: const Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 25.0, vertical: 10),
                        child: Column(
                          children: [
                            Icon(
                              Icons.person_pin,
                              color: AppColors.defaultcolor,
                              size: 30,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Profile",
                              style: TextStyle(fontSize: 15),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  InkWell(
                    onTap: () {},
                    borderRadius: BorderRadius.circular(20),
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      elevation: 2,
                      child: const Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 23.0, vertical: 10),
                        child: Column(
                          children: [
                            Icon(
                              Icons.lock,
                              color: AppColors.defaultcolor,
                              size: 30,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Privacy",
                              style: TextStyle(fontSize: 15),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  InkWell(
                    onTap: () {},
                    borderRadius: BorderRadius.circular(20),
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      elevation: 2,
                      child: const Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 10),
                        child: Column(
                          children: [
                            Icon(
                              Icons.contacts,
                              color: AppColors.defaultcolor,
                              size: 30,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Contacts",
                              style: TextStyle(fontSize: 15),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
