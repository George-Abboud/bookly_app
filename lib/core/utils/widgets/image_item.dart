import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ImageItem extends StatelessWidget {
  const ImageItem({
    super.key,
    this.padding,
    required this.image,
  });

  final String image;
  final EdgeInsetsGeometry? padding;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding == null ? EdgeInsets.zero : padding!,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: AspectRatio(
          aspectRatio: 0.65,
          child: CachedNetworkImage(
            imageUrl: image,
            fit: BoxFit.fill,
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
