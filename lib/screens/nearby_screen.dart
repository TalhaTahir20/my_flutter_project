import 'package:flutter/material.dart';

class NearByScreen extends StatefulWidget {
  const NearByScreen({Key? key}) : super(key: key);

  @override
  State<NearByScreen> createState() => _NearByScreenState();
}

class _NearByScreenState extends State<NearByScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Nearby Screen', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),),
      ),
    );
  }
}