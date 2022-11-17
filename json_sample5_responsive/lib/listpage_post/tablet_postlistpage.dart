import 'package:flutter/material.dart';

class TabletPostListPage extends StatefulWidget {
  const TabletPostListPage({super.key});

  @override
  State<TabletPostListPage> createState() => _TabletPostListPageState();
}

class _TabletPostListPageState extends State<TabletPostListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TABLET'),
      ),
    );
  }
}
