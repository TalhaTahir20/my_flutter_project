import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../screens/login_screen.dart';

class Image4 extends StatelessWidget {
  const Image4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/women-hair-style.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.white.withOpacity(0.2),
                Colors.black.withOpacity(0.5),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Align(
            child: Container(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 0, top: 200),
                child: Column(
                  children: [
                    const Text(
                      'Barber Shop',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Style that fit your lifestyle',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      height: 300,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const LogInScreen(),
                          ),
                        );
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 350,
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(20)),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Get Started',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Lottie.asset(
                              'assets/images/101422-icon-arrow-right.json',
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 0, top: 50),
                      child: Text(
                        '@ BarberShop 2022-22. All rights reserved',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
