
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Model/settings_model.dart';

class SettingItem extends StatelessWidget {
  final SettingsModel settingsModel;
  const SettingItem({super.key,required this.settingsModel});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:75,
      child: ListTile(
        onTap:(){},
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(settingsModel.icon),
        ),
        title: Text(settingsModel.title,style: const TextStyle(fontWeight: FontWeight.w500),),
        subtitle: Text(settingsModel.subtitle,style: const TextStyle(fontWeight: FontWeight.w500),),
      ),
    );
  }
}