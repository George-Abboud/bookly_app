import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/widgets/image_item.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

class SimilarBookItem extends StatelessWidget {
  const SimilarBookItem({super.key, required this.book, required this.padding});
  final BookModel book;
  final EdgeInsetsGeometry padding;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookDetailsView, extra: book);
      },
      child: ImageItem(
        image: book.volumeInfo.imageLinks?.thumbnail ?? '',
        padding: padding,
      ),
    );
  }
}
