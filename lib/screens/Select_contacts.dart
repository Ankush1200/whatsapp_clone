import 'package:flutter/material.dart';

class SelectContacts extends StatelessWidget {
  const SelectContacts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing:2,
        title: const Text("Select Contacts"),
        actions: const [
          Icon(Icons.search_rounded),
          Icon(Icons.more_vert),
          SizedBox(width: 5,)
        ],
      ),
    );
  }
}