const functions = require("firebase-functions");

const onUserCreated = require("./user_created");
const onUserUpdated = require("./user_updated");
const onUserDeleted = require("./user_deleted");

module.exports = {
  onUserCreated,
  onUserUpdated,
  onUserDeleted,
};
