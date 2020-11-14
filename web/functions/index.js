const functions = require("firebase-functions");

const auth = require("./src/auth/triggers");
const calls = require("./src/callables/callable");
const background = require("./src/background/triggers");

module.exports = {
    auth,
    calls,
    background,
};
