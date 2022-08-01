import 'package:animated_coffee/screens/signup_screen.dart';
import 'package:flutter/material.dart';

import 'home_screen.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  bool visiblity = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/haircut.jpg'),
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
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // logo

                      // Welcome
                      const Center(
                        child: Text(
                          'Welcome',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 50,
                              color: Colors.white),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),

                      // Sign In text
                      const Text(
                        'Sign In',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            color: Colors.white),
                      ),
                      const SizedBox(
                        height: 150,
                      ),
                      // textfield user
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            border: Border.all(color: Colors.white, width: 1),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: TextField(
                              style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Email',
                                hintStyle: TextStyle(color: Colors.white),
                                prefixIcon: Icon(
                                  Icons.email,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      // password textfield
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            border: Border.all(color: Colors.white, width: 1),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: TextField(
                              style: const TextStyle(color: Colors.white),
                              obscureText: visiblity,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Password',
                                hintStyle: const TextStyle(color: Colors.white),
                                prefixIcon: const Icon(
                                  Icons.lock,
                                  color: Colors.white,
                                ),
                                suffixIcon: IconButton(
                                  icon: visiblity
                                      ? const Icon(
                                          Icons.visibility_off,
                                          color: Colors.white,
                                        )
                                      : const Icon(
                                          Icons.visibility,
                                          color: Colors.blue,
                                        ),
                                  onPressed: () {
                                    setState(() {
                                      visiblity = !visiblity;
                                    });
                                  },
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),

                      // forgot password

                      const Padding(
                        padding: EdgeInsets.only(right: 0, left: 195),
                        child: Text(
                          'Forgot Password ?',
                          style: TextStyle(
                            color: Color.fromARGB(255, 1, 43, 77),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 180,
                      ),

                      // signin button

                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 25,
                        ),
                        child: InkWell(
                          child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(25),
                                border: Border.all(
                                  color: Colors.white,
                                  width: 1,
                                )),
                            child: const Center(
                              child: Text(
                                'Sign In',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => const HomeScreen(),
                              ),
                            );
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),

                      // dont have an account signup

                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Don\'t have an account ?',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => const SignUpScreen(),
                                ),
                              );
                            },
                            child: const Text(
                              'SignUp',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue,
                                  fontSize: 15),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
