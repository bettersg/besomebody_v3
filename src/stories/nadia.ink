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
 
-> nadia_1_2_narration 


=== nadia_1_2_narration ===
#knot:nadia_1_2_narration
#ui:narrator
#background:nadia_1_clothes.jpg
Friday morning, packing my school bag for PE class.
Track pants or PE shorts? Track pants la. The teacher said it was ok...
-> nadia_1_1


=== nadia_1_2 ===
#knot:nadia_1_2
#ui:scene
#background:nadia_1_school.jpg
#speaker_right_image:nadia_chloe.png
#speaker_right_name:Chloe
Want some SPF? #speaker_right
Yeah sure, just a bit. #speaker_self
I just don’t want to get too tanned, you know?  #speaker_right
Never too young to start sun protection, that's what my mom always says — oh! #speaker_right
Yes Chloe, I know, the penetrating and damaging rays of UV —  #speaker_self
No, I mean, how come you're wearing track pants? #speaker_right
It's not weird, right? #speaker_self
+ [I feel more comfortable in these, actually] -> nadia_1_2a
+ [Hahaha maybe I just need more UV protection for my legz!] -> nadia_1_2b
+ [My mum got them for me] -> nadia_1_2c

= nadia_1_2a
I feel more comfortable in these, actually. My mom just got them for me. #speaker_self
Really? It looks a bit warm, don't you think? #speaker_right
Yeah they are, a bit. But that's just the material. #speaker_self
Well, do you want to borrow my shorts? I have an extra pair. #speaker_right
No, it's okay — #speaker_self
It's clean, don't worry. I brought them for hockey later — #speaker_right
No, as in, I FEEL more comfortable in these pants, and not.. shorts. #speaker_self
I don't understand. You just said they were warm and not comfortable. #speaker_right
Wait, is this about, like, showing too much? #speaker_right
Something like that. #speaker_self
Oh. You know you have nothing to be ashamed of right? #speaker_right
All bodies are beautiful, and honestly, you have GREAT legs — #speaker_right
Hahaha...Ok, ok you don't have to go all Body Shop female empowerment, I get it. #speaker_self
But that's not what I mean. #speaker_self
What do you mean then? #speaker_right
I just.. don't like showing so much skin. #speaker_self
And you're right, thank you, I DO have great legs.  #speaker_self
But I think I don't like being super conscious — #speaker_self
— Nadia, you are hardly a narcissist. Your IG is cat pictures. #speaker_right
And cats are great. #speaker_self
But my point is, I like being modest. I like covering up. It.. quiets my mind. #speaker_self
I CARE about how I look, but I would like to care a bit less. You know? #speaker_self
So you can focus on other things. #speaker_right
Yes, exactly. Figure out who I am, in my head, in my heart. #speaker_self
Ahem, Gavin. #speaker_right
What I want to do after A's.. Everything else — #speaker_self
— is fluff. Ok I get it. It's like that in hockey too when we're training for A Divs.  #speaker_right
Clarity. Mental discipline. #speaker_right
Yeah, clarity. I think that's what religion is about. And discipline with self. #speaker_self
At least, that's what I think of being Muslim. #speaker_self
Will you wear a hijab one day? Or is it tudung? Did I get that right? #speaker_right
Both names are okay. My mom started wearing a tudung when I was in primary school. #speaker_self
I wear a tudung also actually. Most times. Sometimes. #speaker_self
Can sometimes?? #speaker_right
(Laughs) I don't know Chloe, I am also figuring it out. #speaker_self
I had no idea you wear a tudung outside of school.. #speaker_right
Well, we're always in school really. #speaker_self
Do you think the other Malay girls in school also wear a tudung? #speaker_right
Chloe, there are only two other Malay people in this school, and they are GUYS. #speaker_self
Really?? That's true huh.. #speaker_right
Yup! Now can we go? I don't need Mrs. Ee to shoot us her laser eyes for being late. That woman — #speaker_self
— is permanently on PMS. #speaker_right

-> nadia_1_3_narration

= nadia_1_2b
Track pants! Immediate protection against the sun, SPF 1500 guaranteed. #speaker_self
Haha, very funny Nad. Just because I don’t want to get too dark.. #speaker_right
It's true though! And for fighting off mosquitoes. #speaker_self
Ok but seriously though, what’s up? Is it your parents again? #speaker_right
I don’t mind really — #speaker_self
You always say that. #speaker_right
So what? #speaker_self
So.. listen, your parents are great. #speaker_right
But you gotta admit that they’re a bit controlling. #speaker_right
Like your mom not wanting you to get “too tanned”? “Too dark?” #speaker_self
Exactly. You have to draw the line with moms. #speaker_right
You were fine wearing shorts for PE, why are they making such a fuss?  #speaker_right
It’s a uniform for a reason. #speaker_right
Ok, but I did get them in the same colour as our school shorts. #speaker_self
Wait, you bought them? This was your idea? #speaker_right
Yes, it was my idea Chloe. And they’re just track pants.  #speaker_self
My mom brought it up, I liked the idea, cleared it with the Teachers. Voila. #speaker_self
I guess I just didn’t realise.. #speaker_right
What do you mean? #speaker_self
Nothing. I didn’t think you were that conservative too. #speaker_right
What did you think then? #speaker_self
I don’t know. That you were more modern. I mean, you’re not like other Malays. #speaker_right
Right. #speaker_self
Anyway, let’s go. The last time I was late, Mrs Ee made me run extra laps. #speaker_right


-> nadia_1_3_narration

= nadia_1_2c
My mom got them for me. They look ok? #speaker_self
How did you find the exact navy colour of our shorts… #speaker_right
A lot of hunting and endless picture sending on WhatsApp. #speaker_self
Sounds like an island-wide fashion hunt. #speaker_right
Almost. Was just a random idea I had, and she just wanted to help. A lot. #speaker_self
You don’t seem that keen on it though? #speaker_right
I am! I just feel.. weird. #speaker_self
(Getting impatient) They look fine though! And you don’t look weird. #speaker_right
I won’t stick out? #speaker_self
Well — #speaker_right
— see, that’s what I thought!! #speaker_self
I’m not going to lie, but is it that big a deal? Do you want to borrow some shorts instead? #speaker_right
No. It’s not a big deal. #speaker_self
And it’s just PE. #speaker_right
Just PE. #speaker_self
Feeling better now? #speaker_right
Yeah. Just wishing I wasn’t like, one of the three Malay students in our year. #speaker_self
I know. Are you friends with them actually? You never mention them. #speaker_right
Kinda, I only see them at Malay class and that’s it. #speaker_self
Well! That’s good news for Gavin. #speaker_right
Hey! We’re just friends. #speaker_self
If you say so. #speaker_right
And he’s not the jealous kind. #speaker_self
Definitely not. OKAY let’s go before they make us run extra laps! #speaker_right

-> nadia_1_3_narration


=== nadia_1_3_narration ===


-> END
