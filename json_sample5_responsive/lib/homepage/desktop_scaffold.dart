import 'package:flutter/material.dart';
import 'package:json_sample5_responsive/constants/constants.dart';
import '../drawer/mydrawer.dart';

class DesktopScaffold extends StatefulWidget {
  const DesktopScaffold({super.key});

  @override
  State<DesktopScaffold> createState() => _DesktopScaffoldState();
}

class _DesktopScaffoldState extends State<DesktopScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar,
      body: Row(
        children: [
          SingleChildScrollView(
            child: Container(
              child: Column(
                children: const [
                  MyDrawer(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
