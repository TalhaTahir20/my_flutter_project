import 'package:flutter/material.dart';

class Image2 extends StatelessWidget {
  
  const Image2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/haircut1.jpg'),
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
            alignment: Alignment.center,
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Barber Shop',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Style that fit your lifestyle',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 400,
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 0, top: 50),
                    child: Text(
                      '@ BarberShop 2022-22. All rights reserved',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}