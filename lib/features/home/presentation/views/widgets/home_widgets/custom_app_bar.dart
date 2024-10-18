import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: kHorizontalPadding,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset(
            AssetsData.logo,
            height: 24,
          ),
          IconButton(
            padding: EdgeInsets.zero,
            onPressed: () {
              GoRouter.of(context).push(AppRouter.kSearchView);
            },
            icon: SvgPicture.asset(
              AssetsData.searchIcon,
            ),
          ),
        ],
      ),
    );
  }
}
