import 'package:bookly_app/Features/home/data/presentation/views/widgets/books_details_section.dart';
import 'package:bookly_app/Features/home/data/presentation/views/widgets/custome_book_details_app_bar.dart';
import 'package:bookly_app/Features/home/data/presentation/views/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';

class BooksDetailsViewBody extends StatelessWidget {
  const BooksDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                CustomeBookDetailsAppBar(),
                const BookDetailsSection(),

                Expanded(child: const SizedBox(height: 50)),
                SimilarBooksSection(),
                SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
