import React from "react";
import ReactDOM from "react-dom";
import * as Sentry from "@sentry/browser";
import * as serviceWorker from "./serviceWorker";
// import "typeface-inter";
import "./index.css";
import App from "./App";

// Only report to Sentry in production builds that have a DSN configured, so
// local development and the test runner don't send noise.
if (process.env.NODE_ENV === "production" && process.env.REACT_APP_SENTRY_DSN) {
  Sentry.init({
    dsn: process.env.REACT_APP_SENTRY_DSN,
    release: `${process.env.REACT_APP_NAME}@${process.env.REACT_APP_VERSION}`,
  });
}

ReactDOM.render(<App />, document.getElementById("root"));
// Unregister any previously-registered service worker instead of registering a
// new one: the CRA service worker aggressively caches the app shell, which was
// leaving users stuck on a stale bundle after each deploy.
serviceWorker.unregister();
