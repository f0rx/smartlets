const { db, functions } = require("../admin");
const pluralize = require('pluralize');

const USERS_COLLECTION = "users";

exports.callable = functions.https.onCall(async (data, context) => {
    // Get updated display name if available
    const uid = context.auth.uid;

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
        await userRef.update({ displayName: data.displayName, role: data.role });
    }

    // Only update user record if [USER DOCUMENT] exists && [ROLE DOCUMENT] does not exist
    if (userDoc.exists && !(await ref.get()).exists) await createProfile();

    return (await ref.get()).exists;
});
