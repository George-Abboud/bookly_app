import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/home_widgets/play_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class FeaturedItem extends StatelessWidget {
  const FeaturedItem({super.key, required this.padding, required this.book});
  final EdgeInsetsGeometry padding;
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookDetailsView);
      },
      child: Padding(
        padding: padding,
        child: AspectRatio(
          aspectRatio: 0.65,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(book.volumeInfo.imageLinks.thumbnail),
              ),
            ),
            alignment: Alignment.bottomRight,
            child: const PlayButton(),
          ),
        ),
      ),
    );
  }
}
