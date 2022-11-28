import 'package:flutter/material.dart';
import 'package:json_sample5_responsive/drawer/mydrawer.dart';
import 'package:json_sample5_responsive/sample/sample.dart';
import 'package:json_sample5_responsive/service/remote_service_users.dart';

class DesktopUserListPage extends StatefulWidget {
  const DesktopUserListPage({super.key});

  @override
  State<DesktopUserListPage> createState() => _DesktopUserListPageState();
}

class _DesktopUserListPageState extends State<DesktopUserListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('POST_Desktop'),
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
          Expanded(
            child: Container(
              child: FutureBuilder(
                future: fetchUsers(),
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  if (snapshot.hasData) {
                    return ListView.builder(
                      itemCount: snapshot.data.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          padding: const EdgeInsets.all(10),
                          child: ListTile(
                            title: Row(
                              children: [
                                Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Colors.grey[300],
                                  ),
                                ),
                                const SizedBox(width: 20),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        snapshot.data[index].name,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: const TextStyle(
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        snapshot.data[index].username,
                                        maxLines: 3,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const SamplePage(
                                      // snapshot.data[index],
                                      ),
                                ),
                              );
                            },
                          ),
                        );
                      },
                    );
                  } else if (snapshot.hasError) {
                    return Container(
                      child: const Center(
                        child: Text('Not Found Data'),
                      ),
                    );
                  } else {
                    return Center(
                      child: Container(
                        child: const CircularProgressIndicator(),
                      ),
                    );
                  }
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
