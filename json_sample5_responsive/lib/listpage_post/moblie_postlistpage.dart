import 'package:flutter/material.dart';
import 'package:json_sample5_responsive/sample/sample.dart';
import 'package:json_sample5_responsive/service/remote_service_posts.dart';

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
        title: const Text('POST_Mobile'),
      ),
      body: Container(
        child: FutureBuilder(
          future: fetchPosts(),
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
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  snapshot.data[index].title,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  snapshot.data[index].body ?? '',
                                  maxLines: 10,
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
    );
  }
}
