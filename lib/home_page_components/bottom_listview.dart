import 'package:flutter/material.dart';

class BottomListView extends StatelessWidget {
  const BottomListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
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
                  height: 110,
                  width: 300,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/haircut.jpg'),
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
                      width: 20,
                      height: 50,
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
                  padding: EdgeInsets.only(right: 130, top: 13),
                  child: Text(
                    'An Naseem Jeddah',
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
              width: 120,
              decoration: const BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(12),
                  topLeft: Radius.circular(12),
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
        ],
      ),
    );
  }
}
