import 'package:dartz/dartz.dart';

extension DartZExtensions<L, R> on Either<L, R> {
  L get left =>
      swap().getOrElse(() => throw StateError("The result isn't on left"));

  R get right => getOrElse(() => throw StateError("The result isn't on right"));
}
