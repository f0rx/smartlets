import 'package:smartlets/features/auth/domain/entities/fields/exports.dart';
import 'package:smartlets/features/auth/domain/entities/fields/gender/gender.dart';
import 'package:test/test.dart';

import 'fixtures/fixture-reader.dart';

void main() {
  final source = fixture("student.json");
  test('should equal a valid student from JSON data', () async {
    // when:
    // final std = StudentAuthDTO.fromJson(jsonDecode(source))
    //     .copyWith(id: jsonDecode(source)['id']);

    // print(std.toString());
    // print((std.createdAt as FieldValue));
    Gender gender = Gender(GenderType.Male);
    print("====================================+++++==================");
    print("Value ==> ${gender?.getOrEmpty?.name}");
    // act:
    // actual value to be returned

    // assert/verify:
    // Ensure a method was called, or a value was returned
    // Or check that Actual value should be equal to expected value
  });
}
