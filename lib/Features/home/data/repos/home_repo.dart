import 'package:bookly/core/errors/failures.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/models/book_model/book_model.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks();
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks();
  Future<Either<Failure, List<BookModel>>> fetchSimilarBooks({
    required String bookCategory,
  });
}
