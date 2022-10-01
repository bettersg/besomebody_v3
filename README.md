# Better.sg ToBeYou Game

ToBeYou is an interactive fiction game where players go through "life" as someone else, make life choices, discover hardships and dilemmas, and learn to empathise with the life journeys of people from different backgrounds.

Find out more at https://tobeyou.sg
![tobeyou_key visual](https://user-images.githubusercontent.com/6855844/178995561-a549eaf1-fd4c-40ae-9279-56f970eac785.jpg)

## Build and deployment
The site deploys to Firebase hosting. GitHub Actions have been set up for automated deployments.

When you create a PR, GitHub Actions will deploy the site to a preview URL.

When the PR is merged to `main`, GitHub Actions will deploy the staging site.

When `release` is updated, GitHub Actions will deploy the production site. 

To make a release, you can raise a PR to merge `main` into `release`. (Lead dev can checkout `release` locally, merge in `main`, and then push directly.)

The preview, staging and production sites are all configured to use the same Firebase app. Auth, data storage, and other services are thus common across all environments.

### Firebase Env

For the development server to work, Firebase must first be configured by setting up `.env`.

If you already have an `.env` file for an existing Firebase app, simply copy it to the root directory.

Otherwise, copy `.env.example` into a new `.env` file.
Create a new Firebase project [here](https://console.firebase.google.com/).
Add a new web application, then copy its Firebase configuration variables into `.env`.
- Under Authentication, navigate to "Sign-in method" and enable Email/Password, Google, and/or Facebook. These are needed for signing in.
- Under Firestore Database, navigate to "Rules" and edit them to enable reads and writes, e.g. by modifying it to `allow read, write: if true;` in line 5.

Once Firebase has been set up, set the following environment variables to
their appropriate values from Firebase in an `.env` file:

- `REACT_APP_FIREBASE_API_KEY`
- `REACT_APP_FIREBASE_AUTH_DOMAIN`
- `REACT_APP_FIREBASE_PROJECT_ID`
- `REACT_APP_FIREBASE_STORAGE_BUCKET`
- `REACT_APP_FIREBASE_MESSAGING_SENDER_ID`
- `REACT_APP_FIREBASE_APP_ID`
- `REACT_APP_FIREBASE_MEASUREMENT_ID`

### Setup

Run `npm install` to install the required dependencies,
then run `npm start` to start the app on `localhost:3000`.
 
The game uses Inky (by Inklestudios) as the backend for the narrative engine, and a custom React front end.

### Deploying Cloud Functions

To deploy the cloud functions in `/functions`:
1. Ensure that you are logged in as the right user, by running `firebase login --reauth`
2. Ensure that the project name being referenced in `.firebaserc` is correct
3. Deploy the functions using `firebase deploy --only functions`

## Community

This is a nonprofit volunteer-run project by [better.sg](https://better.sg).

<a href="https://better.sg/join.html">
  <img width="192.35" height="50" src="https://better.sg/wp-content/uploads/2020/12/betterwordlogo@0.5x.png" />
</a>
