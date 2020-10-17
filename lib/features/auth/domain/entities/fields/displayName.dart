import 'package:dartz/dartz.dart';
import 'package:smartlets/features/auth/domain/core/auth.dart';

class DisplayName extends FieldObject<String> {
  @override
  final Either<FieldObjectException<String>, String> value;

  factory DisplayName(String input) {
    assert(input != null);
    return DisplayName._(Validator.isEmpty(input));
  }

  const DisplayName._(this.value);
}
