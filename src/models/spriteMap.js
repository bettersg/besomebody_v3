

export const SPRITE_MAP = [
    {
      characterId: 1,
      name: "Nadia",
      linkName: "nadia",
      spriteImage: "/shareable_avatars/nadia.png",
      overline: "Nadia's Story",
      backgroundColour: '#6C70DD',
      secondaryColour: '#664EFC', // to edit
      reflectionBrowser: [
        {         
          title: "Reflection Browser",
          knotTag: "story_end_browser",
          summary: "Nadia's story in the game has ended, but the stories of all our players are waiting to be explored.",
          playable: true,
          images: [
            "/images/bg_nadia_intro.jpg",         
            "/images/bg_launch.jpg",
            "/images/bg_reflections.jpg",
            "/shareable_avatars/nadia.png",
            // should we introduce the images here??

          ],        
        },
      ]
    },
    {
      characterId: 2,
      name: "Aman",
      linkName: "aman",
      spriteImage: "",
      overline: "Aman's Story",
      backgroundColour: '#FFE141',
      secondaryColour: '#FFBB0B', // to edit
    },
    {
      characterId: 3,
      name: "Ravi",
      linkName: "",
      spriteImage: "",
      overline: "Ravi's Story",
      backgroundColour: '#FFE141',
      secondaryColour: '#FFBB0B', // to edit
    },  
  ];