const { db, functions } = require("../admin");
const pluralize = require('pluralize');

const USERS_COLLECTION = "users";

exports.AssocUser = functions.firestore.document(`${USERS_COLLECTION}/{userId}`)
  .onDelete(async (snapshot, context) => {
    // The previous snapshot before this update
    const previousValue = snapshot.data();

    // Assign role var
    const role = previousValue.role;

    // Get refs
    const adminRef = db.collection(pluralize.plural(role)).doc(context.params.userId);
    const parentRef = db.collection(pluralize.plural(role)).doc(context.params.userId);
    const studentRef = db.collection(pluralize.plural(role)).doc(context.params.userId);

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
