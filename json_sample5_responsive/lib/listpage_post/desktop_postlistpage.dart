import 'package:flutter/material.dart';
import 'package:json_sample5_responsive/detailspage_post/desktop_postdetailpage.dart';
import 'package:json_sample5_responsive/detailspage_post/mobile_postdetailpage.dart';
import 'package:json_sample5_responsive/detailspage_post/tablet_postdetailpage.dart';
import 'package:json_sample5_responsive/responsive_layout/responsive_layout.dart';
import 'package:json_sample5_responsive/service/remote_service_posts.dart';
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                  builder: (context) => ResponsiveLayout(
                                    mobileScaffold: MobilePostDetailPage(
                                        snapshot.data[index]),
                                    tabletScaffold: TabletPostDetailPage(
                                        snapshot.data[index]),
                                    desktopScaffold: DesktopPostDetailPage(
                                        snapshot.data[index]),
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
