import 'package:dartz/dartz.dart';
import 'package:smartlets/features/shared/shared.dart';

class OTPCode extends FieldObject<String> {
  static const PHONE_VERIFICATION_LENGTH = 6;
  final Either<FieldObjectException<String>, String> value;

  factory OTPCode(String input) {
    assert(input != null);
    return OTPCode._(
        Validator.otpCodeValidator(input, max: PHONE_VERIFICATION_LENGTH));
  }

  const OTPCode._([this.value]);
}
