library user;

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smartlets/features/auth/domain/entities/fields/exports.dart';
import 'package:smartlets/features/parent/domain/entities/entities.dart';
import 'package:smartlets/utils/utils.dart';

part 'user.freezed.dart';

@freezed
@immutable
abstract class User implements _$User {
  // @protected
  const User._();

  const factory User({
    @required UniqueId id,
    @required @nullable String displayName,
    @required String email,
    @required @nullable bool isEmailVerified,
    @required @nullable String phone,
    @required @nullable String photoURL,
    @required DateTime createdAt,
    @required DateTime lastSeenAt,
  }) = _User;

  factory User.firebaseAuth({
    @required UniqueId id,
    @required @nullable String displayName,
    @required String email,
    @required @nullable bool isEmailVerified,
    @required @nullable String phone,
    @required @nullable String photoURL,
    @required DateTime createdAt,
    @required DateTime lastSeenAt,
  }) =>
      User(
        id: id,
        displayName: displayName,
        email: email,
        isEmailVerified: isEmailVerified,
        phone: phone,
        photoURL: photoURL,
        createdAt: createdAt,
        lastSeenAt: lastSeenAt,
      );

  factory User.guest() => User(
        id: UniqueId(),
        displayName: "Anonymous",
        email: "name@email.com",
        isEmailVerified: false,
        phone: "+2348100000000",
        photoURL: "",
        createdAt: Helpers.I.today,
        lastSeenAt: Helpers.I.today,
      );

  Student asStudent({
    UniqueId id,
    DisplayName name,
    EmailAddress email,
    EmailAddress guardianEmail,
    Gender gender,
    bool verified,
    Phone phone,
    Phone guardianPhone,
    DateTime createdAt,
    DateTime lastSeenAt,
    DateTime updatedAt,
  }) =>
      Student(
        id: id,
        displayName: name ?? DisplayName(this.displayName),
        email: email ?? EmailAddress(this.email),
        isEmailVerified: verified ?? this.isEmailVerified,
        phone: phone ?? Phone(this.phone, phone?.country ?? Country.NG),
        photoURL: photoURL ?? this.photoURL,
        // This here sets the default Gender to Male (when saving to firestore)
        gender: gender ?? Gender(GenderType.Other),
        guardianPhone: guardianPhone ?? Phone(this.phone, phone?.country ?? Country.NG),
        guardianEmail: guardianEmail ?? EmailAddress(this.email),
        createdAt: createdAt ?? this.createdAt,
        lastSeenAt: lastSeenAt ?? this.lastSeenAt,
      );

  Instructor get sampleInstructor => Instructor(
        id: id,
        displayName: DisplayName(displayName),
        email: EmailAddress(email),
        isEmailVerified: isEmailVerified,
        phone: phone,
        photoURL: photoURL,
        createdAt: createdAt,
        lastSeenAt: lastSeenAt,
        bio: Biography(input: "Hey! Here's my biography"),
        specialty: Specialty(input: "Web design"),
      );
}
