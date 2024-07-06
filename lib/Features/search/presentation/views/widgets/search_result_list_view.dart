import 'package:bookly/Features/home/presentation/views/widgets/book_list_view_item.dart';
import 'package:bookly/Features/search/presentation/manager/search_cubit/search_cubit.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        if (state is SearchSuccess) {
          return SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            sliver: SliverList.separated(
              itemBuilder: (context, index) => BookListViewItem(
                bookModel: state.books[index],
              ),
              separatorBuilder: (context, index) => const SizedBox(
                height: 20,
              ),
              itemCount: 10,
            ),
          );
        } else if (state is SearchFailure) {
          return const SliverToBoxAdapter(
            child: NoBooksWidget(),
          );
        } else if (state is SearchLoading) {
          return const SliverToBoxAdapter(
            child: LinearProgressIndicator(),
          );
        } else {
          return const SliverToBoxAdapter(
            child: SizedBox.shrink(),
          );
        }
      },
    );
  }
}

class NoBooksWidget extends StatelessWidget {
  const NoBooksWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Icon(
          Icons.error_outline,
          size: 30,
        ),
        SizedBox(
          height: 12,
        ),
        Text(
          'There are no books with this name, try another name',
          style: Styles.textStyle18,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
