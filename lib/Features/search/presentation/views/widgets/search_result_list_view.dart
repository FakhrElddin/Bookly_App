import 'package:flutter/material.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      sliver: SliverList.separated(
        itemBuilder: (context, index) => Text('data'),
        //const BookListViewItem(),
        separatorBuilder: (context, index) => const SizedBox(
          height: 20,
        ),
        itemCount: 10,
      ),
    );
  }
}
