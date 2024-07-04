import 'package:bookly/Features/home/presentation/manager/similar_book_cubit/similar_books_cubit.dart';
import 'package:bookly/Features/home/presentation/views/widgets/custom_book_shimmer_list_view.dart';
import 'package:bookly/core/widgets/custom_error_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/app_router.dart';
import 'custom_book_item.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30.0),
      child: BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
        builder: (context, state) {
          if (state is SimilarBooksSuccess) {
            return SizedBox(
              height: MediaQuery.of(context).size.height * 0.15,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) => GestureDetector(
                  onTap: () {
                    GoRouter.of(context).push(
                      AppRouter.kBookDetailsView,
                      extra: state.books[index],
                    );
                  },
                  child: CustomBookImage(
                    imageUrl:
                        state.books[index].volumeInfo.imageLinks?.thumbnail ??
                            '',
                  ),
                ),
                separatorBuilder: (context, index) => const SizedBox(
                  width: 10,
                ),
                itemCount: 10,
              ),
            );
          } else if (state is SimilarBooksFailure) {
            return CustomErrorWidget(error: state.errorMessage);
          } else {
            return SizedBox(
              height: MediaQuery.of(context).size.height * 0.15,
              child: const CustomBookShimmerListView(),
            );
          }
        },
      ),
    );
  }
}
