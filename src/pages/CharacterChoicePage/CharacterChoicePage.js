import React, { useState, useEffect } from 'react';
import CharacterAvatar from "./CharacterAvatar";
import PlayerProfile from "./PlayerProfile";
import Grid from "@material-ui/core/Grid";
import Typography from "@material-ui/core/Typography";
import Box from '@material-ui/core/Box';
import Paper from '@material-ui/core/Paper';
import {
ThemeProvider,
createMuiTheme
} from "@material-ui/core/styles";
import NavBar from "./NavBar";
import "../styles.css";

import { useAuth } from '../../contexts/AuthContext';
import { useSnackbar } from '../../contexts/SnackbarContext'
import { CHARACTER_MAP } from '../../models/storyMap'


const CharacterChoice = () => {

	
    // Auth Context
	const { currentUser } = useAuth()
	// TODO : fix the userInfo. firebase currentUser does not pass the profile fields properly.

    const { setSnackbar } = useSnackbar()
	
	const characters = CHARACTER_MAP;
		// need to update this personas and personas2 to be more dynamic	
	

	const theme = createMuiTheme({
		overrides: {
			MuiTypography: {
				h5: {
					fontSize: [18, "!important"],
					fontWeight: 600, 
					marginBottom: "2%", 
				}, 
				subtitle2: {
					fontSize: [12, "!important"],
					color: "grey", 
					marginBottom: "3%", 
					marginLeft: "20%", 
					marginRight: "20%", 
				}, 
			}, 
			MuiPaper: {
				root: {
					padding: "5%", 
					marginTop: "5%", 
				}
			}
		}
	});

		return (
			<ThemeProvider theme={theme}>
				<div className="smartphone">
					<div className="App">
						{/* user profile section  */}
						<Box className="profileBox" px={3} m={5}>
							<PlayerProfile userInfo={currentUser}/>
						</Box> 

						{/* your personas section  */}
						<Paper>
							<Typography variant="h5"> Playable Characters </Typography>
							<Typography variant="subtitle2">Continue with their stories</Typography>

							<Grid container spacing={3}>
							
							{characters.map((persona,i) => {
								return (
								( persona.playable == true ? 
									<Grid item xs={6} key={i}>
										<CharacterAvatar personaInfo={persona} key={i} />
									</Grid>
									: null)
									
								);
							})}
							</Grid>
						</Paper>

						{/* discover more section  */}
						<Paper>
							<Typography variant="h5"> Unlock New Characters </Typography>
							<Typography variant="subtitle2">Complete the playable characters to unlock these new characters and stories!</Typography>
							<Grid container spacing={3}>
								{characters.map((persona,i) => {
									return (
									( persona.playable == false ? 
										<Grid item xs={6} key={i}>
											<CharacterAvatar personaInfo={persona} key={i} />
										</Grid>
										: null)
										
									);
								})}
							</Grid>
						</Paper>

						<NavBar className="navBar"/>


					</div>

				</div>

			</ThemeProvider>
		);
	
}
export default CharacterChoice;
