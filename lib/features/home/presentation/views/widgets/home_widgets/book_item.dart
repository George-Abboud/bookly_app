import 'package:bookly_app/constants.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/home_widgets/book_item_details.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/image_item.dart';
import 'package:flutter/material.dart';

class BookItem extends StatelessWidget {
  const BookItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: kHorizontalPadding,
      child: SizedBox(
        height: 144,
        child: Row(
          children: [
            ImageItem(),
            SizedBox(
              width: 24,
            ),
            BookItemDetails()
          ],
        ),
      ),
    );
  }
}
