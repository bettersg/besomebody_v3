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
import { STORY_MAP,PLAYABLE_CHARACTERS,NONPLAYABLE_CHARACTERS } from '../../models/storyMap'


const CharacterChoice = () => {

	
    // Auth Context
    const { currentUser } = useAuth()  
    
    const { setSnackbar } = useSnackbar()
	
	const personas = PLAYABLE_CHARACTERS;
	const personas2 = NONPLAYABLE_CHARACTERS;
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
							<Typography variant="h5"> Your personas </Typography>
							<Typography variant="subtitle2">
							{" "}
							Continue with their stories{" "}
							</Typography>

							<Grid container spacing={3}>
							{/* map the JSON data into the components */}
							{personas.map((persona) => {
								return (
								<Grid item xs={6}>
									<CharacterAvatar personaInfo={persona} />
								</Grid>
								);
							})}
							</Grid>
						</Paper>

						{/* discover more section  */}
						<Paper>
							<Typography variant="h5"> Discover more </Typography>
							<Typography variant="subtitle2">
								{" "}
								Complete chapters and outcomes of your personas to unlock more
								personas{" "}
							</Typography>
							<Grid container spacing={3}>
								{personas2.length > 0 
									? personas2.map((persona) => {
										return (
											<Grid item xs={4}>
											<CharacterAvatar personaInfo={persona} />
											</Grid>
										);
									})
									: <div>No personas to show...</div>
								}
							</Grid>
						</Paper>

						<NavBar className="navBar"/>


					</div>

				</div>

			</ThemeProvider>
		);
	
}
export default CharacterChoice;
