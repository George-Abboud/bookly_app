import 'package:bookly_app/features/home/presentation/views/widgets/featured_item.dart';
import 'package:flutter/material.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .25,
      child: ListView.builder(
        itemCount: 5,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return FeaturedItem(
            padding: formatPadding(index),
          );
        },
      ),
    );
  }

  EdgeInsets formatPadding(int index) {
    return index == 0
        ? const EdgeInsets.only(left: 24, right: 4)
        : index == 4
            ? const EdgeInsets.only(left: 4, right: 24)
            : const EdgeInsets.symmetric(horizontal: 4);
  }
}
