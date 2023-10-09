import 'package:dartz/dartz.dart';
import 'package:things/core/usecase/usecase.dart';
import 'package:things/src/domain/entities/thing.dart';

class FetchThingsUseCase extends UseCase<Iterable<Thing>, Unit> {
  @override
  Future<Either<Error, Iterable<Thing>>> call(Unit p) {
    // TODO: implement call
    throw UnimplementedError();
  }
}
