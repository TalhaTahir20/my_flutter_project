import 'package:animated_coffee/get_started_components/image1.dart';
import 'package:animated_coffee/get_started_components/image2.dart';
import 'package:animated_coffee/get_started_components/image3.dart';
import 'package:animated_coffee/get_started_components/image4.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class GetStartedTesting extends StatelessWidget {
  GetStartedTesting({Key? key}) : super(key: key);

  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        children: [
          Expanded(
            child: SizedBox(
              height: 500,
              child: PageView(
                controller: _controller,
                children: const [
                  Image1(),
                  Image2(),
                  Image3(),
                  Image4(),
                ],
              ),
            ),
          ),
          SmoothPageIndicator(
            controller: _controller,
            count: 4,
            effect: ExpandingDotsEffect(
              activeDotColor: Colors.white,
              dotColor: Colors.grey[800]!,
              dotHeight: 10,
              dotWidth: 10,
              spacing: 16,
            ),
          ),
        ],
      ),
    );
  }
}


