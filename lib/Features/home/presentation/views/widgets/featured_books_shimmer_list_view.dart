import 'package:flutter/material.dart';

import 'featured_books_shimmer_item.dart';

class FeaturedBooksShimmerListView extends StatelessWidget {
  const FeaturedBooksShimmerListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) => const FeaturedBooksShimmerItem(),
      separatorBuilder: (context, index) => const SizedBox(
        width: 16,
      ),
      itemCount: 5,
    );
  }
}
