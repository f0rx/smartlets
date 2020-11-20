const { db, functions } = require("../admin");

const USERS_COLLECTION = "users";

exports.deleteUserRecord = functions.auth.user().onDelete((user) => {
  return db
    .collection(USERS_COLLECTION)
    .doc(user.uid)
    .delete();
});
