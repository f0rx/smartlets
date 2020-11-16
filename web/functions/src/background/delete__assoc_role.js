const { db, functions } = require("../admin");

const USERS_COLLECTION = "users";

const ADMINS_COLLECTION = "admins";

const PARENTS_COLLECTION = "parents";

const STUDENTS_COLLECTION = "students";

exports.AssocUser = functions.firestore.document(`${USERS_COLLECTION}/{userId}`)
  .onDelete(async (change, context) => {

    const adminRef = db.collection(ADMINS_COLLECTION).doc(context.params.userId);
    const parentRef = db.collection(PARENTS_COLLECTION).doc(context.params.userId);
    const studentRef = db.collection(STUDENTS_COLLECTION).doc(context.params.userId);

    if ((await adminRef.get()).exists) {
        await adminRef.delete();
    }

    if ((await parentRef.get()).exists) {
        await parentRef.delete();
    }

    if ((await studentRef.get()).exists) {
        await studentRef.delete();
    }
});
