import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/home_widgets/best_seller_items.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/home_widgets/custom_app_bar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/home_widgets/featured_books_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
                height: 24,
              ),
            ],
          ),
        ),
        BestSellerItems(),
      ],
    );
  }
}
