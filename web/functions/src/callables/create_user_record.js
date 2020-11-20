const { db, dbRaw, config, functions } = require("../admin");

const USERS_COLLECTION = "users";

exports.callable = functions.https.onCall(async (data, context) => {
    const uid = context.auth.uid; // Authenticated User ID
    const displayName = data.displayName === null || data.displayName === undefined ? '' : data.displayName; // The display name of the user.
    const email = data.email === null || data.email === undefined ? '' : data.email; // The email of the user.
    const emailVerified = data.isEmailVerified === null || data.isEmailVerified === undefined ? false : data.isEmailVerified; // User verification status
    const providerData = data.providers === null || data.providers === undefined ? [] : data.providers; // Current Providers' data
    const photoURL = data.photoURL === null || data.photoURL === undefined ? config.user.photourl : data.photoURL; // The photoURL of the signed-in user.
    const phoneNumber = data.phone === null || data.phone === undefined ? '' : data.phone; // The Phone number of the user.
    const country = data.country === null || data.country === undefined ? {} : data.country; // The Country data of the user.
    const createdAt = data.createdAt === null || data.createdAt === undefined ? null : dbRaw.Timestamp.fromDate(new Date(data.createdAt)); // The account date of creation.
    const lastSeenAt = data.lastSeenAt == null || data.lastSeenAt === undefined ? createdAt : dbRaw.Timestamp.fromDate(new Date(data.lastSeenAt)); // Last seen time.

    // User's doc reference
    const userRef = db.collection(USERS_COLLECTION).doc(uid);
    const userDoc = await userRef.get();

    async function createRecord() {
        let data = {
            displayName: displayName,
            email: email,
            // Get default photoURL from firebase.config()
            photoURL: photoURL,
            isEmailVerified: emailVerified,
            providers: providerData,
            phone: phoneNumber,
            country: country,
            createdAt: createdAt,
            lastSeenAt: lastSeenAt,
            updatedAt: null,
        };
    
        // Create new User data
        return await userRef.set(data);
    }

    // If User doc does not exist
    if (!userDoc.exists) await createRecord();

    return (await userRef.get()).exists;
});
