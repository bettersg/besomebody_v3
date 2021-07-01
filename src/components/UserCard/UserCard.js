import React from "react";

import PropTypes from "prop-types";

import { Paper } from "@material-ui/core";

function UserCard(props) {
  const user = props.user;

  return (
    <Paper elevation={3} square={false} outlined>
      <h1>{user.username}</h1>
      Age: {user.age}<br />
      Gender: {user.gender}<br />
      Race: {user.race}<br />
      Religion: {user.religion}<br />
      Housing: {user.housing}<br />      
    </Paper>
  );
}

UserCard.propTypes = {
  user: PropTypes.object.isRequired,
};

export default UserCard;
