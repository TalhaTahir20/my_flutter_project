import 'package:animated_coffee/screens/login_screen.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  int selectedValue = 0;
  bool isVisible1 = true;
  bool isVisible2 = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // backgrounimage
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/haircut.jpg'),
              fit: BoxFit.cover),
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
          child: SafeArea(
            child: Align(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // singup text
                      const Text(
                        'Signup Form',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 30),
                      ),

                      const SizedBox(
                        height: 80,
                      ),

                      // CircleAvatar

                      const Center(
                        child: CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/haircut1.jpg'),
                          maxRadius: 50,
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),

                      // username textfield
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.transparent,
                          border: Border.all(color: Colors.white, width: 1),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: TextFormField(
                            // validator: ,
                            keyboardType: TextInputType.name,
                            style: const TextStyle(color: Colors.white),
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintText: 'User Name',
                              hintStyle: TextStyle(color: Colors.white),
                              prefixIcon: Icon(
                                Icons.person,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      // email field
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          border: Border.all(color: Colors.white, width: 1),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: TextFormField(
                            //  validator: ,
                            style: const TextStyle(color: Colors.white),
                            keyboardType: TextInputType.emailAddress,
                            autocorrect: true,
                            decoration: const InputDecoration(
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
                      const SizedBox(
                        height: 10,
                      ),
                      // mobile number field
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width: 1),
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: TextFormField(
                            //  validator: ,
                            style: const TextStyle(color: Colors.white),
                            keyboardType: TextInputType.number,
                            decoration: const InputDecoration(
                              hintText: 'Mobile Number',
                              hintStyle: TextStyle(color: Colors.white),
                              prefixIcon: Icon(
                                Icons.mobile_friendly_outlined,
                                color: Colors.white,
                              ),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      // password field

                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width: 1),
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 10,
                          ),
                          child: TextFormField(
                            // validator: ,
                            style: const TextStyle(color: Colors.white),
                            obscureText: isVisible1,
                            autocorrect: true,
                            decoration: InputDecoration(
                              hintText: 'Password',
                              hintStyle: const TextStyle(color: Colors.white),
                              prefixIcon: const Icon(
                                Icons.lock,
                                color: Colors.white,
                              ),
                              suffixIcon: IconButton(
                                icon: isVisible1
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
                                    isVisible1 = !isVisible1;
                                  });
                                },
                              ),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      // confirm password field
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width: 1),
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: TextFormField(
                            // validator: ,
                            style: const TextStyle(color: Colors.white),
                            obscureText: isVisible2,
                            autocorrect: true,
                            keyboardType: TextInputType.visiblePassword,
                            decoration: InputDecoration(
                              hintText: 'Re-type Password',
                              hintStyle: const TextStyle(color: Colors.white),
                              suffixIcon: IconButton(
                                icon: isVisible2
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
                                    isVisible2 = !isVisible2;
                                  });
                                },
                              ),
                              prefixIcon: const Icon(
                                Icons.lock,
                                color: Colors.white,
                              ),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      // male or female radio button

                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            color: Colors.white,
                            width: 1,
                          ),
                        ),
                        child: Row(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(left: 30.0),
                              child: Text(
                                'Gender',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 80,
                            ),
                            const Text(
                              'Male',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                            Theme(
                              data: Theme.of(context).copyWith(
                                unselectedWidgetColor: Colors.white,
                              ),
                              child: Radio(
                                activeColor: Colors.white,
                                value: 1,
                                groupValue: selectedValue,
                                onChanged: (value) {
                                  setState(() {
                                    selectedValue = value!;
                                  });
                                },
                              ),
                            ),
                            const Text(
                              'Female',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                            Expanded(
                              child: Theme(
                                data: Theme.of(context).copyWith(
                                  unselectedWidgetColor: Colors.white,
                                ),
                                child: Radio(
                                  activeColor: Colors.white,
                                  value: 2,
                                  groupValue: selectedValue,
                                  onChanged: (value) {
                                    setState(
                                      () {
                                        selectedValue = value!;
                                      },
                                    );
                                  },
                                ),
                              ),
                            )
                          ],
                        ),
                      ),

                      const SizedBox(
                        height: 80,
                      ),

                      // signup button
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: InkWell(
                          child: Container(
                            height: 50,
                            width: 300,
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              border: Border.all(color: Colors.white, width: 1),
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: const Center(
                              child: Text(
                                'Signup',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 25),
                              ),
                            ),
                          ),
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => const LogInScreen(),
                              ),
                            );
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      // already have an an account ?
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Already have an account ?',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => const LogInScreen(),
                                ),
                              );
                            },
                            child: const Text(
                              'SignIn',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.blue,
                              ),
                            ),
                          ),
                        ],
                      ),
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
