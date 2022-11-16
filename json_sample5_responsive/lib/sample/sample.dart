import 'package:flutter/material.dart';

class SamplePage extends StatelessWidget {
  const SamplePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('SMAPLE'),
        ),
        body: const Center(
          child: Text('Sample Page'),
        ),
      ),
    );
  }
}
