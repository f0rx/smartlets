const functions = require("firebase-functions");

const createUserRecord = require("./create_user_record");
const updateUserRecord = require("./update_user_record");

module.exports = {
  createUserRecord,
  updateUserRecord,
};
