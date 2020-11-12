const functions = require('firebase-functions');
const admin = require("firebase-admin");

admin.initializeApp(functions.config().firebase);
const db = admin.firestore();
const dbRaw = admin.firestore;
const config = functions.config();

module.exports = { db, dbRaw, config };
