import React, { Component } from 'react'

import PropTypes from 'prop-types'

import { Link as RouterLink } from 'react-router-dom'

import {
  AppBar,
  Toolbar,
  Typography,
  Box,
  ButtonGroup,
  Button,
  Link,
} from '@material-ui/core'

import "./style.css";

class Bar extends Component {
  constructor(props) {
    super(props)

    this.state = {
      menu: {
        anchorEl: null,
      },
    }
  }

  openMenu = (event) => {
    const anchorEl = event.currentTarget

    this.setState({
      menu: {
        anchorEl,
      },
    })
  }

  closeMenu = () => {
    this.setState({
      menu: {
        anchorEl: null,
      },
    })
  }

  render() {
    // Properties
    const { performingAction } = this.props

    // Events
    return (
      <AppBar color="primary" position="static" className="navBarTop">
        <Toolbar>
          <Box display="flex" flexGrow={1}>
            <Typography color="inherit" variant="h6">
              <Link
                color="inherit"
                component={RouterLink}
                to="/"
                underline="none"
              >
                {process.env.REACT_APP_TITLE} 
              </Link>
            </Typography>
          </Box>

          <ButtonGroup
            color="inherit"
            disabled={performingAction}
            variant="outlined"
          >
            <Button>
              <Link
                color="inherit"
                component={RouterLink}
                to="/signup"
                underline="none"
              >
                Sign Up
              </Link>
            </Button>
            <Button>
              <Link
                color="inherit"
                component={RouterLink}
                to="/login"
                underline="none"
              >
                Login
              </Link>
            </Button>
          </ButtonGroup>
        </Toolbar>
      </AppBar>
    )
  }
}

Bar.defaultProps = {
  performingAction: false,
}

Bar.propTypes = {
  // Properties
  performingAction: PropTypes.bool.isRequired,
}

export default Bar
