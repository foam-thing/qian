import 'package:flutter/material.dart';

import 'package:qian/widget/SettingItem.dart';
import 'package:qian/widget/SettingGroup.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: Column(
        children: [
          SettingGroup(children: [
            SettingItem(settingName: '未来项提醒'),
            SettingItem(settingName: '密码保护'),
            SettingItem(settingName: '去除水印', hasBorder: false),
          ]),
          SizedBox(height: 25.0),
          SettingGroup(children: [
            SettingItem(settingName: '数字千分号'),
            SettingItem(settingName: '震动效果', hasBorder: false),
          ]),
          SizedBox(height: 25.0),
          SettingGroup(children: [
            SettingItem(settingName: '切换语言'),
            SettingItem(settingName: '评价一下'),
            SettingItem(settingName: '联系作者'),
            SettingItem(settingName: '分享'),
            SettingItem(settingName: '更多', hasBorder: false),
          ]),
        ],
      ),
    );
  }
}
