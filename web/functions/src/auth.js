const { db, dbRaw, config } = require("../admin");

const COLLECTION = "students";

const createUserRecord = (user) => {
  const uid = user.uid; // The id of the user.
  const email = user.email; // The email of the user.
  const emailVerified = user.emailVerified === null || user.emailVerified === undefined ? false : user.emailVerified; // User verification status
  const provider = user.providerData === null || user.providerData === undefined ? [] : user.providerData; // Current Providers' data
  const displayName = user.displayName === null || user.displayName === undefined ? '' : user.displayName; // The display name of the user.
  const photoURL = user.photoURL === null || user.photoURL === undefined ? '' : user.photoURL; // The photoURL of the signed-in user.
  const phoneNumber = user.phoneNumber === null || user.phoneNumber === undefined ? '' : user.phoneNumber; // The Phone number of the user.
  const createdAt = user.metadata.creationTime === null || user.metadata.creationTime === undefined ? null : dbRaw.Timestamp.fromDate(new Date(user.metadata.creationTime)); // The account date of creation.
  const lastSeenAt = user.metadata.lastSignInTime === null || user.metadata.lastSignInTime === undefined ? null : dbRaw.Timestamp.fromDate(new Date(user.metadata.lastSignInTime)); // Last seen time.
  const lastRefreshTime = user.metadata.lastRefreshTime === null || user.metadata.lastRefreshTime === undefined ? null : dbRaw.Timestamp.fromDate(new Date(user.metadata.lastRefreshTime)); // Last seen time.

  const providerData = provider.map((item) => {
    return {
        id: item.uid === null || item.uid === undefined ? '' : item.uid,
        displayName: item.displayName === null || item.displayName === undefined ? '' : item.displayName,
        email: item.email === null || item.email === undefined ? '' : item.email,
        providerId: item.providerId === null || item.providerId === undefined ? '' : item.providerId,
        photoURL: item.photoURL === null || item.photoURL === undefined ? '' : item.photoURL,
        phoneNumber: item.phoneNumber === null || item.phoneNumber === undefined ? '' : item.phoneNumber,
    };
  });

  let data = {
    displayName: displayName,
    email: email,
    // Get default photoURL from firebase.config()
    photoURL: photoURL == '' ? config.user.photourl : photoURL,
    isEmailVerified: emailVerified,
    providers: providerData,
    phone: phoneNumber,
    createdAt: createdAt,
    lastSeenAt: lastSeenAt == null ? lastRefreshTime == null ? createdAt : lastRefreshTime : lastSeenAt,
    updatedAt: lastSeenAt == null ? lastRefreshTime == null ? createdAt : lastRefreshTime : lastSeenAt,
  };

  return db
    .collection(COLLECTION)
    .doc(uid)
    .set(data);
};

const deleteUserRecord = (user) => {
  return db
    .collection(COLLECTION)
    .doc(user.uid)
    .delete();
};

//export as => functions.auth.user().onCreate(#####);

module.exports = {
  createUserRecord,
  deleteUserRecord,
};
