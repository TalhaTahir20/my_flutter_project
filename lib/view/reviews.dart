import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Reviews extends StatefulWidget {
  const Reviews({
    Key? key,
  }) : super(key: key);

  @override
  State<Reviews> createState() => _ReviewsState();
}

class _ReviewsState extends State<Reviews> {
  final _textController = TextEditingController();
  String userReview = '';
  double rating = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(right: 290),
              child: Text(
                'Rating',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    RatingBar.builder(
                      initialRating: rating,
                      minRating: 0,
                      itemSize: 20,
                      updateOnDrag: true,
                      itemBuilder: (context, index) {
                        return const Icon(
                          Icons.star,
                          size: 2,
                          color: Colors.amber,
                        );
                      },
                      onRatingUpdate: (rating) {
                        setState(() {
                          this.rating = rating;
                        });
                      },
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text('$rating Star'),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  'Please leave a review',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Text('Leave a review',
                style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: TextFormField(
                  controller: _textController,
                  decoration: const InputDecoration(
                    hintMaxLines: 100,
                    suffixIcon: Icon(Icons.clear),
                    hintText: 'type a review...',
                    border: InputBorder.none,
                  ),
                  onTap: () {
                    _textController.clear();
                  },
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            // Review post button
            Padding(
              padding: const EdgeInsets.only(left: 250),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.amber,
                ),
                child: MaterialButton(
                  onPressed: () {
                    setState(() {
                      userReview = _textController.text;
                    });
                  },
                  child: const Text(
                    'Add',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(userReview),
            ),
          ],
        ),
      ),
    );
  }
}
