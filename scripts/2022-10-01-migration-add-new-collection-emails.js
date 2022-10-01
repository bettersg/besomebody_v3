
/**
 * To run this script, replace the email address and password with one with sufficient permissions,
 * and run `$ node <script-name>.js`.
 */

/**
 * This migration script pulls all users' emails into a new email collection.
 * Note: it does not delete the user's email field, that will be done in a separate migration.
 */

const EMAIL_ADDRESS = 'TODO'
const PASSWORD = 'TODO'

const firebase = require('firebase/app').default;
require('firebase/auth');
require('firebase/firestore');
require('dotenv').config();

firebase.initializeApp({
  apiKey: process.env.REACT_APP_FIREBASE_API_KEY,
  authDomain: process.env.REACT_APP_FIREBASE_AUTH_DOMAIN,
  projectId: process.env.REACT_APP_FIREBASE_PROJECT_ID,
  storageBucket: process.env.REACT_APP_FIREBASE_STORAGE_BUCKET,
  messagingSenderId: process.env.REACT_APP_FIREBASE_MESSAGING_SENDER_ID,
  appId: process.env.REACT_APP_FIREBASE_APP_ID,
  measurementId: process.env.REACT_APP_FIREBASE_MEASUREMENT_ID,
});

const firestore = firebase.firestore();
const auth = firebase.auth();

async function getDocuments(collection) {
  const snapshot = await firestore.collection(collection).get();
  const documents = snapshot.docs.map(doc => ({ ...doc.data(), id: doc.id }));
  return documents;
}

// async function getDocument(collection, id) {
//   const snapshot = await firestore.collection(collection).doc(id).get();
//   const document = { ...snapshot.data(), id: snapshot.id };
//   return document;
// }

async function authentication() {
  console.log('Authenticating...')
  await auth.signInWithEmailAndPassword(EMAIL_ADDRESS, PASSWORD)
}

async function up() {
  console.log('Migrating up...')
  await authentication();
  console.log('Retrieving users...');
  const users = await getDocuments('users');
  console.log('Creating emails...');
  await Promise.all(users.map(async (user) => {
    await firestore.collection('emails').doc(user.id).set({
      email: user.email,
    });
    console.log(`Created email document ${user.email} with user ID ${user.id}`)
  }));
  console.log('Success!');
}

async function down() {
  console.log('Migrating down...');
  await authentication();
  console.log('Retrieving emails...');
  const emails = await getDocuments('emails');
  console.log('Deleting all emails...');
  await Promise.all(emails.map(async (email) => {
    await firestore.collection('emails').doc(email.id).delete();
    console.log(`Deleted email document ${email.email}`);
  }));
  console.log('Success!');
}

up() // change either up or down migration here
  .catch(err => console.log(err))
  .finally(process.exit);

