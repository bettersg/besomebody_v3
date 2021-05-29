import React from "react";

import ReactDOM from "react-dom";

import { MemoryRouter } from "react-router-dom";

import IntroPage from "./IntroPage";

it("renders without crashing", () => {
  const div = document.createElement("div");

  ReactDOM.render(
    <MemoryRouter>
      <IntroPage  />
    </MemoryRouter>,
    div
  );

  ReactDOM.unmountComponentAtNode(div);
});
