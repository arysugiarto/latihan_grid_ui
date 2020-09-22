import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Grid',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text(
            'Flutter GridView',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: _GridViewPage(),
      ),
    );
  }
}

class _GridViewPage extends StatefulWidget {
  @override
  _GridViewPageState createState() => _GridViewPageState();
}

class _GridViewPageState extends State<_GridViewPage> {
  List<int> itemList = List();
  @override
  void initState() {
    super.initState();
    for (int i = 1; i < 20; i++) {
      itemList.add(i);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.builder(
        itemCount: itemList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
        ),
        itemBuilder: (BuildContext context, int index) {
          return Card(
            color: Colors.redAccent,
            child: Container(
              padding: EdgeInsets.all(4),
              child: Center(
                child: Text(
                  itemList[index].toString(),
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 28,
                    fontWeight: FontWeight.normal,
                    ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}