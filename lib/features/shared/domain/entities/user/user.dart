library user;

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smartlets/features/parent/domain/entities/entities.dart';
import 'package:smartlets/utils/utils.dart';

part 'user.freezed.dart';

@freezed
@immutable
abstract class User implements _$User {
  @protected
  const factory User._({
    @required UniqueId id,
    @nullable String displayName,
    @required String email,
    @nullable bool isEmailVerified,
    @nullable String phone,
    @nullable String photoURL,
    @required DateTime createdAt,
    @required DateTime lastSeenAt,
  }) = _User;

  factory User.firebaseAuth({
    @required UniqueId id,
    @nullable String displayName,
    @required String email,
    @nullable bool isEmailVerified,
    @nullable String phone,
    @nullable String photoURL,
    @required DateTime createdAt,
    @required DateTime lastSeenAt,
  }) =>
      User._(
        id: id,
        displayName: displayName,
        email: email,
        isEmailVerified: isEmailVerified,
        phone: phone,
        photoURL: photoURL,
        createdAt: createdAt,
        lastSeenAt: lastSeenAt,
      );

  factory User.guest() => User._(
        id: UniqueId(),
        displayName: "Anonymous",
        email: "name@email.com",
        isEmailVerified: false,
        phone: "+2348100000000",
        photoURL: "",
        createdAt: Helpers.I.today,
        lastSeenAt: Helpers.I.today,
      );
}
