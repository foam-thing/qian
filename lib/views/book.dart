import 'package:flutter/material.dart';

class Book extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Book Name'),
        actions: [
          IconButton(
            icon: Icon(Icons.analytics),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.import_export),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              Navigator.pushNamed(context, '/bookSetting');
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.blueGrey,
        label: Text('记一笔'),
        icon: Icon(Icons.flash_on),
        onPressed: () {},
      ),
      body: BookView(),
    );
  }
}

class BookView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        children: [
          Stats(),
          ListView(
            shrinkWrap: true,
            padding: const EdgeInsets.all(20.0),
            children: List.generate(1, (index) {
              return RecordGroup(children: [
                Record(settingName: '餐饮'),
                Record(settingName: '餐饮'),
                Record(settingName: '餐饮'),
                Record(settingName: '餐饮'),
                Record(settingName: '餐饮', hasBorder: false),
              ]);
            }),
          ),
        ],
      ),
    );
  }
}

class Stats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Text('此处是统计饼图'),
      Spacer(),
      Text('消费金额'),
    ]);
  }
}

class RecordGroup extends StatelessWidget {
  final List<Widget> children;

  RecordGroup({Key? key, required this.children}) : super(key: key);

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

class Record extends StatelessWidget {
  final String settingName;
  final bool hasBorder;

  const Record({Key? key, required this.settingName, this.hasBorder = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50.0,
      margin: EdgeInsets.only(left: 15.0),
      padding: EdgeInsets.only(right: 15.0),
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
