import 'package:bookly/Features/search/presentation/manager/search_cubit/search_cubit.dart';
import 'package:bookly/Features/search/presentation/views/widgets/search_result_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/styles.dart';
import 'custom_text_form_field.dart';

class SearchViewBody extends StatefulWidget {
  const SearchViewBody({super.key});

  @override
  State<SearchViewBody> createState() => _SearchViewBodyState();
}

class _SearchViewBodyState extends State<SearchViewBody> {
  TextEditingController searchController = TextEditingController();
  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomTextFormField(
                  controller: searchController,
                  onFieldSubmitted: (value) {
                    searchForBook(context);
                  },
                  onPressedSearchIcon: () {
                    if (searchController.text.trim().isNotEmpty) {
                      FocusManager.instance.primaryFocus?.unfocus();
                    }
                    searchForBook(context);
                  },
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  'Result',
                  style: Styles.textStyle18,
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
        const SearchResultListView(),
      ],
    );
  }

  void searchForBook(BuildContext context) {
    if (searchController.text.trim().isNotEmpty) {
      BlocProvider.of<SearchCubit>(context)
          .fetchSearchBooks(bookTitle: searchController.text);
    }
  }
}
