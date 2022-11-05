import 'package:flutter/material.dart';
import 'package:json_sample5_responsive/homepage/desktop_scaffold.dart';
import 'package:json_sample5_responsive/homepage/mobile_scaffold.dart';
import 'package:json_sample5_responsive/homepage/tablet_scaffold.dart';
import 'package:json_sample5_responsive/responsive_layout/responsive_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ResponsiveLayout(
        mobileScaffold: const MobileScaffold(),
        tabletScaffold: const TabletScaffold(),
        desktopScaffold: const DesktopScaffold(),
      ),
    );
  }
}