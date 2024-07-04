import 'package:flutter/material.dart';

import 'featured_books_shimmer_item.dart';

class CustomBookShimmerListView extends StatelessWidget {
  const CustomBookShimmerListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) => const CustomBookShimmerItem(),
      separatorBuilder: (context, index) => const SizedBox(
        width: 16,
      ),
      itemCount: 5,
    );
  }
}
