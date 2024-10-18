import 'package:bookly_app/constants.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/home_widgets/best_seller_list_view_details.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/image_item.dart';
import 'package:flutter/material.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

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
            BestSellerItemDetails()
          ],
        ),
      ),
    );
  }
}
