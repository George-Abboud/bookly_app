import 'package:bookly_app/core/utils/functions/launch_url.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_details_widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BookAction extends StatelessWidget {
  const BookAction({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    final bool absorbingPreview = getAbsorb(book.volumeInfo.previewLink);
    final bool absorbingDownload =
        getAbsorb(book.accessInfo?.pdf?.acsTokenLink);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          CustomButton(
            absorbing: absorbingDownload,
            onPressed: () {
              launchCustomUrl(context, book.accessInfo?.pdf?.acsTokenLink);
            },
            text: !absorbingDownload ? 'Download' : 'Un Available',
            backgroundColor: !absorbingDownload
                ? Colors.white
                : Colors.white.withOpacity(0.5),
            textColor: Colors.black,
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(12),
              topLeft: Radius.circular(12),
            ),
          ),
          CustomButton(
            absorbing: absorbingPreview,
            onPressed: () {
              launchCustomUrl(context, book.volumeInfo.previewLink);
            },
            text: !absorbingPreview ? 'Preview' : 'Un Available',
            backgroundColor: !absorbingPreview
                ? const Color(0xffEF8262)
                : const Color(0x88EF8262),
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

  bool getAbsorb(String? url) => url == null ? true : false;
}
