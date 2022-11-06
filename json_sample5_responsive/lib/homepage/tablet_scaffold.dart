import 'package:flutter/material.dart';
import 'package:json_sample5_responsive/constants/constants.dart';
import '../drawer/mydrawer.dart';

class TabletScaffold extends StatefulWidget {
  const TabletScaffold({super.key});

  @override
  State<TabletScaffold> createState() => _TabletScaffoldState();
}

class _TabletScaffoldState extends State<TabletScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar,
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: const [
                MyDrawer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
