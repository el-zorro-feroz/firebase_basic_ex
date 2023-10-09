import 'package:dartz/dartz.dart';

abstract class UseCase<T, P> {
  Future<Either<Error, T>> call(P p);
}
