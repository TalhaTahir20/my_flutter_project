// ignore_for_file: unnecessary_brace_in_string_interps

import 'package:flutter/material.dart';

String time = '6:30 AM';

class Appointment extends StatelessWidget {
  const Appointment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text(
          'Appointments',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 10),
        child: ListView.separated(
          itemCount: 6,
          itemBuilder: (context, index) {
            return Card(
              child: Padding(
                padding: const EdgeInsets.all(3),
                child: Text('Appointment ${time}'),
              ),
            );
          },
          separatorBuilder: (context, index) {
            return Stack(
              children: [
                Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 110,
                        width: double.infinity,
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
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(
                            width: 20,
                            height: 40,
                          ),
                          const Text(
                            'Salon',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                          const SizedBox(
                            width: 140,
                          ),
                          const Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          const Text('4.9'),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.directions_boat,
                              color: Colors.grey[800],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Container(
                          height: 40,
                          width: 193.3,
                          decoration: const BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(12)),
                          ),
                          child: const Center(
                            child: Text(
                              'Reschedule',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          height: 40,
                          width: 193.3,
                          decoration: const BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(12),
                            ),
                          ),
                          child: const Center(
                            child: Text(
                              'Cancel appointment',
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
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
