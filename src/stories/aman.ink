/*
For cut-and-paste ease
#knot:nadia_1_intro
#ui:narrator
#background:nadia_school.jpg
#music:nadia_intro.mp3

#knot:nadia_2_haircut_no
#ui:scene
#background:nadia_school.jpg
#speaker_left_image:cha_nadia_zhihaosmiling.png -> can be left blank
#speaker_left_name:Zhihao -> can be left blank
#speaker_right_image:cha_nadia_ericangry.png -> can be left blank
#speaker_right_name:Eric  -> can be left blank

#knot:nadia_2_haircut_no
#ui:whatsapp
#background:whatsapp.png
#chat_group_title:Gavin Wong
#chat_group_image:ico_nadia_gavin.png
#speaker_1_name:Gavin
#speaker_2_name:Eric -> can be left blank
#timestamp:21.34

#ui:notification
#background:ui_nadia_message.jpg
Gavin: help # message

#knot:nadia_2_haircut_no
#ui:email
#to:Jeffrey Tan <jeffrey@hotmail.com>
#subject:Job Application for Ravi


FOR MINIGAMES DO NOT START A NEW KNOT
#knot:nadia_2_minigame
#ui:mcq
#game_id:2
Minigame // must add some text
-> nadia_2_3 // point to next section of story


*/


-> aman_1_intro

// CHARACTER INTRODUCTION
 

=== aman_1_intro ===
#knot:aman_1_intro
#ui:narrator
#background:bg_aman_intro.jpg
#music:aman_intro.mp3
// DECLARE GLOBAL VARIABLES
// VAR chapter_1_ending = 0 
// VAR chapter_2_ending = 0 
// VAR chapter_3_ending = 0 
// VAR chapter_4_ending = 0 
// VAR chapter_5_ending = 0 
// VAR aman_2_1c_overcharge = 0
// VAR aman_2_2_confide = 0
// VAR aman_2_5_change_look= 0
// VAR aman_2_6_secret= 0
// VAR aman_3_1_drink= 0
// VAR ending_id = 1;
Aman Singh #title
VAR character_id = 2
VAR chapter_id = 1
VAR aman_mood = 10
Sat Sri Akaal! (Sikh greeting: True is the Immortal one!)
I’m Amandeep Singh Sahota. I usually go by Aman (peaceful one).
Just like my sister’s name is Prabhjot (light of God), but we call her Jothi.
Tomorrow, I’m enlisting in NS. I’ll spend the next nine weeks rolling around in mud and sweat.
My friend Zhihao - we grew up as neighbours - has spent months telling me how horrible it’s going to be.
Because of the NS thing, Mum has been hovering over me a lot lately. I hope she’ll be okay...
What with me going into NS, and Jothi marrying her fiance Kirpal soon.
It’s not just her - even Papa-ji popped by my room unexpectedly the other night and said ‘Goodnight, son.’ 
And of course, my girlfriend Selinder has been very sweet to me. 
I know we’re both young, but I’m starting to think what Sel and I have is long-term. 
After NS, I’m off to university to study business administration.
Even though what I really want to do is…
Never mind. I can’t even say it yet.
Anyway, that’s me! Aman.
And this is what it’s like, to be me.

CHAPTER {chapter_id} #title
Call of Duty #title
 
 
 
-> aman_1_1_narration 


=== aman_1_1_narration ===
#knot:aman_1_1_narration
#ui:narrator
#background:bg_aman_bedroom.jpg
The night before enlistment.
-> aman_1_1


=== aman_1_1 ===
#knot:aman_1_1
#ui:whatsapp
#background:whatsapp.png
#chat_group_title:Zhihao
#chat_group_image:gavin_profile.jpg
#speaker1_name:Gavin
#speaker2_name:Eric -> can be left blank
#timestamp:21.34

 
 
 
 
 -> END