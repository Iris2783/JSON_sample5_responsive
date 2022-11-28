import 'package:flutter/material.dart';
import 'package:json_sample5_responsive/detailspage_user/desktop_userdetailpage.dart';
import 'package:json_sample5_responsive/detailspage_user/mobile_userdetailpage.dart';
import 'package:json_sample5_responsive/detailspage_user/tablet_userdetailpage.dart';
import 'package:json_sample5_responsive/responsive_layout/responsive_layout.dart';
import 'package:json_sample5_responsive/service/remote_service_users.dart';

class TabletUserListPage extends StatefulWidget {
  const TabletUserListPage({super.key});

  @override
  State<TabletUserListPage> createState() => _TabletUserListPageState();
}

class _TabletUserListPageState extends State<TabletUserListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('USER_Tablet'),
      ),
      body: Container(
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
                              crossAxisAlignment: CrossAxisAlignment.start,
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
                            builder: (context) => ResponsiveLayout(
                              mobileScaffold:
                                  MobileUserDetailPage(snapshot.data[index]),
                              tabletScaffold:
                                  TabletUserDetailPage(snapshot.data[index]),
                              desktopScaffold:
                                  DesktopUserDetailPage(snapshot.data[index]),
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
