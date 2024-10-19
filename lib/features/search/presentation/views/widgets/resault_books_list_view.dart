import 'package:bookly_app/core/widgets/book_item.dart';
import 'package:flutter/material.dart';

class ResaultBooks extends StatelessWidget {
  const ResaultBooks({super.key});

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
