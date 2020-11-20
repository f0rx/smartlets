const { db, functions } = require("../admin");
const pluralize = require('pluralize');

const USERS_COLLECTION = "users";

exports.usersCollection = functions.firestore.document(`${USERS_COLLECTION}/{userId}`)
  .onUpdate(async (change, context) => {
    // The current snapshot of document after update
    const newValue = change.after.data();

    // Assign role var
    const role = newValue.role;

    // Get refs
    const adminRef = db.collection(pluralize.plural(role)).doc(context.params.userId);
    const parentRef = db.collection(pluralize.plural(role)).doc(context.params.userId);
    const studentRef = db.collection(pluralize.plural(role)).doc(context.params.userId);

    if ((await adminRef.get()).exists) {
        await adminRef.update({ ...newValue });
    }

    if ((await parentRef.get()).exists) {
        await parentRef.update({ ...newValue });
    }

    if ((await studentRef.get()).exists) {
        await studentRef.update({ ...newValue });
    }
});
