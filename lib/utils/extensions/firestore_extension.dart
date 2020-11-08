import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:smartlets/features/auth/domain/core/auth.dart';
import 'package:smartlets/manager/locator/locator.dart';

extension FirestoreX on FirebaseFirestore {
  CollectionReference get users {
    return collection(DbConstants.USERS_COLLECTION);
  }

  CollectionReference get students {
    return collection(DbConstants.STUDENTS_COLLECTION);
  }
}

extension CollectionReferenceX on CollectionReference {
  DocumentReference get user {
    final user = getIt<AuthFacade>().currentUser;
    return doc(user.getOrElse(() => null)?.id?.value);
  }

  DocumentReference get student {
    final user = getIt<AuthFacade>().currentUser;
    return doc(user.getOrElse(() => null)?.id?.value);
  }
}

extension DocumentReferenceX on DocumentReference {}
