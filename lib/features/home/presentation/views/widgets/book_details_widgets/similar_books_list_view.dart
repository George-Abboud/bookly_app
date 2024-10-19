import 'package:bookly_app/core/widgets/image_item.dart';
import 'package:flutter/material.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .17,
      child: ListView.builder(
        itemCount: 30,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return ImageItem(
            padding: formatPadding(index),
          );
        },
      ),
    );
  }

  EdgeInsets formatPadding(int index) {
    return index == 0
        ? const EdgeInsets.only(left: 24, right: 6)
        : index == 29
            ? const EdgeInsets.only(left: 6, right: 24)
            : const EdgeInsets.symmetric(horizontal: 6);
  }
}
