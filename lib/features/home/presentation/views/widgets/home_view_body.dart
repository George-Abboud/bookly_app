import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/featured_books_list_view.dart';

import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 32,
        ),
        CustomAppBar(),
        SizedBox(
          height: 32,
        ),
        FeaturedBooksListView(),
        SizedBox(
          height: 32,
        ),
        Padding(
          padding: kHorizontalPadding,
          child: Text(
            'Best Seller',
            style: Styles.textStyle18,
          ),
        ),
        SizedBox(
          height: 16,
        ),
        BestSellerListViewItem()
      ],
    );
  }
}
