import 'package:flutter/material.dart';
import 'package:grocery/BottomCartSheet.dart';
import 'package:grocery/Homepage.dart';
class tabbutton extends StatefulWidget {
  const tabbutton({Key? key}) : super(key: key);

  @override
  State<tabbutton> createState() => _tabbuttonState();
}

class _tabbuttonState extends State<tabbutton> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(tabs: [
            Text('Homepage'),
            Text('BottomCartsheet'),
            // Text('person'),
          ]),
        ),
        body: TabBarView(
          children: [
            Homepage(),
            BottomCartsheet(),
            // person()
          ],
        ),
      ),
    );
  }
}
