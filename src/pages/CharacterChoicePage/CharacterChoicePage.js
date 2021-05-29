import React from "react";
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

// TODO: Convert the static state below into one that pulls info from a JSON on all the chapters for each character


class CharacterChoice extends React.Component {
	state = {
		user: [
			{
				name: "Your Name",
				avatar: "xx",
				desc: "The Peacemaker",
				numPersona: "3",
				numOutcomes: "15",
				numChapter: "8"
			}
		],
		personas: [
			{
				alt: "Nadid",
				src: 
				"https://cdn.builder.io/api/v1/image/assets%2FTEMP%2F0f59699e1dd943ba87446eb0c7ec9704",
				name: "Nadid",
				description: "Nadid Rahim wants to become a doctor - but will love and religion get in the way?",
				buttonShow: true,
				link: "/chapters/Nadid"
			},
			{
				alt: "Aman",
				src:
				"https://cdn.builder.io/api/v1/image/assets%2FTEMP%2F67b34f4b3f8c45abaca6389b1e8e0d53",
				name: "Aman",
				description: "Aman Singh dreams of writing poetry - but he has bigger headaches to deal with first.",
				buttonShow: true,
				link: "/story/david"
			} 
			], 
			personas2: [
			{
				alt: "Nazeema",
				src:
				"https://cdn.builder.io/api/v1/image/assets%2FTEMP%2F0f59699e1dd943ba87446eb0c7ec9704",
				name: "Nazeema",
				description: "Traits Background Story Teaser",
				buttonShow: false
			},
			{
				alt: "Zhi Hao",
				src:
				"https://cdn.builder.io/api/v1/image/assets%2FTEMP%2F67b34f4b3f8c45abaca6389b1e8e0d53",
				name: "Zhi Hao",
				description: "Traits Background Story Teaser",
				buttonShow: false
			},
			{
				alt: "Sally",
				src:
				"https://cdn.builder.io/api/v1/image/assets%2FTEMP%2F2b85e086dd6e4e9f8cee78e60a8b2f0e",
				name: "Sally",
				description: "Traits Background Story Teaser",
				buttonShow: false
			}
		]
	};

	render() {
		let user = this.state.user;
		let personas = this.state.personas;
		let personas2 = this.state.personas2;

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
							<PlayerProfile userInfo={user}/>
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
}
export default CharacterChoice;
