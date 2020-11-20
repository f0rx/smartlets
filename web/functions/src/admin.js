const functions = require('firebase-functions');
const admin = require("firebase-admin");

// Initialize Admin App here
admin.initializeApp();

const db = admin.firestore();
const dbRaw = admin.firestore;
const config = functions.config();

module.exports = { db, dbRaw, config, admin, functions };
