import 'package:flutter/material.dart';

class MobilePostListPage extends StatefulWidget {
  const MobilePostListPage({super.key});

  @override
  State<MobilePostListPage> createState() => _MobilePostListPageState();
}

class _MobilePostListPageState extends State<MobilePostListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MOBILE'),
      ),
    );
  }
}
