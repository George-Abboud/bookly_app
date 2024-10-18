import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/image_item.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: kHorizontalPadding,
          child: Column(
            children: [
              const CustomBookDetailsAppBar(),
              const SizedBox(
                height: 16,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * .18),
                child: const ImageItem(),
              ),
              const SizedBox(
                height: 24,
              ),
              Text(
                'Harry Potter',
                style: Styles.textStyle30.copyWith(fontFamily: kGTSectraFine),
              ),
              Text(
                'David Martin',
                style: Styles.textStyle18.copyWith(
                  fontStyle: FontStyle.italic,
                  color: Colors.white.withOpacity(.7),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const BookRating(
                mainAxisAlignment: MainAxisAlignment.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomBookDetailsAppBar extends StatelessWidget {
  const CustomBookDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.close,
            size: 32,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.shopping_cart_outlined,
            size: 32,
          ),
        ),
      ],
    );
  }
}
