import 'package:bookly/Features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly/core/widgets/custom_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widgets/custom_error_widget.dart';
import 'custom_book_item.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30.0),
      child: BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
        builder: (context, state) {
          if (state is FeaturedBooksSuccess) {
            return SizedBox(
              height: MediaQuery.of(context).size.height * 0.3,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) => CustomBookImage(
                  imageUrl: state.books[index].volumeInfo.imageLinks.thumbnail,
                ),
                separatorBuilder: (context, index) => const SizedBox(
                  width: 16,
                ),
                itemCount: state.books.length,
              ),
            );
          } else if (state is FeaturedBooksFailure) {
            return CustomErrorWidget(
              error: state.errorMessage,
            );
          } else {
            return const CustomLoadingIndicator();
          }
        },
      ),
    );
  }
}
