// import 'package:flutter/material.dart';
// import 'package:json_sample/drawer/my_drawer_header.dart';
// import '../drawer/my_drawer_list.dart';

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('JSON Reader'),
//       ),
//       body: const Center(
//         child: Text('HomePage'),
//       ),
//       drawer: Drawer(
//         child: SingleChildScrollView(
//           child: Container(
//             child: Column(
//               children: const [
//                 MyDrawerHeader(),
//                 MyDrawerList(),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }