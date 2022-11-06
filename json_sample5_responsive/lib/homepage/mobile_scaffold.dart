import 'package:flutter/material.dart';
import 'package:json_sample5_responsive/constants/constants.dart';
import '../drawer/mydrawer.dart';

class MobileScaffold extends StatefulWidget {
  const MobileScaffold({super.key});

  @override
  State<MobileScaffold> createState() => _MobileScaffoldState();
}

class _MobileScaffoldState extends State<MobileScaffold> {
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
