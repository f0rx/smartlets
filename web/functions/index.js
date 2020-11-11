const functions = require("firebase-functions");

const { createUserRecord } = require("./src/auth");
const { deleteUserRecord } = require("./src/auth");

module.exports = {
  createUserRecord: functions.auth.user().onCreate(createUserRecord),
  deleteUserRecord: functions.auth.user().onDelete(deleteUserRecord),
};
