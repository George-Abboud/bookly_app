import 'package:bookly_app/features/home/presentation/manager/cubits/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/manager/cubits/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/home_widgets/home_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: RefreshIndicator(
          onRefresh: () async {
            Future.delayed(
              const Duration(
                seconds: 5,
              ),
            );
            setState(() {
              BlocProvider.of<FeaturedBooksCubit>(context).fetchFeaturedBooks();
              BlocProvider.of<NewestBooksCubit>(context).fetchNewestBooks();
            });
          },
          color: Colors.white,
          child: const HomeViewBody(),
        ),
      ),
    );
  }
}
