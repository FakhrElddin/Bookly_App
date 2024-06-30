import 'package:flutter/material.dart';

class FeaturedListViewItem extends StatelessWidget {
  const FeaturedListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: const DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(
                'https://m.media-amazon.com/images/I/61d4098TmQL._SX342_SY445_.jpg',
              ),
            )),
      ),
    );
  }
}