# Better.sg ToBeYou Game

ToBeYou is an interactive fiction game where players go through "life" as someone else, make life choices, discover hardships and dilemmas, and learn to empathise with the life journeys of people from different backgrounds.

The game uses Inky (by Inklestudios) as the backend for the narrative engine, and a custom React front end.

Find out more at https://tobeyou.sg

## Build and deployment
The site deploys to Firebase hosting. GitHub Actions have been set up for automated deployments.

When you create a PR, GitHub Actions will deploy the site to a preview URL.

When the PR is merged to `main`, GitHub Actions will deploy the staging site.

When `release` is updated, GitHub Actions will deploy the production site. 

To make a release, you can raise a PR to merge `main` into `release`. (Lead dev can checkout `release` locally, merge in `main`, and then push directly.)

The preview, staging and production sites are all configured to use the same Firebase app. Auth, data storage, and other services are thus common across all environments.

## Local development

Run `npm install` to install all dependencies.

Run `npm start` to start the development server on `localhost:3000`.

### Firebase

For the development server to work, Firebase must first be configured by setting up `.env`.

If you already have an `.env` file for an existing Firebase app, simply copy it to the root directory.

Otherwise, copy `.env.example` into a new `.env` file.
Create a new Firebase project [here](https://console.firebase.google.com/).
Add a new web application, then copy its Firebase configuration variables into `.env`.
- Under Authentication, navigate to "Sign-in method" and enable Email/Password, Google, and/or Facebook. These are needed for signing in.
- Under Firestore Database, navigate to "Rules" and edit them to enable reads and writes, e.g. by modifying it to `allow read, write: if true;` in line 5.

