import 'package:dartz/dartz.dart';

import '../../features/number_trivia/presentation/bloc/number_trivia_bloc.dart';

class InputConverter {
  Either<InvalidInputFailure, int> stringToUnsignedInteger(String str) {
    try {
      final integer = int.parse(str);
      if (integer < 0) throw FormatException();
      return Right(integer);
    } on FormatException {
      return Left(InvalidInputFailure());
    }
  }
}

class InvalidInputFailure extends NumberTriviaEvent {}
