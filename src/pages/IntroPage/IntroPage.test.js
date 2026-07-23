import React from "react";

import ReactDOM from "react-dom";

import { MemoryRouter } from "react-router-dom";

import IntroPage from "./IntroPage";
import { useAuth } from "../../contexts/AuthContext";

jest.mock("../../contexts/AuthContext");

beforeEach(() => {
  useAuth.mockReturnValue({ currentUser: { id: "test-uid", email: "test@example.com" } });
});

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
