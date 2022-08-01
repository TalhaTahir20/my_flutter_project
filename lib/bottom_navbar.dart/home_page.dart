import 'package:animated_coffee/view/view.dart';
import 'package:flutter/material.dart';

import '../home_page_components/home_screen_bg_image.dart';
import '../home_page_components/topcategories_listviewbrands.dart';
import '../home_page_components/topcategories_seeall.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<CardItem> items = [
    const CardItem(
      urlImage:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcStsSEvJzBWGZLR5chhhsmG2c0QS-T5frpDsQ&usqp=CAU',
      title: 'Barber',
      subtitle: '\$99',
    ),
    const CardItem(
      urlImage:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSmHn012LH4orN4jRXVLO2UezdM18JRHwAaEg&usqp=CAU',
      title: 'Bond Salon',
      subtitle: '\$99',
    ),
    const CardItem(
      urlImage:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRab8iQMcbnlqb6eaXjfa5uruYw6jzVzMDvAA&usqp=CAU',
      title: 'Salon',
      subtitle: '\$99',
    ),
    const CardItem(
      urlImage:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSerDkohE5iM_MvllZWLmYekomkBrSMFaWyJA&usqp=CAU',
      title: 'We Barbers',
      subtitle: '\$99',
    ),
    const CardItem(
      urlImage:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRRdaeCis1Z07vthZeww6H2kZ60zGE_mVmiUw&usqp=CAU',
      title: 'Casablanca Salon',
      subtitle: '\$99',
    ),
    const CardItem(
      urlImage:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZhBIcTo4XZLyo2zTUlBdvFB983zMTOO89Bw&usqp=CAU',
      title: 'Modern Salon',
      subtitle: '\$99',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: ConstrainedBox(
            constraints:
                BoxConstraints(maxHeight: MediaQuery.of(context).size.height),
            child: Stack(
              children: [
                Column(
                  children: const [
                    HomeScreenBGImage(),
                  ],
                ),
                Positioned(
                  top: 120,
                  left: 10,
                  child: Column(
                    children: const [
                      Text(
                        'Find and book best',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '                  Services',
                        style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 40,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 210,
                  left: 35,
                  child: Container(
                    height: 50,
                    width: 320,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(color: Colors.white, width: 2),
                    ),
                    child: TextFormField(
                      style: const TextStyle(color: Colors.white),
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Search salon, spa and barber',
                        hintStyle: TextStyle(color: Colors.white),
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                const TopCategoriesSeeAll(),
                TopCategoriesListViewBrands(items: items),
                Positioned(
                  top: 550,
                  left: 25,
                  child: Row(
                    children: [
                      const Text(
                        'Top Rated Salon',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 23,
                        ),
                      ),
                      const SizedBox(
                        width: 118,
                      ),
                      Text(
                        'See all',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey[600],
                        ),
                      ),
                    ],
                  ),
                ),
                // BOTTOM LIST CONTAINER
                Positioned(
                  top: 600,
                  left: 25,
                  child: Stack(
                    children: [
                      Container(
                        height: 200,
                        width: 300,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(
                          children: [
                            Container(
                              height: 100,
                              width: 300,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image:
                                        AssetImage('assets/images/haircut.jpg'),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(12),
                                  topRight: Radius.circular(12),
                                ),
                              ),
                            ),
                            Row(
                              children: const [
                                SizedBox(
                                  width: 10,
                                  height: 30,
                                ),
                                Text(
                                  'Salon',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30),
                                ),
                                SizedBox(
                                  width: 140,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                ),
                                Text('4.9'),
                              ],
                            ),
                            const Padding(
                              padding: EdgeInsets.only(right: 153, top: 0),
                              child: Text(
                                'An Naseem, Jeddah',
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        right: 0,
                        bottom: 0,
                        child: Container(
                          height: 40,
                          width: 150,
                          decoration: const BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(12),
                            ),
                          ),
                          child: const Center(
                            child: Text(
                              'Book',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        bottom: 0,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=> View()));
                          },
                          child: Container(
                            height: 40,
                            width: 150,
                            decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 7, 207, 13),
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(12),
                              ),
                            ),
                            child: const Center(
                              child: Text(
                                'View',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ),
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

Widget buildCard({
  required CardItem item,
}) =>
    Container(
      width: 180,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Expanded(
            child: Image.network(
              item.urlImage,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          Text(item.title),
          Text(item.subtitle),
        ],
      ),
    );
