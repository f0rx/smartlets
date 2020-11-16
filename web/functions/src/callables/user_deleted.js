const { functions } = require("../admin");

exports.onUserDeletedCallable = functions.https.onCall(async (data, context) => {
    console.log("Called onUserDeletedCallable() function exec....");
    return data;
});
