import React, { useState, useEffect } from 'react';
import {
    Box,
    Button,     
    Fade,    
    FormLabel,
    FormControlLabel,
    Grid,
    Checkbox,
    RadioGroup,
    Radio,
    TextField,
    Typography,
    Container,
} from '@material-ui/core'
import ExpandMoreIcon from '@material-ui/icons/ExpandMore'

export const PBNavigation = ({text="Choose your reply...", ...rest}) => {
    // console.log({ props });
    return (
      //  <Button type="primary" onClick={props.prev} style={{ marginRight: 10 }}>
      //       Previous
      //     </Button> */}
      //     {/* <Button type="primary" onClick={props.next}>
      //       Next
      //   </Button> 
         
        <div>
          <Box className="PBWhatsapp__sendWrapper">
            <Box
              className={`PBWhatsapp__sendWrapper__sendButton choice'
              }`}
            >
              {text}
            </Box>
            <Box className="PBWhatsapp__sendWrapper__sendButton--right">
              <ExpandMoreIcon />
            </Box>
          </Box>
        </div>      
    
    );
  };
//   const config = {
//     navigation: {
//       component: Navigation, // a React component with special props provided automatically
//       location: "after" // or before
//     }
//   };