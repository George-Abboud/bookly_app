import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: kHorizontalPadding,
        right: kHorizontalPadding,
        top: 40,
        bottom: 32,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset(
            AssetsData.logo,
            height: 28,
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              AssetsData.searchIcon,
              height: 28,
            ),
          ),
        ],
      ),
    );
  }
}
