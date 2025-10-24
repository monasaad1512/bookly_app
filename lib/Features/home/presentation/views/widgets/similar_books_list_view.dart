import 'package:bookly_app/Features/home/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custome_book_image.dart';
import 'package:bookly_app/core/widgets/custome_error_widget.dart';
import 'package:bookly_app/core/widgets/custome_loading_indcator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .25,
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: CustomeBookImage(
                    imageUrl:
                        state.books[index].volumeInfo.imageLinks!b.thumbnail,
                  ),
                );
              },
            ),
          );
        } else if (state is SimilarBooksFailure) {
          return CustomeErrorWidget(errMessage: state.errMessage);
        } else {
          return CustomeLoadingIndcator();
        }
      },
    );
  }
}
