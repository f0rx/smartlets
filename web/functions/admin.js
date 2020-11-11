const functions = require('firebase-functions');
const admin = require("firebase-admin");

admin.initializeApp(functions.config().firebase);
const db = admin.firestore();
const dbRaw = admin.firestore;

module.exports = { db, dbRaw };
