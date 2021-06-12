import React, { Component } from "react";

import { Link } from "react-router-dom";

import { Fab, Box } from "@material-ui/core";

import { Home as HomeIcon } from "@material-ui/icons";

import EmptyState from "../EmptyState";

import { ReactComponent as NotFoundIllustration } from "../../illustrations/not-found.svg";

class NotFoundPage extends Component {
  render() {
    return (
      <EmptyState
        image={<NotFoundIllustration />}
        title="404"
        description="We built a game where you can be anybody - but it's better if you're not lost on our website."
        button={
          <Fab variant="extended" color="primary" component={Link} to="/">
            <Box clone mr={1}>
              <HomeIcon />
            </Box>
            Return Home
          </Fab>
        }
      />
    );
  }
}

export default NotFoundPage;
