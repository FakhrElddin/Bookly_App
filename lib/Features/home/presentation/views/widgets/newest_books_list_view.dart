import 'package:bookly/Features/home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widgets/custom_error_widget.dart';
import 'book_list_view_item.dart';
import 'newest_books_shimmer_list_view.dart';

class NewestBooksListView extends StatelessWidget {
  const NewestBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      sliver: BlocBuilder<NewestBooksCubit, NewestBooksState>(
        builder: (context, state) {
          if (state is NewestBooksSuccess) {
            return SliverList.separated(
              itemBuilder: (context, index) => BookListViewItem(
                bookModel: state.books[index],
              ),
              separatorBuilder: (context, index) => const SizedBox(
                height: 20,
              ),
              itemCount: state.books.length,
            );
          } else if (state is NewestBooksFailure) {
            return SliverToBoxAdapter(
              child: CustomErrorWidget(error: state.errorMessage),
            );
          } else {
            return const NewestBooksShimmerListView();
          }
        },
      ),
    );
  }
}
