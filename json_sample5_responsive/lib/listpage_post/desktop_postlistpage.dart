import 'package:flutter/material.dart';
import '../drawer/mydrawer.dart';

class DesktopPostListPage extends StatefulWidget {
  const DesktopPostListPage({super.key});

  @override
  State<DesktopPostListPage> createState() => _DesktopPostListPageState();
}

class _DesktopPostListPageState extends State<DesktopPostListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DESKTOP'),
      ),
      body: Row(
        children: [
          SingleChildScrollView(
            child: Container(
              height: 1500,
              width: 250,
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
