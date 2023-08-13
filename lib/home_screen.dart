import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          //backgroundColor: Colors.teal,
          title: const Text(
            'WhatsApp',
            style: TextStyle(color: Colors.white),
          ),
          bottom: const TabBar(tabs: [
            Tab(
              icon: Icon(Icons.camera_alt),
            ),
            Tab(
              text: 'Chats',
            ),
            Tab(
              text: 'Status',
            ),
            Tab(
              text: 'Calls',
            )
          ]),
          actions: [
            Icon(Icons.search),
            PopupMenuButton(
                icon: Icon(Icons.more_vert),
                itemBuilder: (context) => [
                      PopupMenuItem(value: '0', child: Text('New group')),
                      PopupMenuItem(value: '1', child: Text('Linked devices')),
                      PopupMenuItem(value: '3', child: Text('Settings'))
                    ])
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
        ),
        body: TabBarView(children: [
          const Text('Camera'),
          ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: 20,
              itemBuilder: (context, index) {
                return const ListTile(
                  leading: CircleAvatar(
                    radius: 24,
                    backgroundImage: NetworkImage(
                        'https://images.pexels.com/photos/12244376/pexels-photo-12244376.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                  ),
                  title: Text('Emma Watson'),
                  subtitle: Text('Are you there??'),
                  trailing: Text('12:33 PM'),
                );
              }),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(width: 3.0, color: Colors.grey)),
                      child: const CircleAvatar(
                        radius: 25,
                        backgroundImage: NetworkImage(
                            'https://images.pexels.com/photos/2681319/pexels-photo-2681319.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                      ),
                    ),
                    title: const Text('My Status'),
                    subtitle: const Text('Yesterday, 11:23'),
                    trailing: const Icon(Icons.more_horiz),
                  ),
                  const Text(
                    'Recent Updates',
                    style: TextStyle(color: Colors.grey),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(width: 3.0, color: Colors.grey)),
                      child: const CircleAvatar(
                        radius: 25,
                        backgroundImage: NetworkImage(
                            'https://images.pexels.com/photos/2681319/pexels-photo-2681319.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                      ),
                    ),
                    title: const Text('Maaz Clg'),
                    subtitle: const Text('Yesterday, 11:23'),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(width: 3.0, color: Colors.grey)),
                      child: const CircleAvatar(
                        radius: 25,
                        backgroundImage: NetworkImage(
                            'https://images.pexels.com/photos/2681319/pexels-photo-2681319.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                      ),
                    ),
                    title: const Text('Asif Taj'),
                    subtitle: const Text('33 minutes ago'),
                  ),
                  const Text(
                    'Viewed Updates',
                    style: TextStyle(color: Colors.grey),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(width: 3.0, color: Colors.grey)),
                      child: const CircleAvatar(
                        radius: 25,
                        backgroundImage: NetworkImage(
                            'https://images.pexels.com/photos/2681319/pexels-photo-2681319.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                      ),
                    ),
                    title: const Text('Asif Taj'),
                    subtitle: const Text('33 minutes ago'),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(width: 3.0, color: Colors.grey)),
                      child: const CircleAvatar(
                        radius: 25,
                        backgroundImage: NetworkImage(
                            'https://images.pexels.com/photos/2681319/pexels-photo-2681319.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                      ),
                    ),
                    title: const Text('Asif Taj'),
                    subtitle: const Text('33 minutes ago'),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(width: 3.0, color: Colors.grey)),
                      child: const CircleAvatar(
                        radius: 25,
                        backgroundImage: NetworkImage(
                            'https://images.pexels.com/photos/2681319/pexels-photo-2681319.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                      ),
                    ),
                    title: const Text('Asif Taj'),
                    subtitle: const Text('33 minutes ago'),
                  ),
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.teal,
                    child: Icon(
                      Icons.link,
                      color: Colors.white,
                    ),
                  ),
                  title: Text('Create call link'),
                  subtitle: Text('Share a link for your\nWhatsApp call'),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Recent',
                  style: TextStyle(fontSize: 18),
                ),
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: CircleAvatar(
                    radius: 25,
                    backgroundImage: NetworkImage(
                        'https://images.pexels.com/photos/810775/pexels-photo-810775.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                  ),
                  title: Text('Hamza Khan'),
                  subtitle: Text('11 August, 4:55 PM'),
                  trailing: Icon(
                    Icons.phone,
                    color: Colors.teal,
                  ),
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
