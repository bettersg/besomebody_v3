import React from "react";

import ReactDOM from "react-dom";

import { MemoryRouter } from "react-router-dom";

import HomePage from "./HomePage";
import { useAuth } from "../../contexts/AuthContext";

jest.mock("../../contexts/AuthContext");

beforeEach(() => {
  useAuth.mockReturnValue({
    currentUser: { id: "test-uid", email: "test@example.com" },
    logout: jest.fn(),
    deleteUser: jest.fn(),
  });
});

it("renders without crashing", () => {
  const div = document.createElement("div");

  ReactDOM.render(
    <MemoryRouter>
      <HomePage title="" />
    </MemoryRouter>,
    div
  );

  ReactDOM.unmountComponentAtNode(div);
});
