import 'package:bookly/Features/home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly/core/widgets/custom_error_widget.dart';
import 'package:bookly/core/widgets/custom_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'book_list_view_item.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: BlocBuilder<NewestBooksCubit, NewestBooksState>(
        builder: (context, state) {
          if (state is NewestBooksSuccess) {
            return ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) => BookListViewItem(
                bookModel: state.books[index],
              ),
              separatorBuilder: (context, index) => const SizedBox(
                height: 20,
              ),
              itemCount: state.books.length,
            );
          } else if (state is NewestBooksFailure) {
            return CustomErrorWidget(error: state.errorMessage);
          } else {
            return const CustomLoadingIndicator();
          }
        },
      ),
    );
  }
}
