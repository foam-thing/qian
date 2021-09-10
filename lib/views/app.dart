import 'package:flutter/material.dart';

class App extends StatefulWidget {
  App({Key? key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Qian'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('TODO: Search')),
              );
            },
          ),
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              Navigator.pushNamed(context, '/settings');
            },
          ),
        ],
      ),
      body: MainView(),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.blueGrey,
        label: Text('添加账本'),
        icon: Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }
}

class MainView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 25.0,
        mainAxisSpacing: 25.0,
        children: List.generate(3, (index) => BookThumb()),
      ),
    );
  }
}

class BookThumb extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        decoration: const BoxDecoration(
          border: Border(
            top: BorderSide(width: 1.0, color: Colors.black12),
            right: BorderSide(width: 1.0, color: Colors.black12),
            bottom: BorderSide(width: 1.0, color: Colors.black12),
            left: BorderSide(width: 1.0, color: Colors.black12),
          ),
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
        ),
        padding: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('账本名称', textScaleFactor: 1.5),
            Text(
              '元 100',
              textScaleFactor: 2.0,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Spacer(flex: 1),
            Row(
              children: [
                Text('预算'),
                Spacer(flex: 1),
                Text('剩余 98%'),
              ],
            ),
            LinearProgressIndicator(
              value: .2,
              valueColor: AlwaysStoppedAnimation(Colors.blueGrey),
              backgroundColor: Colors.green.shade200,
            ),
            Text('统计数据'),
          ],
        ),
      ),
      onTap: () => Navigator.pushNamed(context, '/book'),
    );
  }
}
