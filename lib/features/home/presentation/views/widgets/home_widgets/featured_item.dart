import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/home_widgets/play_button.dart';
import 'package:cached_network_image/cached_network_image.dart';
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
          child: CachedNetworkImage(
            imageBuilder: (context, imageProvider) => Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: imageProvider,
                ),
              ),
              alignment: Alignment.bottomRight,
              child: const PlayButton(),
            ),
            imageUrl: book.volumeInfo.imageLinks.thumbnail,
            errorWidget: (context, url, error) => Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: .1),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Icon(
                Icons.error,
                size: 32,
                color: Colors.white.withOpacity(.7),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
