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
#speaker_left_image:cha_nadia_zhihaosmiling.png -> can be left blank
#speaker_left_name:Zhihao -> can be left blank
#speaker_right_image:cha_nadia_ericangry.png -> can be left blank
#speaker_right_name:Eric  -> can be left blank

#knot:nadia_2_haircut_no
#ui:whatsapp
#background:whatsapp.png
#chat_group_title:Gavin Wong
#chat_group_image:cha_nadia_gavinprofileicon.jpg
#speaker_1_name:Gavin
#speaker_2_name:Eric -> can be left blank
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
VAR nadia_liar = 0


VAR chapter_1_ending = 0 
VAR chapter_2_ending = 0 
VAR chapter_3_ending = 0 
VAR chapter_4_ending = 0 
VAR character_id = 1
 

-> nadia_1_intro

// CHARACTER INTRODUCTION


=== nadia_1_intro ===
#knot:nadia_1_intro
#ui:narrator
#background:bg_nadia_intro.jpg
#music:nadia_intro.mp3
.
VAR chapter_id = 1
NADIA BINTE RAHIM #title
Hey there. I’m Nadia.
This is a big year for me, since my A Levels are coming up. 
That’s going to decide whether I make it into medical school like I’m hoping, so... No pressure.
I haven’t told a lot of people about the medical school thing. It all feels a bit impossible.
But good grades have always kind of been my thing, so... Maybe, I have a shot.
I’ve also got great study buddies! Chloe and Gavin, my best friends at school.
JC life would be a lot worse without them around. Especially since I don’t exactly, uh, fit in.
This is a Christian school, and there are barely any other Muslim or Malay students besides me.
It’s fine though, I’m mostly used to it by now. When I need someone who just... gets it? I’ve got my cousin Azlin.
She’s a nurse, so that’s very cool. We’re super close, and she always keeps it real.
So that’s me -- Nadia.
And this is what it’s like, to be me.
CHAPTER 1 #title
An Unexpected Invitation #title

-> nadia_1_1_narration 

// START STORY


=== nadia_1_1_narration ===
#knot:nadia_1_1_narration
#ui:narrator
#background:bg_nadia_schooldrivewayatnight.jpg
9:45pm, but not an unusual hour to still be in school. 
I quickly hug my friends goodbye, and hurry to the driveway. 
My dad is waiting to pick me up. 
-> nadia_1_1


=== nadia_1_1 ===
#knot:nadia_1_1
#ui:scene
#background:bg_nadia_fathercaratnight.jpg
#speaker_right_image:cha_nadia_rahman_normal.png
#speaker_right_name:Abah
Hi abah. #speaker_self
Nadia dah makan? (Have you eaten?) #speaker_right
Yup, I had dinner. #speaker_self
There's food at home if you're  hungry, your mother made currypuffs just now. #speaker_right
Can heat up in the ovenette — #speaker_right
— potato or sardine? #speaker_self
I think both have. #speaker_right
#speaker_right_image:pixel.png
#ui:scene
#background:new_message_notification.jpg
It's a message from Gavin!
-> nadia_1_1a

=== nadia_1_1a ===
#knot:nadia_1_1a
#ui:whatsapp
#background:whatsapp.png
#chat_group_title:Gavin
#chat_group_image:ico_nadia_gavin.png
#speaker_1_name:Gavin
#timestamp:21.49
help #speaker_1
this bus is blasting the AC #speaker_1
is so cold 🥶 🥶 🥶 #speaker_ 

#ui:scene
#background:bg_nadia_fathercaratnight.jpg
Crap! I'm still WEARING his hoodie.  #inner_monologue

#ui:whatsapp
#background:whatsapp.png
#chat_group_title:Gavin
#chat_group_image:ico_nadia_gavin.png
#speaker_1_name:Gavin
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
#background:bg_nadia_fathercaratnight.jpg
#speaker_right_image:cha_nadia_rahman_worried.png
#speaker_right_name:Abah
So how many of you doing this "night study"? Quite a lot of people just now eh.  #speaker_right
Depends… Last year before promo exams, both the canteen and library got packed. #speaker_self
It's a bit more chill for now. #speaker_self
Kalau chill, kan study at home..(If it’s too relaxed, studying at home is better)  #speaker_right
I know, it's just easier to concentrate at school. At home, I just feel like sleeping —  #speaker_self
— are you sleeping enough? All these late nights are not good also.  #speaker_right
That's why your mother always ask me to pick you up. #speaker_right
Thank you.. I'm ok abah, really. #speaker_self
It's just exam prep for midyears.  #speaker_self
Was my friend's idea, so I asked Chloe to join us too. #speaker_self
Oh this study group is not Chloe who start? #speaker_right
Oh crap. #inner_monologue
+ [Tell the truth]  It was my friend Gavin's idea. I know him from student council. #speaker_self
+ [Tell a white lie]  It's a bunch of us. #speaker_self
    ~ nadia_liar ++
    It's much easier than last year when I was trying to cram everything by myself. #speaker_self
- I see. Your friends in this school.. the culture a bit different. #speaker_right
What do you mean? #speaker_self
Just different. They hug a lot.. always peluk-peluk (hug). #speaker_right
Wait. I hugged Chloe goodbye just now. Which means.. #inner_monologue
... he also saw Gavin hugging me.#inner_monologue
uh... Ya, a bit right? But it's just like that here.  #speaker_self
Super friendly.  #speaker_self
It's a convent school thing maybe, they just like to hug-hug, hello goodbye also hug, boy or girl also hug —  #speaker_self
...which is fine. For them.  #speaker_right
But for us, it's not.. nice. Tak baik. Kan kita orang Islam. (Not nice. We are Muslims) #speaker_right
I know, abah, we're Muslims. #speaker_self
If girl, okay la! Chloe or whoever.. but if boy, even if it is just a friend.. #speaker_right
He really is just a friend. #speaker_self
I know, I know. #speaker_right
+ [Text Gavin] -> nadia_1_1b
+ [Turn on the radio to distract dad] -> nadia_1_1c

=== nadia_1_1b ===
#knot:nadia_1_1b
#ui:whatsapp
#background:whatsapp.png
#chat_group_title:Gavin
#chat_group_image:ico_nadia_gavin.png
#speaker_1_name:Gavin
Need me to bring any of my notes from last term tomorrow? #speaker_self
Nah all good #speaker_1
and your hoodie #speaker_self
um actually also no need #speaker_1
lol what, so you have an excuse to be dramatic until when #speaker_self
no #speaker_1
looks cute on you. I like it. #speaker_1
-> nadia_1_1d

=== nadia_1_1c ===
#knot:nadia_1_1c
#ui:scene
#background:bg_nadia_fathercaratnight.jpg
#speaker_right_image:cha_nadia_rahman_normal.png
#speaker_right_name:Abah
Oh look! Just in time, Misteri Jam 12..  #speaker_self
You and your radio ghost stories. #speaker_right
Abah, you don't pretend! You love these as much as I do.  #speaker_self
At least after I watch scary movies, I can still sleep at night.  #speaker_right
Some people will sleep with the lights on.. who does that ya? #speaker_right
Fine, you win.. #speaker_self
Ya, my electricity bill also win. #speaker_right
-> nadia_1_1d

=== nadia_1_1d ===
#knot:nadia_1_1d
#ui:scene
#speaker_right_image:cha_nadia_rahman_normal.png
#speaker_right_name:Abah
#background:bg_nadia_hdbcarpark.jpg
Finally, home! What a landmine of a drive.. maybe next time I should pretend to sleep. #inner_monologue
Later go say goodnight to your mother ok?  #speaker_right
She probably still waiting up for you. #speaker_right
Yeah she messaged me earlier just now.  #speaker_self
Said she had something to pass to me. Do you know anything about it? #speaker_self
No, she didn't say. #speaker_right
... is that a new sweater? #speaker_right
 
-> nadia_1_2_narration 


=== nadia_1_2_narration ===
#knot:nadia_1_2_narration
#ui:narrator
#background:bg_nadia_peclothes.jpg
Friday morning, packing my things for school. We’re having PE today. 

#ui:scene
#background:bg_nadia_peclothes.jpg
Track pants or PE shorts? Track pants la. #inner_monologue
The teacher said it was ok... #inner_monologue
-> nadia_1_2


=== nadia_1_2 ===
#knot:nadia_1_2
#ui:scene
#background:bg_nadia_girlsbathroom.jpg
#speaker_right_image:cha_nadia_chloe_grinning.png
#speaker_right_name:Chloe
I am actually a bit nervous now that I am in these track pants.  #inner_monologue
That’s so weird. It’s okay to look a bit different!.. right?    #inner_monologue
Wow, Chloe is really taking this Asian beauty skincare thing seriously.  #inner_monologue
That’s a lot of sunblock she’s laying on.  #inner_monologue
Want some SPF? #speaker_right
Yeah sure, just a bit. #speaker_self
I just don’t want to get too tanned, you know?  #speaker_right
Never too young to start sun protection, that's what my mom always says — oh! #speaker_right
Yes Chloe, I know, the penetrating and damaging rays of UV —  #speaker_self
#speaker_right_image:cha_nadia_chloe_normal.png
No, I mean, how come you're wearing track pants? #speaker_right
It's not weird, right? #speaker_self
+ [I feel more comfortable in these, actually] -> nadia_1_2a
+ [Hahaha maybe I just need more UV protection for my legz!] -> nadia_1_2b
+ [My mum got them for me] -> nadia_1_2c

= nadia_1_2a
VAR nadia_trackpants_choice = 1
I feel more comfortable in these, actually. My mom just got them for me. #speaker_self
Really? It looks a bit warm, don't you think? #speaker_right
Yeah they are, a bit. But that's just the material. #speaker_self
Well, do you want to borrow my shorts? I have an extra pair. #speaker_right
No, it's okay — #speaker_self
It's clean, don't worry. I brought them for hockey later — #speaker_right
No, as in, I FEEL more comfortable in these pants, and not.. shorts. #speaker_self
I don't understand. You just said they were warm and not comfortable. #speaker_right
Wait, is this about, like, showing too much? #speaker_right
+ [Yes]  Pretty much... #speaker_self
+ [Maybe] Something like that. #speaker_self
- Oh. You know you have nothing to be ashamed of right? #speaker_right
All bodies are beautiful, and honestly, you have GREAT legs — #speaker_right
Hahaha...Ok, ok you don't have to go all hashtag body positivity, I get it. #speaker_self
But that's not what I mean. #speaker_self
What do you mean then? #speaker_right
I just.. don't like showing so much skin. #speaker_self
And you're right, thank you, I DO have great legs.  #speaker_self
But I think I don't like being super conscious — #speaker_self
... Nadia, you are hardly a narcissist. Your IG is cat pictures. #speaker_right
And cats are great. #speaker_self
But my point is, I like being modest. I like covering up. It.. quiets my mind. #speaker_self
I CARE about how I look, but I would like to care a bit less. You know? #speaker_self
So you can focus on other things. #speaker_right
Yes, exactly. Figure out who I am, in my head, in my heart. #speaker_self
Ahem, Gavin. #speaker_right
What I want to do after A's.. Everything else — #speaker_self
... is fluff. Ok I get it. It's like that in hockey too when we're training for A Divs.  #speaker_right
Clarity. Mental discipline. #speaker_right
Yeah, clarity. I think that's what religion is about. And discipline with self. #speaker_self
At least, that's what I think of being Muslim. #speaker_self
Will you wear a hijab one day? Or is it tudung? Did I get that right? #speaker_right
Both names are okay. My mom started wearing a tudung when I was in primary school. #speaker_self
I wear a tudung also actually. Most times. Sometimes. #speaker_self
Can sometimes?? #speaker_right
+ [Laugh it off] (Laughs) I don't know Chloe, I am also figuring it out. #speaker_self
+ [I don't know...] Hmm... I really don't know Chloe, I am also figuring it out. #speaker_self
- I had no idea you wear a tudung outside of school.. #speaker_right
Well, we're always in school really. #speaker_self
Do you think the other Malay girls in school also wear a tudung? #speaker_right
Chloe, there are only two other Malay people in this school, and they are GUYS. #speaker_self
Really?? That's true huh.. #speaker_right
Yup! Now can we go? I don't need Mrs. Ee to shoot us her laser eyes for being late. That woman — #speaker_self
... is permanently on PMS. #speaker_right


-> nadia_1_minigame

// -> nadia_1_3_narration

= nadia_1_2b
~ nadia_trackpants_choice = 2
~ nadia_mood --
Track pants! Immediate protection against the sun, SPF 1500 guaranteed. #speaker_self
Haha, very funny Nad. Just because I don’t want to get too dark.. #speaker_right
+ Too dark? [] #speaker_self
+ Yeah, I get it. [] #speaker_self
- You know what I mean! #speaker_right
Do I? #speaker_self
Ok but seriously though, what’s up? Is it your parents again? #speaker_right
I don’t mind really — #speaker_self
You always say that. #speaker_right
So what? #speaker_self
#speaker_right_image:cha_nadia_chloe_concerned.png
So.. listen, your parents are great. #speaker_right
But you gotta admit that they’re a bit controlling. #speaker_right
Like your mom not wanting you to get “too tanned” or “too dark”? #speaker_self
Exactly. You have to draw the line with moms. #speaker_right
You were fine wearing shorts for PE, why are they making such a fuss?  #speaker_right
+ Nobody’s forcing me.[] #speaker_self
    They didn’t make a fuss. I actually thought it was a good idea. #speaker_self
    Wait, what? This was your idea? #speaker_right
+ [I got them in the uniform’s colour.] #speaker_self
    Ok, but I did get them in the same colour as our school shorts. #speaker_self
    Wait, you bought them? This was your idea? #speaker_right
- Yes, it was my idea Chloe. And they’re just track pants.  #speaker_self
My mom brought it up, I liked the idea, cleared it with the Teachers. Voila. #speaker_self
I guess I just didn’t realise.. #speaker_right
What do you mean? #speaker_self
Nothing. I didn’t think you were that conservative too. #speaker_right
What did you think then? #speaker_self
#speaker_right_image:cha_nadia_chloe_confused.png
I don’t know. That you were more modern. I mean, you’re not like other Malays. #speaker_right
Right. #speaker_self
Anyway, let’s go. The last time I was late, Mrs Ee made me run extra laps. #speaker_right


-> nadia_1_minigame

// -> nadia_1_3_narration

= nadia_1_2c
~ nadia_trackpants_choice = 3
My mom got them for me. They look ok? #speaker_self
Wait, when did this happen? How did you get pants in the same material as our shorts! #speaker_right
A lot of hunting and endless picture sending on WhatsApp. #speaker_self
Sounds like an island-wide fashion hunt. #speaker_right
Almost. Was just a random idea I had, and she just wanted to help. A lot. #speaker_self
You don’t seem that keen on it though? #speaker_right
#speaker_right_image:cha_nadia_chloe_concerned.png
I am! I just feel.. weird. #speaker_self
They look fine though! And you don’t look weird. #speaker_right
I won’t stick out? #speaker_self
Well — #speaker_right
... see, that’s what I thought!! #speaker_self
I’m not going to lie, but is it that big a deal? Do you want to borrow some shorts instead? #speaker_right
No. It’s not a big deal. #speaker_self
And it’s just PE. #speaker_right
Just PE. #speaker_self
Feeling better now? #speaker_right
+ [Yeah]  Yeah. Just wishing I wasn’t like, one of the three Malay students in our year. #speaker_self
+ [Not really] I mean.. I just wish I wasn’t like, one of the three Malay students in our year. #speaker_self
- I know. Are you friends with them actually? You never mention them. #speaker_right
Kinda, I only see them at Malay class and that’s it. #speaker_self
Well! That’s good news for Gavin. #speaker_right
#speaker_right_image:cha_nadia_chloe_grinning.png
Hey! We’re just friends. #speaker_self
If you say so. #speaker_right
And he’s not the jealous kind. #speaker_self
Definitely not. OKAY let’s go before they make us run extra laps! #speaker_right

// -> nadia_1_3_narration

-> nadia_1_minigame


=== nadia_1_minigame ===
#knot:nadia_1_minigame
#ui:mcq
#game_id:2
Minigame 2 // must add some text

-> nadia_1_3_narration



=== nadia_1_3_narration ===
#knot:nadia_1_3_narration
#ui:narrator
#background:bg_nadia_canteen.jpg
.
In the quiet window of time after class hours, I’m by myself in the canteen, grabbing a meal. 
After all of that PE, I’m starving.

-> nadia_1_3


=== nadia_1_3 ===
#knot:nadia_1_3
#ui:scene
#background:new_message_notification.jpg
A message from Gavin!
#ui:whatsapp
#background:whatsapp.png
#chat_group_title:Gavin
#chat_group_image:ico_nadia_gavin.png
#speaker_1_name:Gavin
#timestamp:16.14
Where u at? #speaker_1
Canteen! Having early dinner, super hungry after PE #speaker_self
💩 bo jio  #speaker_1
Ownself never ask earlier #speaker_self
#ui:scene
#background:bg_nadia_canteen.jpg
#speaker_left_image:cha_nadia_gavin_grinning.png
#speaker_left_name:Gavin
Hey loner. #speaker_left
I have friends. #speaker_self
Yes, yes, Nadia and Chloe, joined at the hip.  #speaker_left
And Gavin too, of course. #speaker_left
The guy who speaks in third person? #speaker_self
Don’t tell me you know him too! #speaker_left
+ [Weirdo] You are so weird sometimes. #speaker_self
+ [He's infamous] Yeah, he's notoriously strange. #speaker_self
- The world is blessed. Gimme a min, let me grab some food. #speaker_left
Go, go.  #speaker_self
#speaker_left_image:pixel.png
#background:new_message_notification.jpg
A message from Azlin
-> nadia_1_3_whatsapp1

=== nadia_1_3_whatsapp1 ===
#knot:nadia_1_3_whatsapp1
#ui:whatsapp
#background:whatsapp.png
#chat_group_title:Azlin
#chat_group_image:ico_nadia_azlin.png
#speaker_1_name:Azlin
#timestamp:16.18
Nad what time are you gg to be home today? #speaker_1
Probs be at night study again. What’s up? #speaker_self
no biggie. am clearing leave + might drop by your place #speaker_1
😏😏😏 my mum said she making ayam masak merah #speaker_self
ok in that case CONFIRM i will swing by for dinner #speaker_1
Don’t finish it all pls!! #speaker_self
heh no promises. see u if i do :) #speaker_1
-> nadia_1_3_part2

=== nadia_1_3_part2 ===
#knot:nadia_1_3_part2
#ui:scene
#background:bg_nadia_canteen.jpg
#speaker_left_image:cha_nadia_gavin_normal.png
#speaker_left_name:Gavin
Ok I’m back, what did I miss! Is that Chloe? #speaker_left
No, it’s my cousin. Chloe’s at a hockey thing. What are you having? #speaker_self
Bak chor mee. The other stalls closed up already. #speaker_left
Excuse me for a moment.  #speaker_left
I like it when Gavin says grace before a meal, quietly. He talks so much nonsense usually.  #inner_monologue
This side of him… this peacefulness makes sense to me. #inner_monologue
You know. We do that too. Saying grace before a meal. #speaker_self
I know. #speaker_left
You do? #speaker_self
Yeah. Sometimes you move your lips when you think no one is watching. #speaker_left
Oh! That’s embarrassing. #speaker_self
Why? #speaker_left
I did not know I do that. #speaker_self
You do it a lot. When you’re doing equations, when a queue takes too long, when Chloe is late- #speaker_left
— ok, thank you very much. Does everyone know too? #speaker_self
Nah, might be just me. #speaker_left
Good. #speaker_self
#speaker_left_image:cha_nadia_gavin_concerned.png
Is Chloe really at a hockey “thing”? #speaker_left
+ Well actually..[.] No. #speaker_self
    Ha, I knew it! You’re only vague when you’re avoiding something. #speaker_left
    Fine, but you are only half-right. She is at hockey, but I don’t know when she’ll be done. #speaker_self
    And I didn’t ask. #speaker_self
    Ah crap. Did you guys fight? #speaker_left
+ [Yeah she is...]... Yes. I’m pretty sure. #speaker_self
	~ nadia_liar ++
	You’re being strange. Did something happen between you two? #speaker_left
- Maybe? I don’t think so. It’s weird. #speaker_self
The weird will pass. #speaker_left
You think? #speaker_self
Definitely. I’m sure it’s just a misunderstanding. Right? #speaker_left
Hmm... Right. #speaker_self
I looked up NUS the other day. #speaker_self
#speaker_left_image:cha_nadia_gavin_normal.png
Oh yeah! So what are you thinking -  NUS or NTU for med school? #speaker_left
Nothing conclusive, aside from the straight As I’ll need to pull. #speaker_self
Which we knew already.. you know, some of my church friends are in med school.  #speaker_left
You guys should meet and get a better idea. #speaker_left
Yeah you’ve mentioned before.  #speaker_self
Urgh I don’t even know anyone else who is going to med school or applying for it. #speaker_self
That’s not true. Allison is in med school, you’ve met Brandon’s sister before. #speaker_left
Um, hardly. Only that one time at the class barbecue last year at his place. #speaker_self
I can help you ask if you want. Ally, or my church friends. #speaker_left
+ Maybe your church friends? []  I don’t really want anyone in school to know I’m poking about med school. #speaker_self
+ I don't know..[.] I’m not really ready for people to know I’m poking about med school. #speaker_self
- I still don’t understand why you’re secretive about it. #speaker_left
Hello! What if I don’t get in?  #speaker_self
I’ll need the straightest of As, and be very impressive with the applications — #speaker_self
You already get the straightest of As. #speaker_left
I don’t know many people who try and go to med school.  #speaker_self
You have friends and family who do. #speaker_self
Which is also why I’m NOT. Psych is really more for me I think. Digging into people’s heads. #speaker_left
Yeah well. It feels like a club, and I’m on the outside. #speaker_self
You definitely belong to the club. You just don’t know it yet. #speaker_left
I’m the one with the family and friends of doctors right?  #speaker_left
You’re in their tribe, I can tell. It’s just the exams and application you need to get past. #speaker_left
Are you sure? #speaker_self
Of course I am. Now are you going to have the rest of your tempeh? #speaker_left
Wait a minute. Is he really coming for my plate with his chopsticks? #inner_monologue
+ [Jokingly HALT Gavin in his tracks] -> nadia_1_3a
+ [Ask Gavin about his noodles]-> nadia_1_3b
+ [Watch Gavin take your tempeh]-> nadia_1_3c

= nadia_1_3a
VAR nadia_gavinsharefood = 1
(Jokingly) Eh, who said I was done! #speaker_self
Sharing is caring, Nad. #speaker_left
Please, like you haven’t been eyeing it since just now. #speaker_self
Oh come on! Pleaaaaaase? #speaker_left
Fine, fine — pass me your bowl. #speaker_self
Yes! #speaker_left
Wait, that’s everything — have you eaten enough? #speaker_left
Haha yes, I was going to pass you the rest anyway. #speaker_self
Should I bring it up? #inner_monologue
God bless tempeh and sambal. This is SO good. #speaker_left
Ok, just say it! #inner_monologue
Better than your bak chor mee? #speaker_self
I guess. I really wanted chicken rice, but they always close early. #speaker_left
So.. actually the issue was cos you were having bak chor mee. #speaker_self
Huh? #speaker_left
Your bak chor mee. And your chopsticks. Which were handling.. #speaker_self
#speaker_left_image:cha_nadia_gavin_nervous.png
Oh! Oh crap. The chopsticks were not halal. #speaker_left
+ [Yeah...] Yeah. Well not the chopsticks, but it’s fine —  #speaker_self
+ [Not just that...] Not just that, the bak chor mee that you were eating with them is not halal.  #speaker_self
- geez, I’m sorry Nad. It totally slipped my mind. I really forgot. #speaker_left
It’s fine.. #speaker_self
No, I mean it! I usually remind myself cos I know it’s important to you, but — #speaker_left
— today the tempeh called out to you? #speaker_self
Haha, yes. Can we blame the tempeh? #speaker_left
(Laughs) Sure, let’s blame the fermented soybeans. #speaker_self
Bless them beans. #speaker_left
So, what if I was having chicken rice? Is it still the same? #speaker_left
Good question. #inner_monologue
It depends.. If it’s the school chicken rice, even though it’s not halal, I’m more okay with it. #speaker_self
How come? #speaker_left
Because they only sell chicken rice? And not the other one, the red coloured pork.. #speaker_self
Char siu! #speaker_left
Yes, that one! With char siu in the picture, then all becomes VERY not halal. #speaker_self
Ok, what about “No Pork, No Lard”?  #speaker_left
My sister’s friends are chill with that. When they come over to hang out, my mum makes bee hoon. #speaker_left
I really can’t speak for others.. #inner_monologue
It depends. #speaker_left
Yeah. And I can’t judge.  #speaker_self
It’s tricky, and you never want to be the person making things difficult. #speaker_self
#speaker_left_image:cha_nadia_gavin_concerned.png
You always worry too much about what other people think. #speaker_left
Hey! #speaker_self
I’m NOT saying it doesn’t matter. It just sucks. I wish you didn’t have to care. #speaker_left
I know. #speaker_self
Ok, then what if you be the one deciding where to eat? That settles things right? #speaker_left
I hate that sometimes too. It’s a lot of pressure. #speaker_self
(Suddenly flustered) Then how! #speaker_left
How what? #speaker_self
How are we going to hang out? #speaker_left
#speaker_left_image:cha_nadia_gavin_normal.png
(Confused) We’re hanging out now. #speaker_self
I mean, not in school. #speaker_left
+ [Huh? Then where?] (Still confused) If not in school, then where?  #speaker_self
    Anywhere! #speaker_left
    Like.. a cafe? We can take a study break this weekend. #speaker_left
+ [We can still hang out.] (Still confused) We still can. #speaker_self
    Yeah? Would you want to? #speaker_left
    We’re on track with our study plan. We can take a break this weekend. #speaker_left
- This weekend? #speaker_self
Sunday? I have church in the morning, but maybe afterwards.. #speaker_left
We can have coffee. #speaker_self
Or go to a park? #speaker_left
I’d like that. #speaker_self
Anywhere that’s not a library. #speaker_left
Deal. #speaker_self
DID HE JUST ASK ME ON A...  #inner_monologue
-> nadia_1_4_narration

= nadia_1_3b
~ nadia_mood --
~ nadia_gavinsharefood = 2
Hold up. Gavin, what were you just eating? #speaker_self
Geez, relax. I know I had bak chor mee, but the chopsticks are clean what.  #speaker_left
Red stall, red plate. Green stall, green plate. No crossing! #speaker_self
(Jokingly) Yeah, but the tempeh is right at the corner.  #speaker_left
I can pick it up without touching anything. See -- #speaker_left
Hey, can you stop? I’m still eating. #speaker_self
Wow. Chloe was not kidding when she said you can be particular. #speaker_left
...she said what? #speaker_self
Like you know, how you get hangry when your food is threatened, or not a certain way. #speaker_left
Hangry? #speaker_self
Yeah, you know angry when you’re hun- #speaker_left
I know what it means.  #speaker_self
+ I'm not angry[.] I'm not angry. But that doesn't mean I don't want my space and beliefs respected.  #speaker_self
+ [Just asking for respect] It’s not hangry to want my space and beliefs respected. Right? #speaker_self
- Ok ok, I hear you. Chopsticks, down.  #speaker_left
Good.  #speaker_self
#speaker_left_image:cha_nadia_gavin_nervous.png
I’m sorry ok? I do this with my other Malay friends too.  #speaker_left
So I thought you’d be fine with it. #speaker_left
I guess they’re ok with it. I’m not..  #speaker_self
Yeah.  #speaker_left
He looks really sorry. This guy is so dramatic. #inner_monologue
So.. do you want to meet my church friends? NUS vs NTU med school? #speaker_left
#speaker_left_image:cha_nadia_gavin_normal.png
You know what? Thanks Gavin. Only if you’re sure they won’t mind.  #speaker_self
(Beams) Not at all! You’ll really like them, promise.  #speaker_left
I’m probably meeting them on Sunday early evening.  #speaker_left
Do you want to join us and then you can ask them all the questions you want? #speaker_left
(Smiles) Sunday works.  #speaker_self
Great! We can also meet earlier and hang out before?  #speaker_left
You know, in case you’re nervous to meet them. #speaker_left
Yeah and you can brief me on them? Help me think of smart questions, ok? #speaker_self
#speaker_left_image:cha_nadia_gavin_grinning.png
You’re already pretty smart. Don’t show me up! I can pick you up after church.  #speaker_left
Say 2pm? We can get coffee... maybe some cakes.  #speaker_left
Ya, sounds good! #speaker_self
Cool, it’s a date then! #speaker_left
It’s a...what? #inner_monologue

-> nadia_1_4_narration


= nadia_1_3c
~ nadia_mood --
~ nadia_gavinsharefood = 3
but... #speaker_self
Yum. I really love tempeh. #speaker_left
Nah, you might as well take the rest. #speaker_self
Wow, really? That’s awesome. #speaker_left
...  #speaker_self
(munchmunchmunch) You sure you had enough to eat? What’s wrong? #speaker_left
It’s fine. It’s not like I could have eaten the rest. #speaker_self
I didn’t know you don’t like tempeh.  #speaker_left
We make quite a pair huh? I can help you finish all the stuff you don’t eat. #speaker_left
I like tempeh.  #speaker_self
Awww. And you still gave me yours. How ‘bout the next time we hang...you can eat all of mine. #speaker_left
As long as we eat it with chopsticks from the Malay stall.  #speaker_self
#speaker_left_image:cha_nadia_gavin_nervous.png
Huh? -pause- Oh wait. Did I..oh no. Sorry! I should have used the halal ones. #speaker_left
+ [Yes, sort of] Well the chopsticks used to eat halal food, yes. And definitely not the ones you used to eat your bak chor mee. #speaker_self
+ [It's more than that] It’s not the cutlery that is halal..you know that right?  #speaker_self
    ...yes. It’s the...no pork right? #speaker_left
    It’s a little more than just no pork. But in this case, yes. You were eating bak chor mee.  #speaker_self
- So, if I had eaten the chicken rice instead, would that have been ok? #speaker_left
That’s a good question...maybe there’s still hope. #inner_monologue
It depends.. If it’s the school chicken rice, even though it’s not halal, I’m more okay with it. #speaker_self
How come? #speaker_left
Because they only sell chicken rice and not pork. #speaker_self
Ok, so you’re more “No Pork, No Lard”?  #speaker_left
My sister’s Indonesian friends are like that. When they come over to hang out, my mum makes bee hoon. #speaker_left
This really should be more straightforward to answer but.. #inner_monologue
Everyone’s on their own faith journey. So you know, I can’t speak for them, or judge.  #speaker_self
For me, it’s also about being considerate.  #speaker_self
Because your chopsticks touched my plate and utensils, they’ll need to be cleansed by the stall owner.  #speaker_self
Sorry Nad, I really wasn’t paying attention. But I’ll do better. Are we ok? #speaker_left
Yeah, we are. Just no more stealing my food k? I can get really hangry. #speaker_self
#speaker_left_image:cha_nadia_gavin_normal.png
PROMISE! Actually...how about I make up for stealing your food this weekend?  #speaker_left
(confused) What? #speaker_self
Let’s go out for lunch. Or just coffee, maybe?  #speaker_left
Why? #speaker_self
#speaker_left_image:cha_nadia_gavin_grinning.png
It’s only fair exchange for a very rude food theft!  #speaker_left
Also we’ve been mugging for weeks. We can take a break.  #speaker_left
This Sunday? #speaker_self
I can meet you after church. I think there are some halal cafes in the area.  #speaker_left
Errr, ya sure. I guess I’m free. #speaker_self
K, let me do some research and then I’ll text you the time and place to meet.  #speaker_left
...did I just say yes to a date? #inner_monologue
-> nadia_1_4_narration




=== nadia_1_4_narration ===
#knot:nadia_1_4_narration 
#ui:narrator
#background:bg_nadia_bus.jpg
On my way home, and I’m still poring over what happened in the canteen with Gavin. 
I’m not imagining it, right? I need to talk to a voice of reason!

-> nadia_1_4

=== nadia_1_4 ===
#knot:nadia_1_4
#ui:whatsapp
#background:whatsapp.png
#chat_group_title:Azlin
#chat_group_image:ico_nadia_azlin.png
#speaker_1_name:Azlin
#timestamp:17:25
Hallo are you still at my place? Am just leaving school #speaker_self
ala i left already :( #speaker_1
Aw man! #speaker_self
Do you want to meet at our spot? Just a quick one? #speaker_self
wish i could, but tomorrow is my morning shift #speaker_1
what happened? u ok? #speaker_1
I think I have a date on Sunday 😳 #speaker_self
ooooooo what! and who! is it someone from volleyball #speaker_1
No it’s not.. and it’s just coffee. nbd right? #speaker_self
😎 sure sure sounds chill and cute #speaker_1
My stomach just did a flip #speaker_self
haha no need nervous la. u know him already or what? #speaker_1
+ [He’s a really good friend] -> nadia_1_4a
+ [I’ve known him awhile] -> nadia_1_4b

= nadia_1_4a 
He’s a really good friend.. But I thought I was just imagining things #speaker_self
hehe how long has this been gg on? #speaker_1
I mean we’re in student council and I really like studying with him and Chloe.. #speaker_self
wait #speaker_1
r we talking about this gavin friend of urs?? #speaker_1
😳😳😳 #speaker_self
yes? #speaker_self
hahaha u do know how much u talk about him right. it’s kinda obvious #speaker_1
I talk about Chloe too! #speaker_self
lol ok sure. but you know.. you and your chinese boys #speaker_1
+ [Boys ?!] !!! There have been no boyS, as in boyfriends #speaker_self
    i know la no bfs. but ur crushes all chinese boys kan #speaker_1
+ [Chinese Boys ?!] !! I don’t have a thing for Chinese boys #speaker_self
    but ur crushes all chinese boys kan #speaker_1
- Where got all.. #speaker_self
last year was the guy from volleyball. then in sec school the guy from NCC.  #speaker_1
and the drum major. and even the guy from the bbt shop 🤡 #speaker_1
There was Hafiz #speaker_self
who u ghosted. u didn’t even like him, it was the other way round #speaker_1
I’m sorry 😣 I know he’s your friend but it was promos! #speaker_self
haha i warn him already. “she is v focused type, jangan disturb when she want to study”  #speaker_1
He texted too much.. #speaker_self
u have a type nad #speaker_1
+ [So do you] -> chapter_1_ending_1
+ [I don’t think so] -> chapter_1_ending_2

= nadia_1_4b
Ya, I’ve known him for awhile. We go to study group together. #speaker_self
hehe what’s he like? #speaker_1
Err...a little goofy, funny. Has his own way of doing things.  #speaker_self
He lent me his sweater yesterday coz it was too cold in the library. #speaker_self
ooo...at least u moved on from that gavin. dat one was like hopeless la 😂 #speaker_1
😳😳😳 #speaker_self
lol #speaker_self
always leading u on then you go gaga. then nanti, go and do something to make u angry.  #speaker_1
#ui:scene
#background:bg_nadia_bus.jpg
Really? It’s just how we are. K, maintain... #inner_monologue
#ui:whatsapp
#background:whatsapp.png
#chat_group_title:Azlin
#chat_group_image:ico_nadia_azlin.png
#speaker_1_name:Azlin
No la. Where got.  #speaker_self
We’re good friends what. Friends sometimes fight. What matters is how we make up after. #speaker_self
“make up” #speaker_1
...or make out?  #speaker_1
OMG.  #speaker_1
ARE.  #speaker_1
U.   #speaker_1
STILL.   #speaker_1
ON.   #speaker_1
GAVIN.   #speaker_1
GIVE UP LA.  #speaker_1
MAMPOS. #speaker_1
+ [No la. We’re just friends] -> chapter_1_ending_3
+ [I’m the one that knows him] -> chapter_1_ending_4
   

===  chapter_1_ending_1 ===
#knot:chapter_1_ending_1
#ui:whatsapp
#background:whatsapp.png
#chat_group_title:Azlin
#chat_group_image:ico_nadia_azlin.png
#speaker_1_name:Azlin
~ chapter_1_ending = 1
So do you 😐 #speaker_self
haha that’s my own pasal and problem 😬 #speaker_1
Do your parents know about gavin? #speaker_1
Not really. It’s very early for anything right? You know how my dad can be #speaker_self
i guess. not a bad idea to wait and see.  #speaker_1
have you guys gone out before, as friends? with others? #speaker_1
No only in school 🤷‍♀️ #speaker_self
then can i ask u something #speaker_1
yes? #speaker_self 
does he know you started wearing the hijab? #speaker_1
#ui:scene
#background:bg_nadia_bus.jpg
Oh no. I know where this is going. #inner_monologue
#ui:whatsapp
#background:whatsapp.png
#chat_group_title:Azlin
#chat_group_image:ico_nadia_azlin.png
#speaker_1_name:Azlin
🤷‍♀️ #speaker_self
hmm #speaker_1
just.. remember who you are okay? #speaker_1

-> nadia_1_reflection

=== chapter_1_ending_2 ===
#knot:chapter_1_ending_2
#ui:whatsapp
#background:whatsapp.png
#chat_group_title:Azlin
#chat_group_image:ico_nadia_azlin.png
#speaker_1_name:Azlin
~ chapter_1_ending = 2
I don’t think so. I like people because of who they are, what they’re like. #speaker_self
cute and chinese is your type 🤷‍♀️ #speaker_1
🙄 #speaker_self
Why does it have to be a race thing #speaker_self
jangan (don't) angry la.. i’m not saying it’s a bad thing.  #speaker_1
but u also cannot say takde (don't have) pattern #speaker_1
If anything, I’d be worried about something else #speaker_self
does he already have a gf?? #speaker_1
NO omg he’s not like that. #speaker_self
..he’s Christian. #speaker_self
well #speaker_1
Like very Christian. Go to church every week kind of Christian.  #speaker_self
Say grace before makan Christian. His inner peace is one of the things I like about him. #speaker_self
you really like him huh #speaker_1
I hate this.  #speaker_self
This is the WORST time for to be distracted, its 4 months to a levels #speaker_self
can’t you two just be friends? no need all this.. #speaker_1
#ui:scene
#background:bg_nadia_bus.jpg
I know what she means. It’s going to be complicated. #inner_monologue
#ui:whatsapp
#background:whatsapp.png
#chat_group_title:Azlin
#chat_group_image:ico_nadia_azlin.png
#speaker_1_name:Azlin
Sigh a bit late for that #speaker_self
just.. remember who you are okay? #speaker_1

-> nadia_1_reflection


=== chapter_1_ending_3 ===
#knot:chapter_1_ending_3
#ui:whatsapp
#background:whatsapp.png
#chat_group_title:Azlin
#chat_group_image:ico_nadia_azlin.png
#speaker_1_name:Azlin
~ chapter_1_ending = 3
No la. We’re just friends. He’s nice. So I’m nice back.  #speaker_self
...mmhmmm... #speaker_1
Anyway #speaker_self
This is the WORST time for me to be distracted, it’s 4 months to a levels #speaker_self
nad, if u want to go into med school, then focus k? #speaker_1
u have big dreams so u must protect!!  #speaker_1
esp when all our makciks say girl no need to study so hard.  #speaker_1
So nonsense la when they say that 🙄 #speaker_self
geram seh! “just kahwin and have children.. like that life is blessed already” #speaker_1
Ya, I know.  #speaker_self
Thanks you know, for  helping and pushing me through. Means a lot. #speaker_self
tau pon 😬 #speaker_1
better remember when u bc some bigshot doctor haha.  #speaker_1
don’t shiok sendiri, suddenly don’t know ur nurse cousin all  #speaker_1
just.. remember who u are, okay?  #speaker_1

-> nadia_1_reflection


=== chapter_1_ending_4 ===
#knot:chapter_1_ending_4
#ui:whatsapp
#background:whatsapp.png
#chat_group_title:Azlin
#chat_group_image:ico_nadia_azlin.png
#speaker_1_name:Azlin
~ chapter_1_ending = 4
lol #speaker_self
Kak, I’m the one that knows him. He’s sweet.  #speaker_self
Ok he is a bit clueless.  #speaker_self
Alamak today in the canteen he took his chopsticks bekas you know what, wanted to try my food #speaker_self
😐 he don’t have other malay friends ke?  #speaker_1
Idk la, he say have and those friends don’t mind lol. #speaker_self
sigh. going to this kind of christian schools.. the culture different la  #speaker_1
Haha my dad said the same thing yesterday #speaker_self
lol not often we agree  #speaker_1
It’s not bad being in a Christian school tho. They don’t make me go to mass #speaker_self
the crosses and giant bible quotes don’t make you feel funny?  #speaker_1
Maybe at the start only? But it’s their faith..  #speaker_self
I like being around people who take it seriously.  #speaker_self
ok. as long as *you* don’t get carried away 😬   #speaker_1
I know. There are only like 3 other Malay students in my year btw #speaker_self
🤷‍♀️ #speaker_self
I mean I’m not surprised..   #speaker_1
I finally got track pants for PE today, and my friend Chloe had soooo many questions  #speaker_self
haha what did she ask  #speaker_1
+ {nadia_trackpants_choice == 1} The usual la.   #speaker_self
    Why I want to cover up etc.  Then still can ask if the other Malay girls wear tudung alsowore them too.  #speaker_self
    BUT THERE ARE NO OTHER MALAY GIRLS 😂 She never even noticed seh #speaker_self
    must be nice 😂  #speaker_1
+ {nadia_trackpants_choice > 1} about my track pants...   #speaker_self
    Don’t think she really got that it was my choice to wear the pants. #speaker_self
    The look on her face was like, never see track pants before. #speaker_self
    😂  #speaker_1
- nvm la at least ur a step closer to ur dreams.   #speaker_1
and getting good experience to train bedside manner haha  #speaker_1
i tell u. being a nurse means u have to tahannnnn all these people.  #speaker_1
i hope u have an easier time when u become a doctor.  #speaker_1
+ Me too[.] I know you didn't have it easy #speaker_self
+ [You blazed the trail] I’m just glad you were there to blazeeeee the way. I know it wasn’t easy for you too. #speaker_self
    You’re the first one in the family to go into healthcare. #speaker_self
- ur lucky with ur parents too. be grateful they are so proud of u.   #speaker_1
but also  #speaker_1
Yes? 😬 #speaker_self
dun gatal gatal with these boys la. just focus on your studies. only 4 more months to a levels kan.  #speaker_1
just.. remember who u are, okay?  #speaker_1


-> nadia_1_reflection



=== nadia_1_reflection ===
#knot:nadia_1_reflection
#ui:chapter_reflection
#reflection_id:2
Reflection 1



-> nadia_2_intro










// CHAPTER 2





=== nadia_2_intro ===
#knot:nadia_2_intro
#ui:narrator
#background:nadia_2_intro.jpg
#music:nadia_intro.mp3
.
~ chapter_id = 2
CHAPTER 2 #title
The Mall #title

-> nadia_2_1_narration 


=== nadia_2_1_narration ===
#knot:nadia_2_1_narration
#ui:narrator
#background:nadia_shoppingmall.jpg
3:10pm in the mall with Gavin
-> nadia_2_1


=== nadia_2_1 ===
#knot:nadia_2_1
#ui:scene
#background:nadia_shoppingmall.jpg
#speaker_left_image:cha_nadia_gavin.png
#speaker_left_name:Gavin
Hi so sorry I’m late! #speaker_self
Hey! You look nice. #speaker_left
Oh! He’s reaching out for a hug. #inner_monologue


-> END
