import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/home_widgets/newest_books_builder.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/home_widgets/custom_app_bar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/home_widgets/featured_book_builder.dart';
import 'package:flutter/material.dart';

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
              SizedBox(
                height: 32,
              ),
              FeaturedBookBuilder(),
              SizedBox(
                height: 64,
              ),
              Padding(
                padding: kHorizontalPadding,
                child: Text(
                  'Newest Books',
                  style: Styles.textStyle16,
                ),
              ),
              SizedBox(
                height: 24,
              ),
            ],
          ),
        ),
        NewestBooksBuilder(),
      ],
    );
  }
}
