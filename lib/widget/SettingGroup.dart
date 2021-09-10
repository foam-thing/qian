import 'package:flutter/material.dart';

class SettingGroup extends StatelessWidget {
  final List<Widget> children;

  SettingGroup({Key? key, required this.children}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          top: BorderSide(width: 1.0, color: Colors.black45),
          bottom: BorderSide(width: 1.0, color: Colors.black45),
        ),
      ),
      child: Column(children: children),
    );
  }
}
