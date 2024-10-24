import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/search/presentation/manager/cubits/search_books_cubit/search_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (data) {
        BlocProvider.of<SearchBooksCubit>(context)
            .searchBooks(searchBooks: data);
      },
      style: Styles.textStyle14,
      cursorColor: Colors.white,
      decoration: InputDecoration(
        focusColor: Colors.white,
        contentPadding: const EdgeInsets.only(left: 24, top: 8, bottom: 8),
        hintText: 'Search',
        hintStyle: TextStyle(
            color: Colors.white.withOpacity(.5), fontWeight: FontWeight.normal),
        suffixIcon: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              AssetsData.searchIcon,
            ),
          ),
        ),
        enabledBorder: buildBorder(
          color: Colors.white.withOpacity(.5),
        ),
        focusedBorder: buildBorder(
          width: 2,
        ),
        disabledBorder: buildBorder(
          color: Colors.white.withOpacity(.5),
        ),
      ),
    );
  }

  UnderlineInputBorder buildBorder(
      {Color color = Colors.white, double width = 1}) {
    return UnderlineInputBorder(
      borderSide: BorderSide(color: color, width: width),
    );
  }
}
