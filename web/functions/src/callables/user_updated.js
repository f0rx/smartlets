const { functions } = require("../admin");

exports.onUserUpdatedCallable = functions.https.onCall(async (data, context) => {
    console.log("Called onUserUpdatedCallable() function exec....");
    return data;
});
