import 'package:bookly_app/core/utils/functions/launch_url.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_details_widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BookAction extends StatelessWidget {
  const BookAction({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          const CustomButton(
            text: 'Download',
            backgroundColor: Colors.white,
            textColor: Colors.black,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(12),
              topLeft: Radius.circular(12),
            ),
          ),
          CustomButton(
            onPressed: () async {
              launchCustomUrl(context, book.volumeInfo.previewLink);
            },
            text: getText(book),
            backgroundColor: const Color(0xffEF8262),
            textColor: Colors.white,
            borderRadius: const BorderRadius.only(
              bottomRight: Radius.circular(12),
              topRight: Radius.circular(12),
            ),
            fontSize: 14,
          ),
        ],
      ),
    );
  }

  String getText(BookModel book) {
    if (book.volumeInfo.previewLink == null) {
      return 'Un Availabe';
    } else {
      return 'Preview';
    }
  }
}
