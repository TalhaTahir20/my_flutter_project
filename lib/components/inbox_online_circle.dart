import 'package:flutter/material.dart';

class InBoxOnlineCircleAvatar extends StatelessWidget {
  const InBoxOnlineCircleAvatar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 102,
          width: 102,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.orange, width: 3.5),
            borderRadius: BorderRadius.circular(100),
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 3),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://images.pexels.com/photos/1055691/pexels-photo-1055691.jpeg?auto=compress&cs=tinysrgb&w=1600'),
              radius: 50,
              child: Padding(
                padding: EdgeInsets.only(left: 70, top: 70),
                child: CircleAvatar(
                  backgroundColor: Colors.green,
                  radius: 10,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 0),
                  ),
                ),
              ),
            ),
          ),
        ),
       const SizedBox(
          height: 5,
        ),
        const Text('Sophia'),
      ],
    );
  }
}
