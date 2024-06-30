import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

import 'best_seller_list_view.dart';
import 'custom_app_bar.dart';
import 'featured_books_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(),
              FeaturedBooksListView(),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: EdgeInsets.only(left: 30.0),
                child: Text(
                  'Best Seller',
                  style: Styles.textStyle18,
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
        BestSellerListView(),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 20,
          ),
        ),
      ],
    );
    // return const Column(
    //   crossAxisAlignment: CrossAxisAlignment.start,
    //   children: [
    //     CustomAppBar(),
    //     FeaturedBooksListView(),
    //     SizedBox(
    //       height: 40,
    //     ),
    //     Padding(
    //       padding: EdgeInsets.only(left: 30.0),
    //       child: Text(
    //         'Best Seller',
    //         style: Styles.textStyle18,
    //       ),
    //     ),
    //     SizedBox(
    //       height: 20,
    //     ),
    //     BestSellerListView(),
    //   ],
    // );
  }
}
