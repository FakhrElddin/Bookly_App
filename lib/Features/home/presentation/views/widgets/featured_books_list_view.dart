import 'package:flutter/material.dart';

import 'custom_book_item.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30.0),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.3,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) => const CustomBookImage(),
          separatorBuilder: (context, index) => const SizedBox(
            width: 16,
          ),
          itemCount: 10,
        ),
      ),
    );
  }
}
