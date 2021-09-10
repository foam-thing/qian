import 'package:flutter/material.dart';

import '../widget/SettingGroup.dart';
import '../widget/SettingItem.dart';

class BookSetting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('账本设置'),
      ),
      body: Column(
        children: [
          SettingGroup(children: [
            SettingItem(settingName: '账本名字'),
            SettingItem(settingName: '货币单位', hasBorder: false),
          ]),
          SizedBox(height: 25.0),
          SettingGroup(children: [
            SettingItem(settingName: '账本模式'),
            SettingItem(settingName: '显示时间'),
            SettingItem(settingName: '预算设置', hasBorder: false),
          ]),
          SizedBox(height: 25.0),
          SettingGroup(children: [
            SettingItem(settingName: '隐藏此账本', hasBorder: false),
          ]),
          SizedBox(height: 25.0),
          SizedBox(
            width: double.infinity,
            height: 50.0,
            child: OutlinedButton(child: Text('复制账本'), onPressed: () {}),
          ),
          SizedBox(height: 25.0),
          SizedBox(
            width: double.infinity,
            height: 50.0,
            child: OutlinedButton(child: Text('删除账本'), onPressed: () {}),
          ),
        ],
      ),
    );
  }
}
