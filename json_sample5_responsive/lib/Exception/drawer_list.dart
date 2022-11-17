// import 'package:flutter/material.dart';
// import '../views/home_page_post.dart';
// import '../views/home_page_user.dart';

// class MyDrawerList extends StatefulWidget {
//   const MyDrawerList({super.key});

//   @override
//   State<MyDrawerList> createState() => _MyDrawerListState();
// }

// class _MyDrawerListState extends State<MyDrawerList> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.all(10.0),
//       child: Column(
//         children: [
//           ListTile(
//             leading: const Icon(Icons.list_outlined, size: 30),
//             title: const Text(
//               'Posts',
//               style: TextStyle(fontSize: 20),
//             ),
//             onTap: () {
//               Navigator.of(context).push(
//                 MaterialPageRoute(
//                   builder: (context) => const PostHomePage(),
//                 ),
//               );
//             },
//           ),
//           ListTile(
//             leading: const Icon(Icons.person_outlined, size: 30),
//             title: const Text(
//               'Users',
//               style: TextStyle(fontSize: 20),
//             ),
//             onTap: () {
//               Navigator.of(context).push(
//                 MaterialPageRoute(
//                   builder: (context) => const UserHomePage(),
//                 ),
//               );
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }
