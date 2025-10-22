import 'package:bookly_app/Features/home/data/presentation/views/widgets/custome_book_details_app_bar.dart';
import 'package:flutter/material.dart';

class BooksDetailsViewBody extends StatelessWidget {
  const BooksDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(children: [CustomeBookDetailsAppBar()]),
    );
  }
}
