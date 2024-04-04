import 'package:fpdart/fpdart.dart';
import 'package:startup_draft1/core/error/failures.dart';

abstract interface class UseCase<SuccessType, Params> {
  Future<Either<Failure, SuccessType>> call(Params params);
}
