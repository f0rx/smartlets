import 'package:dartz/dartz.dart';
import 'package:smartlets/features/auth/domain/core/auth_provider_type.dart';
import 'package:smartlets/features/shared/shared.dart';

class Phone extends FieldObject<String> {
  static const Phone DEFAULT = Phone._(Right(''), Country.NG);
  final Either<FieldObjectException<String>, String> value;
  final Country country;

  factory Phone(String phone, Country country, {FIELD_VALIDATION mode}) {
    assert(phone != null);
    assert(country != null);
    return Phone._(Validator.phoneNumberValidator(phone, country, mode: mode), country);
  }

  const Phone._(this.value, this.country);
}
