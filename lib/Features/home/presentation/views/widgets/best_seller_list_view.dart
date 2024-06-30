import 'package:flutter/material.dart';

import 'best_seller_list_view_item.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    /// SliverFillRemaining => wrap this widget to ListView instead of shrink wrap true
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      sliver: SliverList.separated(
        itemBuilder: (context, index) => const BestSellerListViewItem(),
        separatorBuilder: (context, index) => const SizedBox(
          height: 20,
        ),
        itemCount: 10,
      ),
    );
  }
}
