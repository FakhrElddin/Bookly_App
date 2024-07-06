import 'package:flutter/material.dart';

import 'newest_books_shimmer_item.dart';

class NewestBooksShimmerListView extends StatelessWidget {
  const NewestBooksShimmerListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
      itemBuilder: (context, index) => const NewestBooksShimmerItem(),
      separatorBuilder: (context, index) => const SizedBox(
        height: 20,
      ),
      itemCount: 6,
    );
  }
}
