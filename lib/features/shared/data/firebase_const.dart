mixin DbConstants {
  static const String USERS_COLLECTION = "users";

  static const String STUDENTS_COLLECTION = "students";

  static const String PARENTS_COLLECTION = "parents";

  static const String ADMINS_COLLECTION = "admins";

  static const String ORDER_BY = "createdAt";
}

mixin FirebaseFnConstants {
  static const String CREATE_USER_RECORD_CALLABLE = "calls-createUserRecord-callable";
  static const String UPDATE_USER_RECORD_CALLABLE = "calls-updateUserRecord-callable";
}
