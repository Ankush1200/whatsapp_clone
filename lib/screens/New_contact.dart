import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Colors/theaming.dart';

class AddNewContact extends StatelessWidget {
  const AddNewContact({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        title: const Text("New contact"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Padding(
                  padding: EdgeInsets.all(10),
                  child: Icon(
                    Icons.person,
                    color: AppColors.defaultcolor,
                  ),
                ),
                Expanded(
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: "First name",
                    ),
                    keyboardType: TextInputType.name,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const SizedBox(
                  height: 10,
                  width: 43,
                ),
                Expanded(
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: "last name",
                    ),
                    keyboardType: TextInputType.name,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Padding(
                  padding: EdgeInsets.all(10),
                  child: Icon(
                    Icons.call,
                    color: AppColors.defaultcolor,
                  ),
                ),
                Expanded(
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: "Phone",
                    ),
                    keyboardType: TextInputType.phone,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Padding(
                  padding: EdgeInsets.all(10),
                  child: Icon(
                    Icons.download_rounded,
                    color: AppColors.defaultcolor,
                  ),
                ),
                Expanded(
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: "Save to",
                    ),
                    keyboardType: TextInputType.name,
                  ),
                ),
              ],
            ),
            // const SizedBox(
            //   height: 10,
            // ),
            TextButton(
              onPressed: () {},
              child: const Text(
                "Add information",
                style: TextStyle(
                    color: AppColors.defaultcolor,
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ),
            ),
            Expanded(child: Container()),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(shape: const StadiumBorder()),
                  child: const Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 125, vertical: 12),
                    child: Text(
                      "Save",
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
