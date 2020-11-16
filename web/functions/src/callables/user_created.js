const { db, functions } = require("../admin");
var pluralize = require('pluralize');

const USERS_COLLECTION = "users";

exports.onUserCreatedCallable = functions.https.onCall(async (data, context) => {
    // Get updated display name if available
    const uid = context.auth.uid;
//    const displayName = context.auth.token.name === null || context.auth.token.name === undefined ? '' : context.auth.token.name;

    // User's doc reference
    const userRef = db.collection(USERS_COLLECTION).doc(uid);
    // Role doc reference (students, parents, admins...)
    const ref = db.collection(pluralize.plural(data.role)).doc(uid);
    // GET User doc
    const userDoc = await userRef.get();

    async function createProfile() {
        // Write user data to new ROLE collection
        await ref.set({ ...data, ...userDoc.data(), displayName: data.displayName }, { merge: true });
        // Update user's doc in USERS
        await userRef.update({ displayName: data.displayName });
    }

    while (!(await ref.get()).exists) {
        if (userDoc.exists) await createProfile();
    }

    return (await ref.get()).exists;
});
