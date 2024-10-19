import 'package:bookly_app/features/home/presentation/views/widgets/home_widgets/book_item.dart';
import 'package:flutter/material.dart';

class BestSellerItems extends StatelessWidget {
  const BestSellerItems({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.only(bottom: 36),
          child: BookItem(),
        );
      },
    );
  }
}
