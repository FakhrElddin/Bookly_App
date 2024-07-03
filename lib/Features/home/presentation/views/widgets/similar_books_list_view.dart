import 'package:flutter/material.dart';

import 'custom_book_item.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30.0),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.15,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) => const CustomBookImage(
            imageUrl:
                'https://m.media-amazon.com/images/I/61d4098TmQL._SX342_SY445_.jpg',
          ),
          separatorBuilder: (context, index) => const SizedBox(
            width: 10,
          ),
          itemCount: 10,
        ),
      ),
    );
  }
}
