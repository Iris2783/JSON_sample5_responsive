import 'package:flutter/material.dart';
import 'package:json_sample5_responsive/sample/sample.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.green[700],
          width: double.infinity,
          height: 200,
          padding: const EdgeInsets.only(top: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 10),
                height: 70,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('assets/images/daruma.png'),
                  ),
                ),
              ),
              const Text(
                'Sample Account',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              const Text(
                'sample-account@gamil.com',
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              ListTile(
                leading: const Icon(Icons.list_outlined, size: 30),
                title: const Text(
                  'Posts',
                  style: TextStyle(fontSize: 20),
                ),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const SamplePage(),
                    ),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.person_outlined, size: 30),
                title: const Text(
                  'Users',
                  style: TextStyle(fontSize: 20),
                ),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const SamplePage(),
                    ),
                  );
                },
              ),
            ],
          ),
        )
      ],
    );
  }
}
