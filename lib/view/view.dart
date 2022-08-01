import 'package:animated_coffee/view/reviews.dart';
import 'package:flutter/material.dart';

import 'overview_services.dart';

class View extends StatefulWidget {
  const View({Key? key}) : super(key: key);

  @override
  State<View> createState() => _ViewState();
}

class _ViewState extends State<View> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 3, vsync: this);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
        ),
        body: SingleChildScrollView(
          child: ConstrainedBox(
            constraints:
                BoxConstraints(maxHeight: MediaQuery.of(context).size.height),
            child: Column(
              children: [
                // picture
                Container(
                  height: 200,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/haircut.jpg'),
                        fit: BoxFit.cover),
                  ),
                ),
                SizedBox(
                  width: double.maxFinite,
                  child: TabBar(
                    isScrollable: true,
                    labelPadding: const EdgeInsets.symmetric(horizontal: 55),
                    indicatorColor: Colors.grey,
                    controller: tabController,
                    tabs: const [
                      Tab(
                        icon: Icon(
                          Icons.info,
                          color: Colors.black,
                        ),
                      ),
                      Tab(
                        icon: Icon(
                          Icons.grid_on,
                          color: Colors.black,
                        ),
                      ),
                      Tab(
                        icon: Icon(
                          Icons.reviews,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: TabBarView(
                    controller: tabController,
                    children: [
                      // info
                      Padding(
                        padding: const EdgeInsets.all(12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              width: 40,
                            ),
                            const Text(
                              'We Barbers',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            const Text(
                              'About us',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            const Text(
                              'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages,',
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            const Text(
                              'Services',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            SizedBox(
                              height: 130,
                              child: Expanded(
                                child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  children: const [
                                    Services(
                                      Image: 'assets/services/scissor2.png',
                                      text: 'Hair cut',
                                      color: Colors.brown,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Services(
                                      Image: 'assets/services/hairdryer.png',
                                      text: 'Hair dryer',
                                      color: Colors.brown,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Services(
                                      Image: 'assets/services/men.png',
                                      text: 'Facial',
                                      color: Colors.brown,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Services(
                                      Image: 'assets/services/hairdryer.png',
                                      text: 'Shave',
                                      color: Colors.brown,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Services(
                                      Image: 'assets/services/hairdryer.png',
                                      text: 'Shave',
                                      color: Colors.brown,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Services(
                                      Image: 'assets/services/hairdryer.png',
                                      text: 'Shave',
                                      color: Colors.brown,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Container(
                              height: 50,
                              width: 270,
                              decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius: BorderRadius.circular(25),
                              ),
                              child: const Center(
                                child: Text(
                                  'Book',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22,
                                      color: Colors.orange),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      // gallery
                      const Text('Gallery'),
                      // reviews
                      const Reviews(),
                    ],
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


