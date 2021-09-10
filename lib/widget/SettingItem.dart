import 'package:flutter/material.dart';

class SettingItem extends StatelessWidget {
  final String settingName;
  final bool hasBorder;

  const SettingItem({
    Key? key,
    required this.settingName,
    this.hasBorder = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50.0,
      margin: EdgeInsets.only(left: 15.0),
      decoration: BoxDecoration(
        border: hasBorder
            ? Border(bottom: BorderSide(width: 1.0, color: Colors.black45))
            : null,
      ),
      child: Row(
        children: [Text(settingName), Spacer(), Text('$key')],
      ),
    );
  }
}
