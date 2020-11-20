const createUserRecord = require("./create_user_record");
const deleteUserRecord = require("./delete_user_record");
const purge = require("./purge_inactive_users");

module.exports = {
//  createUserRecord,
  deleteUserRecord,
  purge,
};
