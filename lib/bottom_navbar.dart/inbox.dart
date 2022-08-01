import 'package:animated_coffee/components/inbox_online_circle.dart';
import 'package:flutter/material.dart';

enum _MenuValues {
  settings,
  delete,
}

class Inbox extends StatelessWidget {
  const Inbox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: const Text(
          'Messages',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold
          ),
        ),
        actions: [
          PopupMenuButton<_MenuValues>(
            icon: const Icon(
              Icons.more_vert,
              color: Colors.black,
            ),
            itemBuilder: (BuildContext context) => [
              PopupMenuItem(
                value: _MenuValues.settings,
                child: Row(
                  children: const [
                    Icon(
                      Icons.settings,
                      color: Colors.black,
                    ),
                    Text(' Settings'),
                  ],
                ),
              ),
              PopupMenuItem(
                value: _MenuValues.delete,
                child: Row(
                  children: const [
                    Icon(
                      Icons.delete,
                      color: Colors.black,
                    ),
                    Text(' Delete'),
                  ],
                ),
              ),
              PopupMenuItem(
                child: Row(
                  children: const [
                    Icon(
                      Icons.settings,
                      color: Colors.black,
                    ),
                    Text(' Settings'),
                  ],
                ),
              ),
            ],
            onSelected: (value) {
              switch (value) {
                case _MenuValues.settings:
                  // Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const SettingsPage()));
                  break;
                case _MenuValues.delete:
                  //   Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const DeletePage()));
                  break;
              }
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 10),
        child: SingleChildScrollView(
          child: ConstrainedBox(
            constraints:
                BoxConstraints(maxHeight: MediaQuery.of(context).size.height),
            child: Column(
             
              children: [
                Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          spreadRadius: 2.1,
                          blurRadius: 0.3,
                          offset: const Offset(3, 0)),
                    ],
                  ),
                  child: Stack(
                    children: [
                      const Text(
                        ' Online specialists',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 35),
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: const [
                              InBoxOnlineCircleAvatar(),
                              SizedBox(
                                width: 10,
                              ),
                              InBoxOnlineCircleAvatar(),
                              SizedBox(
                                width: 10,
                              ),
                              InBoxOnlineCircleAvatar(),
                              SizedBox(
                                width: 10,
                              ),
                              InBoxOnlineCircleAvatar(),
                              SizedBox(
                                width: 10,
                              ),
                              InBoxOnlineCircleAvatar(),
                              SizedBox(
                                width: 10,
                              ),
                              InBoxOnlineCircleAvatar(),
                              SizedBox(
                                width: 10,
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height:440,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 1.0,
                      ),
                    ],
                  ),
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: 20,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: const CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://images.pexels.com/photos/2320590/pexels-photo-2320590.jpeg?auto=compress&cs=tinysrgb&w=1600'),
                          radius: 30,
                        ),
                        title: const Text('Sarah'),
                        subtitle:
                            const Text('Hey, How can i change hairstyle?'),
                        trailing: const Text('4:30 AM'),
                        onTap: () {},
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
