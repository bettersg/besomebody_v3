To Be Nadia
/*
For cut-and-paste ease
#knot:nadia_1_intro
#ui:narrator
#background:nadia_school.jpg
#music:nadia_intro.mp3

#knot:nadia_2_haircut_no
#ui:scene
#background:nadia_school.jpg
#speaker_left_image:zhihao_smiling.png -> can be left blank
#speaker_left_name:Zhihao -> can be left blank
#speaker_right_image:eric_angry.png -> can be left blank
#speaker_right_name:Eric  -> can be left blank

#knot:nadia_2_haircut_no
#ui:whatsapp
#background:whatsapp.png
#chat_group_title:Gavin Wong
#chat_group_image:gavin_profile.jpg
#speaker1_name:Gavin
#speaker2_name:Eric -> can be left blank
#timestamp:21.34

#knot:nadia_2_haircut_no
#ui:email
#to:Jeffrey Tan <jeffrey@hotmail.com>
#subject:Job Application for Ravi


FOR MINIGAMES:
-> nadia_2_minigame
=== nadia_2_minigame ===
#knot:nadia_Chapter2_minigame
#ui:swipe or mcq
#game_id:2
Minigame // must add some text
-> nadia_2_3 // point to next section of story


*/

// DECLARE GLOBAL VARIABLES
VAR nadia_mood = 10
VAR gavin_mood = 10
VAR nadia_1_ending = 0 
VAR nadia_2_ending = 0 
VAR nadia_3_ending = 0 
VAR nadia_4_ending = 0 



-> nadia_1_intro

// CHARACTER INTRODUCTION


=== nadia_1_intro ===
#knot:nadia_1_intro
#ui:narrator
#background:nadia_1_intro.jpg
#music:nadia_intro.mp3
.
Nadia Binte Rahim #title
This is where I tell the player about myself, to help them understand my age, background, profile etc. We must explain to them who she is so that they can start to assume her identity.
So that’s me -- Nadia. 
And this is what it’s like, to be me.
CHAPTER 1 #title
Study Buddy #title

-> nadia_1_1_narration 

// START STORY


=== nadia_1_1_narration ===
#knot:nadia_1_1_narration
#ui:narrator
#background:nadia_1_night_street.jpg
9:45pm, on a Thursday night outside school.
Abah (pa) is in the car, waiting for me.
-> nadia_1_1


=== nadia_1_1 ===
#knot:nadia_1_1
#ui:scene
#background:nadia_1_car.jpg
#speaker_left_image:nadia_abah.png
#speaker_left_name:Abah
Hi abah #speaker_self
Nadia dah makan? (Have you eaten?) #speaker_left
Dah. (Have.) #speaker_self
There's food at home if you're  hungry, your mother made currypuffs just now. #speaker_left
Can panaskan (heat up) in the ovenette — #speaker_left
— potato or sardine? #speaker_self
I think both have. #speaker_left

#ui:scene
#background:new_message_notification.jpg
It's a message from Gavin!
-> nadia_1_1a

=== nadia_1_1a ===
#knot:nadia_1_1a
#ui:whatsapp
#background:whatsapp.png
#chat_group_title:Gavin
#chat_group_image:gavin_profile.jpg
#speaker_1_name:Gavin
#timestamp:21.49
help #speaker_1
this bus is blasting the AC #speaker_1
is so cold 🥶 🥶 🥶 #speaker_1 #emoji:ice_cubes.png

#ui:scene
#background:nadia_1_car.jpg
Crap! I'm still WEARING his hoodie.  #inner_monologue

#ui:whatsapp
#background:whatsapp.png
#chat_group_title:Gavin
#chat_group_image:gavin_profile.jpg
#speaker1_name:Gavin
I'm sorry!! Your hoodie is still with me 😳 #speaker_self
💩 #speaker_1
yaaa forgot about night study today, didn't bring the winter wear #speaker_self
I know. you were freezing in the library just now. #speaker_1
I shall just bravely suffer. on this very cold #speaker_1
and very long #speaker_1
bus ride #speaker_1
are u always this dramatic #speaker_self
no #speaker_1
yes. it is very entertaining. #speaker_1

#ui:scene
#background:nadia_1_car.jpg
#speaker_left_image:nadia_abah.png
#speaker_left_name:Abah
How many of you doing this "night study"? Quite a lot of people just now eh. #speaker_left
Depends… Last year before promo exams, both the canteen and library got packed. #speaker_self
It's a bit more chill for now. #speaker_self
Kalau chill, kan study at home..(If it’s too relaxed, studying at home is better)  #speaker_left
I know, it's just easier to concentrate at school. At home, I just feel like sleeping —  #speaker_self
— are you sleeping enough? All these late nights are not good also.  #speaker_left
That's why your mother always ask me to pick you up. #speaker_left
Thank you.. I'm ok abah, really. #speaker_self
It's just exam prep for midyears.  #speaker_self
Was my friend's idea, so I asked Chloe to join us too. #speaker_self
Oh this study group is not Chloe who start? #speaker_left
Oh crap. #inner_monologue
+ [Tell the truth] It was my friend Gavin's idea. I know him from student council. #speaker_self
+ [Tell a white lie] It's a bunch of us. Is much easier than last year when I was trying to cram everything by myself. #speaker_self
- I see. Your friends in this school.. the culture a bit different. #speaker_left
What do you mean? #speaker_self
Just different. They hug a lot.. Suka peluk-peluk. #speaker_left
Wait. I hugged Chloe goodbye just now. Which means.. #inner_monologue
... he also saw Gavin hugging me.#inner_monologue
Ya, a bit right? But it's just like that here.  #speaker_self
Super friendly.  #speaker_self
It's a convent school thing maybe, they just like to hug-hug, hello goodbye also hug, boy or girl also hug —  #speaker_self
...which is fine. For them.  #speaker_left
But for us, it's not.. nice. Tak baik. Kan kita orang Islam. #speaker_left
I know, abah. #speaker_self
Kalau girl, okay la!  #speaker_left
Chloe or whoever.. but if boy, even if it is just a friend.. #speaker_left
He really is just a friend. #speaker_self
I know, I know. #speaker_left
+ [Text Gavin] -> nadia_1_1b
+ [Turn on the radio to distract dad] -> nadia_1_1c

= nadia_1_1b
#ui:whatsapp
#background:whatsapp.png
#chat_group_title:Gavin
#chat_group_image:gavin_profile.jpg
#speaker1_name:Gavin
Need me to bring any of my notes from last term tomorrow? #speaker_self
Nah all good #speaker_1
and your hoodie #speaker_self
um actually also no need #speaker_1
lol what, so you have an excuse to be dramatic until when #speaker_self
no #speaker_1
looks cute on you. I like it. #speaker_1
-> nadia_1_1d

= nadia_1_1c
Oh look! Just in time, Misteri Jam 12..  #speaker_self
You and your radio ghost stories. #speaker_left
Abah, you don't pretend! You love these as much as I do.  #speaker_self
At least after I watch scary movies, I can still sleep at night.  #speaker_left
Some people will sleep with the lights on.. who does that ya? #speaker_left
Fine, you win.. #speaker_self
Ya, my electricity bill also win. #speaker_left
-> nadia_1_1d

= nadia_1_1d
#ui:scene
#background:nadia_1_hdb_carpark.jpg
Later go say goodnight to your mother ok?  #speaker_left
She probably still waiting up for you. #speaker_left
Yeah she messaged me earlier just now.  #speaker_self
Said she had something to pass to me. Do you know anything about it? #speaker_self
No, she didn't say. #speaker_left
... is that a new sweater? #speaker_left








-> END
