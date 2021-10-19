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

// DECLARE GLOBAL VARIABLES
VAR character_id = 1
VAR nadia_mood = 10
VAR gavin_mood = 10
VAR nadia_liar = 0
// VAR chapter_1_ending = 0 
// VAR chapter_2_ending = 0 
// VAR chapter_3_ending = 0 
// VAR chapter_4_ending = 0 

-> nadia_1_intro

// CHARACTER INTRODUCTION


=== nadia_1_intro ===
#knot:nadia_1_intro
#ui:narrator
#background:bg_nadia_intro.jpg
#music:nadia_intro.mp3
CHAPTER 1 #title
NADIA BINTE RAHIM #title
VAR chapter_id = 1
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
#ui:notification
#background:ui_nadia_message.jpg
Gavin: help # message
-> nadia_1_1a

=== nadia_1_1a ===
#knot:nadia_1_1a
#ui:whatsapp
#background:whatsapp.png
#chat_group_title:Gavin
#chat_group_image:ico_nadia_gavin.png
#speaker_1_name:Gavin
21.49 #timestamp
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
Kalau chill, kan study at home...(If it’s too relaxed, studying at home is better)  #speaker_right
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
I feel more comfortable in these, actually. My mom just got them for me. #speaker_self
VAR nadia_trackpants_choice = 1
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

-> nadia_1_3_narration

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


-> nadia_1_3_narration

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

-> nadia_1_3_narration


// === nadia_1_minigame ===
// #knot:nadia_1_minigame
// #ui:mcq
// #game_id:2
// Minigame 2 // must add some text

// -> nadia_1_3_narration



=== nadia_1_3_narration ===
#knot:nadia_1_minigame
#ui:mcq
#game_id:2
Minigame 2 // must add some text

#knot:nadia_1_3_narration
#ui:narrator
#background:bg_nadia_canteen.jpg
In the quiet window of time after class hours, I’m by myself in the canteen, grabbing a meal. 
After all of that PE, I’m starving.

-> nadia_1_3


=== nadia_1_3 ===
#knot:nadia_1_3
#ui:notification
#background:ui_nadia_message.jpg
Gavin: Where u at? # message
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
#ui:notification
#background:ui_nadia_message.jpg
Azlin: Nad what time are you gg to be home today? # message
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
(Jokingly) Eh, who said I was done! #speaker_self
VAR nadia_gavinsharefood = 1
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
- Geez, I’m sorry Nad. It totally slipped my mind. I really forgot. #speaker_left
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
So do you 😐 #speaker_self
VAR chapter_1_ending = 1
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
i don't know about this nad  #speaker_1
better think before you rush #speaker_1
just.. remember who you are okay? #speaker_1

-> nadia_1_reflection

=== chapter_1_ending_2 ===
#knot:chapter_1_ending_2
#ui:whatsapp
#background:whatsapp.png
#chat_group_title:Azlin
#chat_group_image:ico_nadia_azlin.png
#speaker_1_name:Azlin
I don’t think so. I like people because of who they are, what they’re like. #speaker_self
~ chapter_1_ending = 2
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
don't do anything you will regret k #speaker_1

-> nadia_1_reflection


=== chapter_1_ending_3 ===
#knot:chapter_1_ending_3
#ui:whatsapp
#background:whatsapp.png
#chat_group_title:Azlin
#chat_group_image:ico_nadia_azlin.png
#speaker_1_name:Azlin
No la. We’re just friends. He’s nice. So I’m nice back.  #speaker_self
...mmhmmm... #speaker_1
~ chapter_1_ending = 3
Anyway #speaker_self
I also know I cannot get distracted now. It's 4 months to A levels!!!! #speaker_self
exactly.  nad, if u want to go into med school, then focus k? #speaker_1
u have big dreams so u must protect!!  #speaker_1
esp when all our makciks say girl no need to study so hard.  #speaker_1
So nonsense la when they say that 🙄 #speaker_self
geram seh! “just  (marry) and have children.. like that life is blessed already” #speaker_1
Ya, I know.  #speaker_self
Thanks you know, for  helping and pushing me through. Means a lot. #speaker_self
tau pon 😬 #speaker_1
better remember when u bc some bigshot doctor haha.  #speaker_1
don’t shiok sendiri (fall blissfully in love and get self absorbed), suddenly don’t know ur nurse cousin all  #speaker_1
think about boys later #speaker_1
for now, just keep ur head on straight and don't anyhow #speaker_1
u know better than that #speaker_1
and i know u are better than that #speaker_1

-> nadia_1_reflection


=== chapter_1_ending_4 ===
#knot:chapter_1_ending_4
#ui:whatsapp
#background:whatsapp.png
#chat_group_title:Azlin
#chat_group_image:ico_nadia_azlin.png
#speaker_1_name:Azlin
lol #speaker_self
~ chapter_1_ending = 4
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
stay on course nad   #speaker_1
u got this.  #speaker_1


-> nadia_1_reflection



=== nadia_1_reflection ===
#knot:nadia_1_reflection
#ui:chapter_reflection
#reflection_id:2
Reflection 2



-> nadia_2_intro










// CHAPTER 2





=== nadia_2_intro ===
#knot:nadia_2_intro
#ui:narrator
#background:bg_nadia_intro.jpg
#music:nadia_intro.mp3
I’m still a little surprised by what happened with Gavin. 
Not the chopsticks thing, I mean - but the invitation to go on a date. 
I guess it never occurred to me that he might like me enough to ask me out. 
There are still so many questions in my head. 
But maybe for this one moment, I can just enjoy being with him without worrying about all that. 
And maybe I can show him who I am outside of school, when we’re not studying in the library. 
I hope he likes what he finds.
~ chapter_id = 2
//reset chapter 2-5 variables
CHAPTER {chapter_id} #title
The Date Crasher #title


-> nadia_2_1_narration 


=== nadia_2_1_narration ===
#knot:nadia_2_1_narration
#ui:narrator
#background:bg_nadia_bedroom.jpg
Sunday, 2:25pm.
I’m running late - this is SO not me! 
But I also don’t usually take so long to decide on what to wear. 
Or go on dates! Ok, just breathe. Let's commit to this. 
I’m going to wear my hijab. 

-> nadia_2_1


=== nadia_2_1 ===
#knot:nadia_2_1
#ui:whatsapp
#background:whatsapp.png
#chat_group_title:Chloe
#chat_group_image:ico_nadia_chloe.png
#speaker_1_name:Chloe
14:27 #timestamp
Hallo! Wanna head out this afternoon for a mug sesh? #speaker_1
Darn I can’t #speaker_self
That’s ok! What are u up to? #speaker_1
Um. I’m meeting Gavin. #speaker_self
Oh chey, bo jio.. Are you two studying without me! #speaker_1
😳 #speaker_self
+ wellllllll [] #speaker_self
+ errr not exactly studying [] #speaker_self
- No way! Omg. It’s a daaaaaaaaaate  🎉✨🎉✨🎉✨ #speaker_1
I can’t believe you didn’t tell me!!! #speaker_1
Sorryyyyyyyy I didn’t know how to #speaker_self
and what if it isn’t? You know?? #speaker_self
Ok so who asked who out? Was it Gavin? #speaker_1
Kinda #speaker_self
Hahahaha then it is a date la! 🎉🎉🎉  #speaker_1
(Like finally!) #speaker_1
Calmmmm down. I’m already nervous enough. #speaker_self
So...  what’s your date fit? Are you doing matching lewks #speaker_1
NO?? Would you?? #speaker_self
Huhu I think it can be cute leh. #speaker_1
Quick show meeeee #speaker_1
Okok, gimme a min #speaker_self
bg_nadia_selfiehijab.jpg #speaker_self #image
+ 😎 Rocking it![] #speaker_self
    VAR nadia_2_confidenthijab = true
    I’m turning up like this.  #speaker_self
    Still a cutie!  #speaker_1
    Whew, what a relief 😏  #speaker_self
    Your headscarf colour is so pretty 💛 I think this is the first time I’ve EVER seen you wearing one!!  #speaker_1
    Gavin is going to love it!   #speaker_1
    #ui:scene
    #background:bg_nadia_selfiehijab.jpg
    I sure hope so. #inner_monologue
    
+ Like this can? 😳 [] #speaker_self 
    ~ nadia_2_confidenthijab = false
    What do you think? Ok right? #speaker_self 
    Hahaha oh gosh #speaker_1
    !! #speaker_self 
    No no you still look super cute! Just forgot that you wear a headscarf these days (?) #speaker_1
    Does Gavin know btw? He should be ok with it right? #speaker_1
    #ui:scene
    #background:bg_nadia_selfiehijab.jpg
    It's never really come up with Gavin. But he should be "okay with it"... right? #inner_monologue
- There's only one way to find out. #inner_monologue


-> nadia_2_2_narration 


=== nadia_2_2_narration ===
#knot:nadia_2_2_narration
#ui:narrator
#background:bg_nadia_mall.jpg
Sunday, 3:10pm, at the mall.

-> nadia_2_2


=== nadia_2_2 ===
#knot:nadia_2_2
#ui:scene
#background:bg_nadia_mall.jpg
#speaker_left_image:cha_nadia_gavin_casual_normal.png
#speaker_left_name:Gavin
Hi so sorry I’m late! #speaker_self
Hey! You look nice. #speaker_left
Oh! He’s reaching out for a hug. #inner_monologue
{nadia_2_confidenthijab: 
    + [Hug Gavin back ] -> nadia_2_2a1
    }
{not nadia_2_confidenthijab: 
    + [Hug Gavin back ] -> nadia_2_2a1
    + [Turn my shoulder to avoid] -> nadia_2_2a2
    }

= nadia_2_2a1
Gee thanks. You clean up well too. So where’s this cafe? #speaker_self
VAR nadia_2_huggavin = true
It’s just outside, I heard they have really good tempeh — #speaker_left
... seriously?? #speaker_self
Hahaha no, just kidding. #speaker_left
You are so irritating!!	#speaker_self
Was worth the look on your face though. #speaker_left
You’re the one obsessed. #speaker_self
Am I though? I recall it was someone else being very protective that day. #speaker_left
Hahaha... Ok ok, I’m done with this.	#speaker_self
You really do look nice by the way. #speaker_left
Yeah? I was a bit worried. #speaker_self
About what?	#speaker_left
+ That I look.. different today, than how I would in school?[]	#speaker_self
    Do you really? 	#speaker_left
+ That... you would feel weird seeing me like this?[]	#speaker_self
    Let me check, do I feel weird? Nah - no weird feels. 	#speaker_left
- I don’t think it’s a big deal. #speaker_left
Hmmm... Really? #speaker_self
Hahaha... Ok fine, but that’s just because I was a bit surprised. #speaker_left
I didn’t know you wear a.. tudung outside of school. #speaker_left
So secretive about everything, Nad. #speaker_left
Ugh, fair. I just don’t want anything to be made a big deal. #speaker_self
And sometimes.. not saying anything makes it a bigger deal.	#speaker_left
You really working on your psychologist skills huh. #speaker_self
Not bad, right?	#speaker_left
Truly your calling. Ok fine, open communication, let’s go.	#speaker_self
When I am in hijab.. it might be better if we don’t hug to say hello? #speaker_self
I don’t want you to feel weird, and it’s nothing when we’re in school but - #speaker_self
Yeah, okay. #speaker_left
Yeah? #speaker_self
I do. If it makes you feel weird, then I won’t want to either. #speaker_left
How does your head make everything sound so simple. #speaker_self
There’s usually a straight line.. through the knots. #speaker_left
Hahaha... Either your logic is loopy, or I need that coffee more than I realise. #speaker_self
Where is this cafe?	#speaker_self
It’s just around here, unless we missed a turn... #speaker_left

-> nadia_2_2b


= nadia_2_2a2
~ nadia_2_huggavin = false
Gee thanks. You clean up well too. 	#speaker_self
Err..You ok? #speaker_left
Um yeah, all good! Now, Where’s this cafe? 	#speaker_self
I checked the directory and they said straight, left and then down the next escalator. #speaker_left
Cool. You did your homework! 	#speaker_self
Always. You don’t get into student council without some heavy lifting. #speaker_left
You..are not flexing right now. 	#speaker_self
Hey, if you had biceps like mine, you’d flex too. #speaker_left
You’re such a weirdo. 	#speaker_self
You know you like it. #speaker_left
Do I? Do I really? 	#speaker_self
Ehhh. I saw your smile from a mile away ok? You were super easy to spot. #speaker_left
...Is he referring to my hijab? #inner_monologue
Easy to spot how? 	#speaker_self
I just looked for the shortest, most energetic person walking towards me. That, and that tatty bag of yours. #speaker_left
Wah, your negging is not subtle. 	#speaker_self
But seriously though, is everything ok with you? You seemed a little off when we said hi. #speaker_left
+ [We’d better not hug in public.]  Oh, it’s just, you know. #speaker_self
I’m wearing my tudung and it’s best not to be seen hugging when I have it on.	#speaker_self
+ [Everything’s fine.]  It’s all good. #speaker_self
    Are you sure? #speaker_left
    Just a bit more conscious about physical contact when I’m in my tudung.  #speaker_self
- Ah! Noted. My bad. I will keep five steps apart from you at all times. #speaker_left
Wow. There’s no need to be that extreme. 	#speaker_self
I mean, I will try my best but you know, coffee tables are closer than that. #speaker_left
Righttt. So, this really doesn’t bother you? 	#speaker_self
Your...tudung? No, why should it? I mean, I know you’re pretty religious and faith is important to you.  #speaker_left
We all know how operation tempeh went down. #speaker_left
I think it’s great that you’re confident in who you are.  #speaker_left
Wow. I wish I had mentioned it earlier. I took WAY too long trying to decide whether to wear it or not. 	#speaker_self
Lol, was that why you were late? I thought you were having second thoughts about meeting. #speaker_left
No, I’m pretty sure I want to be here. 	#speaker_self
So...is there anything else I need to know about what we can or cannot do? #speaker_left
Yes, here’s an important one. We can’t get lost looking for coffee. Are you sure you got the right directions? 	#speaker_self
Eh...did I say left or right just now? Maybe we missed the turn... #speaker_left

-> nadia_2_2b
 
= nadia_2_2b
#ui:scene
#background:bg_nadia_mall.jpg
#speaker_left_image:cha_nadia_gavin_casual_normal.png
#speaker_left_name:Gavin
#speaker_right_name:Azlin
This mall is such a maze. Where on earth is that cafe? #inner_monologue
Wait a minute. Is someone calling my name? #inner_monologue
Someone is definitely calling my name. #inner_monologue
I know that voice. That’s... #inner_monologue
#speaker_right_image:cha_nadia_azlin_happy.png 
NADIA! #speaker_right
No way. #inner_monologue
Oh hey! What are you doing here? #speaker_self
No seriously, what is she doing here? Ok she’s just standing there, she’s waiting for me to come over.. with Gavin.	#inner_monologue
Who’s that?	#speaker_left
It’s my cousin, let me just go over and say hi.	#speaker_self
I’ll come with. #speaker_left
Darn it Gavin! Fine, let’s do this. #inner_monologue 
Seriously, what were the odds? Azlin looks so gleeful -- just look at that grin on her face.  #inner_monologue
I’ll never hear the end of this.  #inner_monologue
K, just be steady... let me first salam her (traditional Muslim greeting)...  #inner_monologue
Oh dear. What is Gavin doing? #inner_monologue
...ah. #speaker_self
#speaker_right_image:cha_nadia_azlin_confused.png 
#speaker_left_image:cha_nadia_gavin_casual_nervous.png
What? #speaker_left
Haha, it’s okay. #speaker_right
Did he just try to salam my cousin? Oh this is awkward. I'll tell him later. #inner_monologue
Hi kak, this is Gavin.	#speaker_self
Hi Gavin...	#speaker_right
PLEASE do not say “I’ve heard so much about you.”	#inner_monologue
#speaker_left_image:cha_nadia_gavin_casual_normal.png
#speaker_right_image:cha_nadia_azlin_happy.png 
...nice to meet you! #speaker_right
Oh thank goodness. Thank you Azlin. #inner_monologue
What are you guys doing here?	#speaker_right
We’re going to grab coffee.. There’s this halal cafe that just opened up.	#speaker_left
Yes, and Gavin’s suggestion actually! #speaker_self
#speaker_right_image:cha_nadia_azlin_teasing.png
Oh really? I thought you were more of a tea person, Nad.	#speaker_right
#speaker_left_image:cha_nadia_gavin_casual_concerned.png
huh?	#speaker_left
+ [I like tea] I mean, I drink tea at home, but...  #speaker_self
    Oh! Er, we can have te --	#speaker_left
    No, I like coffee too..!  #speaker_self
    #speaker_left_image:cha_nadia_gavin_casual_normal.png
    No I mean, I know you like tea, that’s why I chose this cafe, it serves really good tea...	#speaker_left
+ [I like coffee] I like coffee! Coffee is good. Coffee at cafes. #speaker_self
    What am I babbling about? This is so embarrassing. #inner_monologue
    Only fancy cafes, huh?  No kopitiam kopi for you? #speaker_right
    #speaker_left_image:cha_nadia_gavin_casual_normal.png
    Kopi po siew dai. #speaker_left
    Hmm? #speaker_right
    That’s her usual order. At school.	#speaker_left
- Haha ok ok, just teasing only.	#speaker_right
Gee, thanks. #speaker_self
#speaker_right_image:cha_nadia_azlin_happy.png 
You’re welcome! Ok, I’ll get to my errands now. Text me later!	#speaker_right
We’re in the clear! Oh no, Gavin is trying to salam her again... #inner_monologue
That’s right Azlin, just ignore and walk away. #inner_monologue
Did I miss something?	#speaker_left
#speaker_right_image:pixel.png 
Sorry about that. The salam thing - er, you don’t have to salam Azlin. #speaker_self
You don’t do that when you’re a guy and she’s...	#speaker_self
Wow. I am tripping up today.	#speaker_left
It’s fine, she was definitely more kaypoh to meet you. It’s nothing offensive or rude. #speaker_self
How come there are so many invisible rules?	#speaker_left
+ [Not "rules"] I wouldn’t say rules...	#speaker_self
    Ok, not rules.	#speaker_left
+ [It's culture] Cultural... customs. Habits. Adat, which means behaviour of.. being polite.	#speaker_self
    Social protocol. #speaker_left
- Courtesy. #speaker_self
Code of conduct. #speaker_left
Ugh why must you make everything sound so formal?	#speaker_self
#speaker_left_image:cha_nadia_gavin_casual_concerned.png
(Bewildered) Well yeah, but it is. I had no idea Malay people were so formal. 	#speaker_left
Why, because we just sit downstairs at void deck with guitar all?	#speaker_self
Oi don’t put words in my mouth -	#speaker_left
— ok fine, but just because you don’t know about it doesn’t mean it doesn’t exist.	#speaker_self
And I’m just trying to understand how come I never knew any of this before.	#speaker_left
Because you’re not Malay!	#speaker_self
#speaker_left_image:cha_nadia_gavin_casual_grinning.png
No shit! (Bursts out laughing) #speaker_left
Hahaha... I love that we can laugh together, until it almost hurts... #inner_monologue
All that tension -- gone, at least for now. #inner_monologue
Is it always going to be like this? #inner_monologue
So I have to tell you something.	#speaker_left
Now what?	#speaker_self
I am.. Chinese. I’m sorry if you didn’t notice before.	#speaker_left
(Laughs) Really? Are you sure? #speaker_self
Yup! Says so on my IC. #speaker_left
Oof, let’s save that for another day. #speaker_self
Agreed. I’m sorry things got weird.	#speaker_left
It’s ok, I’m the one who got a bit..	#speaker_self
#speaker_left_image:cha_nadia_gavin_casual_normal.png
Snarky?	#speaker_left
+ [Yes, that] Yes, that. I got defensive. #speaker_self
+ [Who, me?] Let's go with "indignant." #speaker_self
- It's fine. And I hope you know I wasn’t criticising your.. culture.	#speaker_left
Oh these things, it’s sort of - no need to say one. It’s just how we are around family. 	#speaker_self
You grow up with it. So when you were so confused by it, and suddenly I have to explain things that usually no need to say.. it rattled me, actually.	#speaker_self
I feel like an idiot saying this. But maybe only just now did I realise: eh, we really are very different. 	#speaker_self
Haha so I was kinda right, you really did just realise I’m Chinese. #speaker_left
You know what I mean! #speaker_self
Yeah, I do. I feel a bit of it. Funny huh, we spend so much time hanging in school. #speaker_left
This is a new feeling.	#speaker_left
I hate new feelings. #speaker_self
Well.. I hope not.	#speaker_left
(smiles) Ok. I don’t hate ALL new feelings. #speaker_self
#speaker_left_image:cha_nadia_gavin_casual_grinning.png
Good. Can’t believe we bumped into your cousin. Are you sure she’s not stalking us? 	#speaker_left
+ [Let's hide - just you and me] I wouldn’t put it past her. How about we go hide somewhere? #speaker_self
    VAR nadia_2_hidewithgavin = true
    Do you still want coffee? 	#speaker_left
    Ooh I don’t know. How caffeinated do we want to be? #speaker_self
    Haha, you’re right - I feel quite awake already after all that. 	#speaker_left
    How about.. Somewhere quiet and chill? #speaker_self
    How about a silly movie? #speaker_left
    Oh! How about a scary movie? #speaker_self
    #ui:narrator
    #background:bg_nadia_cinema.jpg
    We end up watching the latest Thai horror movie. 
    I think Gavin liked it. He grabbed my hand at a jump scare... 
    And didn’t let go for the rest of the movie.
    {nadia_2_huggavin: I didn't want him to.}
    -> nadia_2_3_narration

+ [No clue!]  I hope not! #speaker_self
    ~ nadia_2_hidewithgavin = false
    Do you still want coffee?  #speaker_left
    Not if it means we’re going to be walking around this mall looking for the place, haha.  #speaker_self
    Yeah and it’s so crowded today! How about.. A movie?#speaker_left
    Yeah, why not! #speaker_self
    Something serious or silly?#speaker_left
    Silly, please.  #speaker_self
    #ui:narrator
    #background:bg_nadia_cinema.jpg
    We end up watching a very strange and silly movie. 
    He didn’t try to hold my hand or anything. Everything was just comfortable, and.. nice.
    -> nadia_2_3_narration

=== nadia_2_3_narration ===
#knot:nadia_2_minigame
#ui:mcq
#game_id:3
Minigame 3 // must add some text

#knot:nadia_2_3_narration
#ui:narrator
#background:bg_nadia_library.jpg
3:20pm, on a Monday.
It’s the start of the school week, and I’m in the library in between class periods. 
Chloe said she was going to speak to a teacher, then join me here 20 minutes ago. 
Where is she... 

-> nadia_2_3 

=== nadia_2_3 ===
#knot:nadia_2_3
#ui:whatsapp
#background:whatsapp.png
#chat_group_title:Chloe
#chat_group_image:ico_nadia_chloe.png
#speaker_1_name:Chloe
15:20 #timestamp
idk what I’m gg to tell my mum #speaker_1
What happened!  #speaker_self
The opposite of good news #speaker_1
Are you still having consult? #speaker_self
Just finished. I’m gg to sit here and stone for awhile k #speaker_1
Nuuuu can’t be that bad #speaker_self
idkkkkkkk I don’t even feel like studying anymore #speaker_1
:( well i’m gg to be in the library ok?  #speaker_self
You take your time la. I brought snacks, if that helps... #speaker_self
I don’t know. Maybe I’m being dramatic. #speaker_1
You want to talk about it? #speaker_self
Maybe not now. I think.. I’d rather hear about your date  👀👫  #speaker_1
+ [It was nice]  Ah! Haha yes, um it was nice.  #speaker_self
    Wow, please hold back on the details!! 😂  #speaker_1
+ [It was okay]  Oh uhhh. It was fine! Normal la.  #speaker_self
    omg, telll me moreee #speaker_1
- Ok fine, fine. Then you come down here la! #speaker_self
#ui:narrator
#background:bg_nadia_library.jpg
10 minutes later
#ui:scene
#background:bg_nadia_library.jpg
#speaker_left_image:cha_nadia_chloe_school_normal.png
#speaker_left_name:Chloe
So.. how was date-day? #speaker_left
Kinda the same, kinda really different.. Did you see this coming? #speaker_self
#speaker_left_image:cha_nadia_chloe_school_grinning.png
Only like, finally. You guys have been into each other for ages! The banter is non-stop with you two. #speaker_left
Why didn’t you say anything!! #speaker_self
Cos I didn’t want to accidentally force something into happening, if it wasn’t going to happen.	#speaker_left
In case it doesn’t work out.. because she doesn’t think it will? #inner_monologue
#speaker_left_image:cha_nadia_chloe_school_normal.png
Did he say anything about you know, wearing a headscarf?	#speaker_left
Strangely.. it went ok. I was so nervous! Who knows what he really thinks of it. But he didn’t freak out. So there’s that at least. #speaker_self
Are you sure you’re ok?	#speaker_self
#speaker_left_image:cha_nadia_chloe_school_confused.png
Gah, I don’t know.  #speaker_left
It’s just so frustrating, I feel like I’ve been trying to do everything right but it’s still not going to be good enough. #speaker_left
What’s this about?	#speaker_self
I have.. been hoping to apply for overseas scholarships. #speaker_left
My mum keeps bugging me about it. So I’ve been asking some teachers. #speaker_left
Everybody is saying to just try la, what’s the harm right. But I don’t want to waste my time! #speaker_left
#speaker_left_image:cha_nadia_chloe_school_sad.png
If my chances are going to be lousy, I want to know so I can figure something else out. #speaker_left
Argh, I hate that this is stressing you out. #speaker_self
#speaker_left_image:cha_nadia_chloe_school_confused.png
I know right! My mum is convinced that it’s the route to go for.  #speaker_left
+[Why does your mum think this way?] -> nadia_2_3a
+[What do you think?] -> nadia_2_3b

= nadia_2_3a
Why is she so fixed on scholarships though?  #speaker_self
Well, all her friends keep talking about it too I guess.  #speaker_left
They have kids our age, in other JCs or already on scholarships. #speaker_left
It’s so weird how parents gossip!! #speaker_self
Tell me about it! I’ve never even met these guys, but I probably can tell you their life stories based on what my mum tells me.  #speaker_left
Who got through DSA, who transferred out, who didn’t get into med school here and now it’s costing a bomb to go overseas.. #speaker_left
Oh boy. Should I tell her about med school? #inner_monologue
+[Yes, maybe Chloe can help me.] -> nadia_2_3a1
+[No, this is about Chloe not me.] -> nadia_2_3a2

= nadia_2_3a1
Ok, I have to tell you something.  #speaker_self
VAR nadia_2_chloelibrarychoice = 1
What is it? #speaker_left
I’m going to try for med school too.  #speaker_self
Oh shit. Really? #speaker_left
Yeah.. is that crazy? #speaker_self
I mean, you know how tough it’s going to be.  #speaker_left
I’m going to try.  #speaker_self
Well of course! It’s really prestigious.  #speaker_left
The hours are mad long though, you’re gonna sacrifice a lot.  #speaker_left
That’s what they tell me on TV. #speaker_self
#speaker_left_image:cha_nadia_chloe_school_concerned.png
It’s real! And what if a patient DIES. I could never do it, and I don’t think you’re the GP doctor sort either. #speaker_left
I think it’s worth it.  #speaker_self
If somehow I get the grades to get into med school.. Then that’s the best use of it. You know? #speaker_self
If you get those grades, you could go anywhere! What about law? #speaker_left
Mmmph not my thing.  #speaker_self
I guess a Dr. Nadia does makes more sense for the universe. #speaker_left
-> nadia_2_3c

= nadia_2_3a2
~ nadia_2_chloelibrarychoice = 2
All this sounds really stressful. #speaker_self
Totally. It’s like I’m being pushed for something that I can’t really argue against.  #speaker_left
But you’re so good at arguing with your mom.  #speaker_self
Well this one isn’t as fun. I mean, it’s GOOD to get your name on a scholarship right? That means you’re someone. #speaker_left
Does it really matter? #speaker_self
Ya! Not that I like it, but it’s the game, and you gotta make smart moves.  #speaker_left
(Doubtfully) Ok, assuming you’re right.. why do you think you’re not in the game anymore? #speaker_self
#speaker_left_image:cha_nadia_chloe_school_sad.png
So I was talking to the HOD just now about the scholarship I’m applying for. You know he’s the super honest type. No bullshit.  #speaker_left
Said that based on his past students and how they did.. I don’t have enough on my track record. #speaker_left
+ Woah, he really said that ?![] #speaker_self
    Ya something along the lines of ‘showcase self-initiated community projects with impact’.  #speaker_left
+ [He's wrong!]  But you have a great record! What about hockey, and...and...  #speaker_self
    Ya exactly, hockey and what? I don’t have any ‘service to the community’ type of thing to talk about. #speaker_left
-  I shouldn’t have spent all my time with hockey. Should have joined student council like you and Gavin.. #speaker_left
But you LOVE hockey. And you think student council people are annoying and idealistic.  #speaker_self
#speaker_left_image:cha_nadia_chloe_school_normal.png
Correction - everyone else, aside from you and Gavin. #speaker_left
-> nadia_2_3c

= nadia_2_3b
~ nadia_2_chloelibrarychoice = 3
But what do you think? That’s the most important thing.  #speaker_self
You always say she ends up being right. #speaker_self
It’s so annoying! Like I’m being pushed for something that I can’t really argue against.  #speaker_left
Hmm.. do you want a scholarship?  #speaker_self
Well.. it’ll be really cool to study overseas.  #speaker_left
Right? You get to do that, and have a career set and planned.  #speaker_left
Would you still go overseas without a scholarship? #speaker_self
Maybe.. I think we could, but it really is so expensive.   #speaker_left
Oh boy. Med school is expensive too. #inner_monologue
Chloe, should I be looking at scholarships too? #speaker_self
#speaker_left_image:cha_nadia_chloe_school_concerned.png
I didn’t know you wanted to go overseas too! #speaker_left
Oh no, no, I’m probably going to stick to the local unis. But hoping to apply for.. med school. #speaker_self
Really? I guess I can see that happening.. #speaker_left
You think so?  #speaker_self
Yeah, sure. It is pricey though, I heard it’s like three times more than other degrees. #speaker_left
Three?? #speaker_self
Oh boy, and you’re also going to be doing more years in school too. The unis have scholarships too, you can try for that?  #speaker_left
+ I'll look into it. [] #speaker_self
    And financial assistance, I think.  #speaker_left
    Right, that too.  #speaker_self
+ [Sounds competitive] Getting a scholarship on top of getting into med school? Sounds impossible... #speaker_self
    Oh if not scholarship, I think there’s financial assistance too. #speaker_left
- You know, and if somehow med school doesn’t work out.. I mean, they shortlist more than 1,000 applicants, then only offer less than 300 spots.  #speaker_left
There’s always.. nursing? #speaker_left
That’s not the same thing. #inner_monologue
Isn’t your cousin in nursing? That’s good right? #speaker_left
Yeah she is, but not through NUS. #speaker_self
Ah, right..  #speaker_left
Azlin worked HARD for her diploma.  #inner_monologue
#speaker_left_image:cha_nadia_chloe_school_normal.png
Well I guess we’re both on the same track. #speaker_left
What’s that? #speaker_self
Making life more difficult for ourselves. #speaker_left
-> nadia_2_3c

=== nadia_2_3c ===
#ui:scene
#background:bg_nadia_library.jpg
#speaker_left_image:cha_nadia_chloe_school_sad.png
#speaker_left_name:Chloe
Gee, thanks. Well.. scholarships are competitive, but so are you! Your essays are laser sharp.  #speaker_self
It’s not enough. Just wish I had a bit of an advantage.. Anyway, you won’t understand.  #speaker_left
Come on, try me. #speaker_self
#speaker_left_image:cha_nadia_chloe_school_normal.png
Well, it’s different for you. You’ll probably have an easier time getting a scholarship too.  #speaker_left
I really don’t think so. #speaker_self
Nad, it’s easier for you to get into things.  #speaker_left
+ [Right.] -> nadia_2_3d
+ [What do you mean by that?] -> nadia_2_3e

=== nadia_2_3d ===
Right. #speaker_self
VAR nadia_2_confrontchloe = false
Argh it’s so unfair. You fill the "quota", you know?  #speaker_left
No, I don’t know, Chloe. #inner_monologue
#speaker_left_image:cha_nadia_chloe_school_concerned.png
It's like HDB quotas, somehow there's always space for Malay or Indian. You're so lucky you're Malay.    #speaker_left
That’s not how things work.. right?? #inner_monologue
// #speaker_left_image:pixel.png
// #background:new_message_notification.jpg
// A message from Gavin.
// #ui:whatsapp
// #background:whatsapp.png
// #chat_group_title:Gavin
// #chat_group_image:ico_nadia_gavin.png
// #speaker_1_name:Gavin
// Hey wru? #speaker_1
// My church friend is down to meet this Sat. What say u? We can properly get coffee this time :)  #speaker_1
// #ui:scene
// #background:bg_nadia_library.jpg
// #speaker_left_image:cha_nadia_chloe.png
// #speaker_left_name:Chloe
I can’t do this right now.  I need to escape this conversation somehow. #inner_monologue
Yeah. I’m sure you’ll be fine.  #speaker_self
Oops, I have to go home early.  #speaker_self
My dad just texted, says he needs me for something. You’re ok right? #speaker_self
#speaker_left_image:cha_nadia_chloe_school_sad.png
Yeah, sure...  #speaker_left
#ui:notification
#background:ui_nadia_message.jpg
Abah: Huhu terjumpa (found) photo of Nadia when she was small # message

-> nadia_2_3d_whatsapp

=== nadia_2_3d_whatsapp ===
#knot:nadia_2_3d_whatsapp
#ui:whatsapp
#background:whatsapp.png
#chat_group_title:Family Chatgroup
#chat_group_image:ico_nadia_family.png
#speaker_1_name:Abah
#speaker_2_name:Azlin
#speaker_3_name:Cik Lina (aunt)
#speaker_4_name:Raihan (cousin)
Huhu terjumpa (found) photo of Nadia when she was small 🌱👶🐛🦋 #speaker_1
bg_nadia_childdoctor.jpg #speaker_1 #image
Haha so serious this girl #speaker_2
From young my girl already have ambition! Study hard and achieve your dreams. 🤲  #speaker_1
Insyaallah, you will become a doctor and then you can really help people. It is the MOST noble profession. Any hospital would be lucky to have you! #speaker_1
Alahai, cute nye  #speaker_3
haha i remember that teddy bear  #speaker_4
#ui:scene
#background:bg_nadia_library.jpg
Woah, where did that speech come from? #inner_monologue
Azlin’s in this chat, I hope she doesn’t feel weird about what Abah said.  #inner_monologue
It’s like he forgot we already have someone in the family who works in a hospital and helps people...  #inner_monologue
Actually... I really need to talk to Azlin and process what Chloe just said. I better text her: #inner_monologue
+ [I can’t believe what Chloe just said. TO MY FACE!] -> nadia_2_3d1
+ [Hey Kak, are you off today?] -> nadia_2_3d2

=== nadia_2_3d1 ===
#knot:nadia_2_3d1
#ui:whatsapp
#background:whatsapp.png
#chat_group_title:Azlin
#chat_group_image:ico_nadia_azlin.png
#speaker_1_name:Azlin
Wow. I can’t believe what my friend just said to me #speaker_self
To my face!! #speaker_self
who?? #speaker_1
Argh too long to type la, can we meet later please  #speaker_self
Geram (makes me angry) to the max  #speaker_self
fuyoo yeah sure sure 8pm? usual spot. #speaker_1
-> nadia_2_4_narration

=== nadia_2_3d2 ===
#knot:nadia_2_3d2
#ui:whatsapp
#background:whatsapp.png
#chat_group_title:Azlin
#chat_group_image:ico_nadia_azlin.png
#speaker_1_name:Azlin
Kak are you off today? #speaker_self
yap, why? #speaker_1
Argh too long to type. Can we meet later please  #speaker_self
yeah sure sure 8pm? usual spot. #speaker_1
is this pasal (about) Gavin #speaker_1
No. Worse. #speaker_self
wow. later we get ice cream from the mama shop k. cool you down a bit #speaker_1
-> nadia_2_4_narration

=== nadia_2_3e ===
#knot:nadia_2_3e
#ui:scene
#background:bg_nadia_library.jpg
#speaker_left_image:cha_nadia_chloe_school_concerned.png
#speaker_left_name:Chloe
~ nadia_2_confrontchloe = true
What do you mean by that? #speaker_self
Don’t make me say it.. it’s like HDB quota ok. It’s always easier if you’re Malay or Indian. #speaker_left
Are you sure? How do you even know this? #speaker_self
Right, you don’t have any siblings... my sister is trying to BTO and it’s crazy hard.  #speaker_left
Especially if you want to get a good location. It’s damn competitive! You’re so lucky you’re Malay.  #speaker_left
If you’re not Chinese, you can just swoop right in. Somehow there’s always space in the quota for Malay or Indian. #speaker_left
Chloe, I don’t think it works that way. I have family and older cousins who live in HDBs. I’m pretty sure they don’t have an easy time.    #speaker_self  
Why am I getting angry? Maybe I need to find an excuse to walk away. #inner_monologue
#speaker_left_image:pixel.png

#ui:notification
#background:ui_nadia_message.jpg
Abah: Huhu terjumpa (found) photo of Nadia when she was small # message
#ui:scene
#background:bg_nadia_library.jpg
#speaker_left_image:cha_nadia_chloe_school_concerned.png
#speaker_left_name:Chloe
Anyway, I need to take this. #speaker_self

-> nadia_2_3e_whatsapp

=== nadia_2_3e_whatsapp ===
#knot:nadia_2_3e_whatsapp
#ui:whatsapp
#background:whatsapp.png
#chat_group_title:Family Chatgroup
#chat_group_image:ico_nadia_family.png
#speaker_1_name:Abah
#speaker_2_name:Azlin
#speaker_3_name:Cik Lina (aunt)
#speaker_4_name:Raihan (cousin)
Huhu terjumpa (found) photo of Nadia when she was small 🌱👶🐛🦋 #speaker_1
bg_nadia_childdoctor.jpg #speaker_1 #image
Haha so serious this girl #speaker_2
From young my girl already have ambition! Study hard and achieve your dreams. 🤲  #speaker_1
Insyaallah, you will become a doctor and then you can really help people. It is the MOST noble profession. Any hospital would be lucky to have you! #speaker_1
Alahai, cute nye  #speaker_3
haha i remember that teddy bear  #speaker_4
#ui:scene
#background:bg_nadia_library.jpg
Woah, where did that speech come from? #inner_monologue
+ [Reply to the group chat and thank your dad] 
    #ui:whatsapp
    #background:whatsapp.png
    #chat_group_title:Family Chatgroup
    #chat_group_image:ico_nadia_family.png
    #speaker_1_name:Abah
    #speaker_2_name:Azlin
    #speaker_3_name:Cik Lina (aunt)
    #speaker_4_name:Raihan (cousin)
    Thank you Abah. I will try my best 🙏 #speaker_self
    -> nadia_2_3e1
+ [Ignore group chat, chat with Azlin instead.] -> nadia_2_3e2

===  nadia_2_3e1 ===

#ui:notification
#background:ui_nadia_message.jpg
Azlin: Haha kembang (flower) seh # message

#ui:whatsapp
#background:whatsapp.png
#chat_group_title:Azlin
#chat_group_image:ico_nadia_azlin.png
#speaker_1_name:Azlin
Haha kembang (flower blooming) seh #speaker_1
Wait what do you meannn #speaker_self
kembang, like you know, your head getting all big 🙃 oi i didn’t know your malay was this bad hahaha #speaker_1
I KNOW what kembang is, and I’m not okayy 😑 It’s just my dad la, he can be very over #speaker_self
lol memang (of course). anyway joking only. u really are working for it. #speaker_1
I hope so.. #speaker_self
don’t be like that! i really was just teasing a bit. u ok tak? #speaker_1
Tough day. Some really weird conversations. Wanna hang out today? #speaker_self
always, for my fave cuz. #speaker_1
-> nadia_2_4_narration

===  nadia_2_3e2 ===
#ui:whatsapp
#background:whatsapp.png
#chat_group_title:Azlin
#chat_group_image:ico_nadia_azlin.png
#speaker_1_name:Azlin
Omg 😓 #speaker_self
Why is my dad being so drama on wa #speaker_self
best what, your abah so proud of you #speaker_1
Sorry he’s like that. #speaker_self
tak apalah (no issue) #speaker_1
He really cannot maintain seh. He doesn’t get it la!  #speaker_self
aiya, it’s just a cute photo. i think everyone will focus on that. and not his monologue. haha  #speaker_1
“and then you can really help people” 😤 Like only doctors do that?? Hospitals only run on doctors?  #speaker_self
nothing I haven’t heard from him before 🙃 #speaker_1
It’s not fair tho #speaker_self
it’s fine 👻 eh i’m off today. potong ice cream session this evening? #speaker_1
Yes plssss. You won’t believe what this friend said to me today! #speaker_self
fuyoo. k, text you later? usual spot. #speaker_1
-> nadia_2_4_narration

=== nadia_2_4_narration ===
#knot:nadia_2_4_narration
#ui:narrator
#background:bg_nadia_playgroundnight.jpg
8.45pm, at a playground bench. 
This has been our hangout spot for ages, ever since Azlin moved into the same neighbourhood as me.

-> nadia_2_4

=== nadia_2_4 ===
#knot:nadia_2_4
#ui:scene
#background:bg_nadia_playgroundnight.jpg
#speaker_right_image:cha_nadia_azlin_happy.png
#speaker_right_name:Azlin
So.. are you sure this is not about Gavin? #speaker_right
No, it’s really not. #speaker_self
#speaker_right_image:cha_nadia_azlin_teasing.png 
Sorry if I gave you a hard time that day when I bumped into you all. Hope I didn’t make it awkward.  #speaker_right
Don’t bluff, you were enjoying yourself.  #speaker_self
Ok I was, just a little. He seems nice, although when he - #speaker_right
- tried to salam you! I died a bit.  #speaker_self
But it was kinda cute. Clearly he knows who he needs to impress. Or try to. Smart guy.  #speaker_right
It wasn’t that awkward right? I explained to him afterwards, and it’s so weird to suddenly need to even explain these — #speaker_self
STOP. You’re obsessing. It was fine. Also I thought you said this wasn’t about Gavin. #speaker_right
#speaker_right_image:cha_nadia_azlin_normal.png 
You’re right. I need to unclench. I wanted to talk to you about... #speaker_self
+ [...what Chloe said.] -> nadia_2_4a
+ [... what my dad said.] -> nadia_2_4b

=== nadia_2_4a ===
#ui:scene
#background:bg_nadia_playgroundnight.jpg
#speaker_right_image:cha_nadia_azlin_normal.png
#speaker_right_name:Azlin
..what Chloe said. Like it doesn’t even make sense!  #speaker_self
VAR chapter_2_ending = 1
I couldn’t even say anything back you know, I was stunned - like has she always felt this way? Is that really how she thinks? #speaker_self
#speaker_right_image:cha_nadia_azlin_concerned.png
Ok ok, one thing at a time. This Chloe person, your volleyball friend? #speaker_right
(Sigh) Hockey.  #speaker_self 
And this fight was about? #speaker_right
Well she’s been obsessing about scholarships and this afternoon, she was really ticked off by something. I was just trying to talk to her.  #speaker_self
Chloe said.. she thinks that I get accepted into things. Because I’m Malay. That I would fill their quota, so that’s why they would want me.  #speaker_self
#speaker_right_image:cha_nadia_azlin_confused.png
Wait, who’s “they”? #speaker_right
I don’t even know! But Chloe thinks that I have it easier, that it’ll be easier for me to get into things, and that -  #speaker_self
- she has to work harder than you. That’s some crazy shit.  #speaker_right
It is, right? #speaker_self
Ya it is. I’m sorry Nad, but your friend - does she even live in the real world? Nonsense seh! #speaker_right
That’s what I couldn’t believe! She’s so level-headed, reasonable, I didn’t think she was so - #speaker_self
- sheltered?  #speaker_right
+ [I didn’t think she would see race.] Not that. I didn’t think.. she would see race. #speaker_self
    And I’m thinking: is this how she’s seen me all along? #speaker_self
+ [I thought we were better friends than this.] No, it’s just.. we’re such good friends. #speaker_self
    She knows we both work super hard to get where we are. How can she think I have it easier?  #speaker_self
- Does she also think we don’t have to pay school fees? Or that we get special treatment? #speaker_right
Do people still think that!  #speaker_self
I was digging around before I did my nursing diploma. Betul ke (is it true)? What is this that people who are never Malay always like to say? #speaker_right
#speaker_right_image:cha_nadia_azlin_normal.png
Isn’t it just one of those things taxi uncles like to complain about.  #speaker_self
I found out.. It’s half-true, which is always the problem kan.  #speaker_right
That doesn’t sound good.  #speaker_self
We don’t get free education. That rumour is just rubbish. BUT. There is a government subsidy.. if you’re Malay, and trying to get diploma or degree.  #speaker_right
How come we get subsidy? #speaker_self
I know kan (right). Asked myself that also, and then I saw the max household income if you nak (want to) qualify. You know how much? $2000.  #speaker_right
That’s not - #speaker_self
- ya, is not a lot. Like if you qualify kan, that means there wasn’t money floating around to anyhow get a diploma.   #speaker_right
#speaker_right_image:cha_nadia_azlin_confused.png
But still.. why this special subsidy? And just for us? Because we’re what, native to Singapore? #speaker_self
No, Nadia. Because more of us, more Malay people, are poor.  #speaker_right
(Confused) That isn’t - I don’t think.. But we’re not poor because we’re Malay. #speaker_self
Ya obviously. You, me and the next door neighbour also know that.  #speaker_right
Doesn’t change the fact that when there’s a charity drive, and got photos on Facebook, the faces all Melayu.  #speaker_right
And when there’s somehow a success story -   #speaker_self
- then all over Berita Harian (the news). Masyarakat Melayu boleh maju (Malay people can succeed)! Haha, might be you next time. #speaker_right
Argh, I hope not.. I want to be a doctor. But I don’t want it to be a big deal because I’m Malay. Suddenly becoming a poster.  #speaker_self
It’s all the stories, with the money problems, the drug problems. Then, when there’s an achievement.. #speaker_self
They shout it out to the whole kampong. Look what this person managed to do! You can do it too!! #speaker_right
You managed also though. That says something kan? Put in the effort, work hard, and things get better.  #speaker_self
We’re all trying. It’s nothing special.  #speaker_right
+ [Maybe some aren't trying hard enough]  Maybe some people don’t want to try hard enough.  #speaker_self
    What? #speaker_right
    Why are so many of us poor, until government give us special treatment? How come?  #speaker_self
+ [Then why are outcomes different?]    If we’re all trying, then why are so many of us still poor?  #speaker_self
- I don’t know. But once you’re not doing well, with money problems, it’s harder to get out.  #speaker_right
But it’s also personal decisions, right? Maybe it’s other people and their decision-making that’s.. not good.  #speaker_self
Maybe always living beyond their means. Maybe a lot of them don’t know how to be responsible.  #speaker_self
Who are you talking about? #speaker_right
No one.. But you know, Cik Lina’s family - I know they have money problems, but when I see them, phones all macam baru (quite new) je. #speaker_self
New phones, different models.  #speaker_self
#speaker_right_image:cha_nadia_azlin_angry.png
That’s not our business, Nad.  #speaker_right
But it’s true though! Every Hari Raya also must change curtains.  #speaker_self
Your abah telling you these things? #speaker_right
It’s just something I noticed. #speaker_self
Ya something you noticed. Doesn’t mean you understand. How people spend their money is not our business. #speaker_right
Not if that’s why they keep being stuck! #speaker_self
#speaker_right_image:cha_nadia_azlin_confused.png
Let me tell you something. Those phones kan, it’s all secondhand okay.  #speaker_right
It’s the thing that they can have and feel like everyone else. Have you ever met up with them? #speaker_right
No, I’ve been busy.. #speaker_self
Right. When you do, you meet them at MRT station. Because they’re on top-up, not phone plan.  #speaker_right
#speaker_right_image:cha_nadia_azlin_normal.png
They want to use public wifi. They all work part-time. Do you? #speaker_right
I’m not, but that’s also why I’m not spending money anyhow.  #speaker_self
And your coffee latte or bubble tea all whatever, that one come from where? Pocket money from your abah kan.  #speaker_right
School fees? Next year when you go uni? #speaker_right
I can take my own bank loan - #speaker_self
... but you don’t have to. That’s the difference. They have “new” phones, but at home no internet. You know how difficult that makes school and work?  #speaker_right
+ [I get it] Okay, I get it. #speaker_self
    Oh, really? You do? #speaker_right
+ [I know my family has it easier.]  I know things are.. easier for my family. #speaker_self
    Your family can afford to make decisions easier. You don’t have to calculate many small decisions just to make one big one.  #speaker_right
- You don’t think I want to get a degree like you? I see my colleagues, they all can climb higher with degree.  #speaker_right
You thinking of doing degree next time? #speaker_self
How to? Now my income finally dah stable, if I go back to nursing school - who’s going to pay the house bills?  #speaker_right
See how that works? Because I’m being responsible, right? #speaker_right
Kak..  #speaker_self
#speaker_right_image:cha_nadia_azlin_confused.png
When you don’t have much, it is so much more difficult to step up.  #speaker_right
Kak, I understand - #speaker_self
... no, just because you’re Malay doesn’t mean you understand. You and your father, always thinking you’re so different from the rest of us. #speaker_right
I don’t think I’m different.. #speaker_self
Sorry - not different. You think you’re better than the rest of us.  #speaker_right
That’s not true! #speaker_self
#speaker_right_image:cha_nadia_azlin_normal.png
Maybe. I’m gonna go. I’ll see you around.  #speaker_right

-> nadia_2_reflection

=== nadia_2_4b ===
#ui:scene
#background:bg_nadia_playgroundnight.jpg
#speaker_right_image:cha_nadia_azlin_normal.png
#speaker_right_name:Azlin
~ chapter_2_ending = 2
..what my dad said. He really open mouth only.  #speaker_self
It’s like that. Haha remember that time when he said - anyone can become a nurse.   #speaker_right
#speaker_right_image:cha_nadia_azlin_concerned.png
Like easy only. Take blood pressure only, help people go toilet only.   #speaker_right
He doesn’t understand la.  #speaker_self
It’s fine. I just close eyes, close ears. I’m happy as long as I get to work.  #speaker_right
How’s your mom? She still wants you to kahwin and quit? #speaker_self
Ya, she still makes noise. Say I already with my boyfriend so long, not good to drag and drag.   #speaker_right
I just diam and make sure I don't complain about work in front of her.   #speaker_right
She won’t understand. Think it’s better to just get married, have kids. Then like magic, all the problems disappear.  #speaker_right
Maybe in her time. #speaker_self
But it’s not anymore. I like my work. I don’t want to be just a housewife.   #speaker_right
Although right, yesterday, I almost told her about this patient. Problem seh! Everything busy already, then want to create trouble.   #speaker_right
What happened? #speaker_self
#speaker_right_image:cha_nadia_azlin_confused.png
Wanted to change nurses. Patient didn’t want my colleague to touch her. Because my colleague Indian.   #speaker_right
What! And you had to follow the request? #speaker_self
Ya la, patient still need medical care. I had to step in just to get the job done.   #speaker_right
My colleague so upset seh. Want to maintain my own face also difficult. Next time when you’re a doctor, you also must learn.   #speaker_right
Arghhh, how do you do it? When people are rude, I really cannot! Just now already with Chloe, I wanted to just let go seh.  #speaker_self
What happened? You both fought?   #speaker_right
She was telling me... get this. She was telling me it is easier for me to get into things.  #speaker_self
Uni applications, scholarships. Because I’m Malay. That there’s some magic quota I help fill.  #speaker_self
People still think that way? All through poly I heard that. At least she told you to your face.   #speaker_right
In my time, everyone just paggro whisper behind my back. And when you do well, people low-key surprised.    #speaker_right
Sounds like my Maths teacher. Saying I’m good at the subject. “Very rare,” she said.   #speaker_self
+ How you tahan (tolerate) this kind of thing? [] #speaker_self
    You just hold your breath and smile. Shield up. Ignore their nonsense. Waste time only to get so worked up.   #speaker_right
    But so geram (angry)! For Chloe to think I will have an easier time, that she has to work harder than me - when every day, I feel a bit... lost.  #speaker_self
    Gavin and Chloe all have family and friends who went through JC, scholarships, uni. They know what’s coming up. I don’t, not really.  #speaker_self
    Sorry I can’t help there.   #speaker_right
    I don’t mean it that way! Without you around, I would feel even more alone.  #speaker_self
    With all the stories from your work, at least I know I’m not really imagining things.  #speaker_self
+ [What should I do?]
    But that’s my Maths teacher. Chloe is my friend. I didn’t expect this from her.  #speaker_self
    Now I don’t know what to do about it. Should I talk to her about it more? #speaker_self
    Uh, that one you decide. I wouldn’t bother.   #speaker_right
    Sorry, I know she’s your friend, I’m just not surprised.  #speaker_right
    No you’re right, I’ll have to think about it on my own.  #speaker_self
    I’m just glad you’re here or I would feel even more alone. With all the stories from your work, at least I know I’m not imagining things. #speaker_self
- It’s funny right. You can work harder than everyone else, but you slip up one time, or giving yourself a break, and in front of the wrong person -  #speaker_right
... they will think it’s because she’s lazy, or not very smart.  #speaker_self
Because she’s Malay.   #speaker_right
Gavin told me some time ago.. He told his mum I hadn’t been in school and she said, “wah JC still can like that?”  #speaker_self
Her first thought was that I was anyhow skipping classes, not that I was sick.  #speaker_self
Didn’t he say anything?  #speaker_right
I don’t know. This was very long ago, maybe he didn’t know what to make of it. She also told him to spend less time with me.  #speaker_self
Seriously?  #speaker_right
Ya. He said it like it’s funny, cos his mum was concerned about me being a bad influence and not being serious about school. #speaker_self
Whose notes is her son using?? #speaker_self
Clearly has not met you.   #speaker_right
I don’t even want to think about it. Or whatever Chloe might actually think of me.  #speaker_self
What were you guys fighting about?  #speaker_right
Well, it wasn’t really a fight-fight. I just left the conversation halfway. I felt so uneasy about it.  #speaker_self
+ ..are there really HDB racial quotas? []  #speaker_self 
    #speaker_right_image:cha_nadia_azlin_teasing.png
    Wow you JC kids really think far ahead ah.  #speaker_right
    No, no way, not like that. It’s Chloe, she said I can get the scholarship easier just like how Malays get HDB ballots easier.  #speaker_self
    #speaker_right_image:cha_nadia_azlin_confused.png
    Is that true? But Cik Lina had a hard time when she was applying for a flat.  #speaker_self
+ [What she said was so wrong] 
    It felt like.. Whatever I do from here, will just be undermined, right? Because I’m Malay, so I fill the quota.   #speaker_self
    Yup, can’t win. #speaker_right
    And the HDB thing -- if it was really so easy, why did Cik Lina have a hard time when she was applying for a flat?  #speaker_self
- It’s hard for everyone la. People always think just because there’s a quota to buy a flat, that means we can always get any flat.   #speaker_right
People always want what they can’t have.   #speaker_right
#speaker_right_image:cha_nadia_azlin_normal.png
They don’t see that other side. Next time if you need to sell your flat, you can also only sell to a very small group of people.   #speaker_right
You can never get a good price because there’s not enough people to make a demand.   #speaker_right
But if you can buy and sell from anyone, then you can have more people who are willing to compete to give you a better price.  #speaker_right
That sounds very complicated. #speaker_self
Aiya, you don’t worry about this now. Just focus on getting into med school.   #speaker_right
Just remember that people are always looking for excuses to blame others, especially if they feel threatened.   #speaker_right
Don’t give them that chance, keep your head down.   #speaker_right
But if they’re wrong, shouldn't I correct them? It’s not right to let things slide, when something isn’t fair or they have the wrong idea.  #speaker_self
Like when I said nothing and took over my colleague’s racist patient? Sometimes you just get on with it.   #speaker_right
That’s different, that was out of your control. #speaker_self
Did Gavin say anything to his mum when she thought you were a bad influence?  #speaker_right
I don’t know. #speaker_self
You remind me of me when I was younger. But you learn la Nads. The world doesn't care how much you fight.   #speaker_right
It just wants you quiet and compliant. Penat (tired) you know? Focus on your A’s. Maybe Gavin is nice, but... save yourself the heartache.  #speaker_right

-> nadia_2_reflection



=== nadia_2_reflection ===
#knot:nadia_2_reflection
#ui:chapter_reflection
#reflection_id:3
Reflection 3


-> nadia_3_intro






















=== nadia_3_intro ===
#knot:nadia_3_intro
#ui:narrator
#background:bg_nadia_intro.jpg
What Azlin said last night really made me think... 
About myself, about Chloe.... and about Gavin.
But I haven't had enough time to process all of that. 
All I want to think about are eukaryotic cells, testing for triglycerides, and surviving my A Levels.
But something tells me that I need to settle the doubts in my head before I can get to my textbooks.
~ chapter_id = 3
CHAPTER {chapter_id} #title
Fork in the Road #title

VAR nadia_3_relationship = 0
{nadia_2_hidewithgavin: 
    ~ nadia_3_relationship = 1
 - else:
   ~ nadia_3_relationship = 0 
    }
{chapter_2_ending:
- 1 : ~ nadia_3_relationship +=0
- 2 : ~ nadia_3_relationship +=1
}    


-> nadia_3_1_narration 


=== nadia_3_1_narration ===
#knot:nadia_3_1_narration
#ui:narrator
#background:bg_nadia_bedroom.jpg
    // Relationship: {nadia_3_relationship} // remove 
I'm glad today is not a school day.
I think I need to lay low for a bit, and maybe see Chloe a bit less.
I want to just stay home and chill - but I have a nagging feeling like I'm supposed to have plans ... that I can't quite remember.
Oh crap - I think I was supposed to reply to Gavin on something!

// FOR DEBUG ONLY

// + [chapter 3 ending 1] -> chapter_3_ending_1
// + [chapter 3 ending 2] -> chapter_3_ending_2
// + [continue story] 
-> nadia_3_1


=== nadia_3_1 ===
#knot:nadia_3_1
#ui:whatsapp
#background:whatsapp.png
#chat_group_title:Gavin
#chat_group_image:ico_nadia_gavin.png
#speaker_1_name:Gavin
Hey u. Things ok? #speaker_1
Just checking in.. not sure if you got my texts last night 🙃 #speaker_1
#ui:scene
#background:bg_nadia_bedroom.jpg
Did I really forget to reply him completely? Oh crap.  #inner_monologue
#ui:whatsapp
#background:whatsapp.png
#chat_group_title:Gavin
#chat_group_image:ico_nadia_gavin.png
#speaker_1_name:Gavin
Hey hey! 🙏🙏🙏 sorry, was out talking with my cousin till late. I’m ok.. #speaker_self
Sure? Kinda disappeared after school, thought something happened. You can tell me you know.  #speaker_1
+ [Brush it off] -> nadia_3_1a
+ [Open up, a little] -> nadia_3_1b


=== nadia_3_1a ===
    It was nothing, just tired #speaker_self
    ~ nadia_3_relationship -= 1
    Okayyy. You sound pretty bummed tho #speaker_1
    Do I? #speaker_self
    Yeah, a bit. Would you like.. 🧋? #speaker_1
    Haaa no need la #speaker_self
    Or.. 🍪🍦🍰🍕? That’s a whole menu for your selection. #speaker_1
    lol seriously, no need #speaker_self
    Come on Nad, *something* is bothering you. I know it. It’s killing me #speaker_1
    #ui:scene
    #background:bg_nadia_bedroom.jpg 
    Can he just drop it, please. I just want some space to process things...  #inner_monologue
    #ui:whatsapp
    #background:whatsapp.png
    #chat_group_title:Gavin
    #chat_group_image:ico_nadia_gavin.png
    #speaker_1_name:Gavin 
    Well? #speaker_1
    Geez stop examining me! You’re making me feel like I’m under a microscope. #speaker_self 
    Ok ok  #speaker_1
    Do you still wanna meet my church friends this weekend? To ask about med school or whatever. #speaker_1
    
    + [Hesitate]
    // ~ nadia_3_relationship += 0
    Might be tough.. #speaker_self
    You know what? It’s fine, Nad.  #speaker_1
    Don’t know why I thought this was a good idea in the first place. #speaker_1
    #ui:scene
    #background:bg_nadia_bedroom.jpg 
    What the hell? #inner_monologue
    #ui:whatsapp
    #background:whatsapp.png
    #chat_group_title:Gavin
    #chat_group_image:ico_nadia_gavin.png
    #speaker_1_name:Gavin 
    I really like you. But I don’t understand you sometimes.  #speaker_1
    Pretty sure I’ve been myself this whole while Gavin  #speaker_self
    You sure? You’re holding back on something. It’s weird man #speaker_1
    Yeah well not everything’s about you #speaker_self
    It’s not even about me! Why are you always bottling shit up #speaker_1
    And not everyone needs to tell the whole world what’s going on in their head.  #speaker_self
    Is that really what you think of me #speaker_1
    I’m sorry I didn’t mean that #speaker_self
    I just wanted to help you Nad. Always have. #speaker_1
    I know.  #speaker_self
    That’s what you always say. #speaker_1

    + [Decline]
    I don’t think so… it might be tough.. #speaker_self
    VAR nadia_3_gavinchoice = "no" // change this to later
    Really? Am gonna be out whole day with them tmr, just join us whenever la #speaker_1
    No as in.. I’m just tired #speaker_self
    😕 #speaker_1
    You’re doing it again. Holding back.  #speaker_1
    I know I know, sorry  #speaker_self
    You sure you don’t wanna talk about it? #speaker_1
    Yeah.. just have a lot going on in my head right now. It’s not your fault.  #speaker_self
    “It’s not you, it’s me.” #speaker_1
    #ui:scene
    #background:bg_nadia_bedroom.jpg 
    What? #inner_monologue
    #ui:whatsapp
    #background:whatsapp.png
    #chat_group_title:Gavin
    #chat_group_image:ico_nadia_gavin.png
    #speaker_1_name:Gavin 
    Just wanted to beat you to it.  #speaker_1
    Dammit Gavin Tan Weiliang #speaker_self
    So was I right #speaker_1
    I’m really really really sorry.  #speaker_self
    My head is a mess rn. I don’t want to pull the both of us through it.  #speaker_self
    It isn’t fair. I don’t want to ruin what we have.  #speaker_self
    Dammit Nadia Rahim #speaker_1
- I just... I really want to know what’s in your head right now. #speaker_1
    
+ Sigh. Can we do this another time? [] #speaker_self
    Nad, I know you. There won’t ever be a good time to chat about this.  #speaker_1
+ Aiyoh, ok ok. [] #speaker_self
    Thanks. Doing it now is better than doing it never.  #speaker_1
- So, what’s on your mind? #speaker_1
 
Sigh. I don’t know. So many things.   #speaker_self
Ok, let’s start somewhere, then move step by step until we reach an end. Simple. #speaker_1
You try to make everything simple... but I don’t think this one can be simplified  #speaker_self
I’ve just been.. Thinking a lot.   #speaker_self
About what it means to be me, what it means to be Malay Muslim, and what it would mean to be in a relationship with someone who is not Mulsim.  #speaker_self
... are you considering being in a relationship with someone who is not Muslim? Is he a dashing young aspiring psychologist? 😝  #speaker_1
Actually he’s this idiot who keeps referring to himself in the third person.   #speaker_self
I’m sure he is thinking about the same thing with you. He would be quite happy to officially call her his girlfriend. #speaker_1
Is he? Does he understand what it entails? I mean, this is really a big deal and I don’t think he realises that.   #speaker_self
I don’t know how my family would react to such news.  #speaker_self
So it’s already “news” eh?  #speaker_1
It’s fake news for now. 😡  #speaker_self
😔 #speaker_1
The chat I had with Azlin gave me all sorts of feelings about being Malay  #speaker_self
I’m not ashamed of being Malay, like NO WAY.   #speaker_self
Uh huh #speaker_1
👉 No Judgment Zone #speaker_1
But I recognise that my experience is .. different. My family is well off. I go to a Christian JC.   #speaker_self
I don’t know if I know what it’s like for others in my own community.   #speaker_self
Then THAT makes me feel like a lousy Malay person. Can’t even relate to other Malays who are doing less-great.   #speaker_self
Sometimes it’s my own cousin. As if I’m so different from them. But I’m not...   #speaker_self
You’re also your own person tho, a whole individual.  #speaker_1
You’re also being a bit hard on yourself. Just a bit 👀 #speaker_1
Maybe. And then there’s this whole thing about me liking that idiot who shall not be named.  #speaker_self
He Who Shall Not Be Named? Ok, I can roll with  that. #speaker_1
Azlin teased me about “him”, but she had a serious point to make as well.   #speaker_self
Like, where does this go? Have I thought this through? Is this the right time to be doing this?    #speaker_self
It’s not just about changing food preferences and using the right chopsticks, or not hugging in public…   #speaker_self
I mean, there’s so much more involved if this gets serious.   #speaker_self
And… I am not sure I want to think about all that now. Actually, I don’t know if I want to think about this ever.   #speaker_self
I... I don’t know. I’m sorry...  #speaker_self
Hey, slow down there. Last I checked we’re both still teenagers. #speaker_1
I know but...   #speaker_self
+ Aren’t you worried as well?  [] #speaker_self
    Haha, I always prefer to make things simpler.  #speaker_1
    Do you really think that this is a simple decision? #speaker_self
    That’s not what I meant. I guess this must be hard for you. Help me understand why? #speaker_1

+ How are you so chill about this?! [] #speaker_self
    I guess I just don’t see why it has to be so difficult or complex.  #speaker_1
    Boy likes girl. #speaker_1
    Girl likes boy, I think. #speaker_1
    QED. Right? #speaker_1
    lol you definitely prefer to make things simpler. But... #speaker_self
- I don’t want us to sneak around and hide from others forever. #speaker_self
Bumping into Azlin was already scary enough - can you imagine bumping into my parents? Or yours? #speaker_self
I think my dad saw us in school once and I quickly {nadia_liar > 1: lied to him | changed the topic}. #speaker_self
I don’t want to lie or hide all the time, esp to the people I care about. #speaker_self
That day at the mall with you was nice… but I also felt people staring at us, as though I had an extra head or something. It didn’t feel comfortable sometimes. #speaker_self
I didn’t notice that. You should have said something Nad - we could have disappeared into a cinema even earlier!
Is hiding always going to be the solution? #speaker_self
I mean, are you going to tell your mom? How would she react to me being Muslim? #speaker_self
I have told her about you! She knows how brilliant you are! #speaker_1
Not just that I’m your schoolmate - you know what I mean. #speaker_self
Oh. Yeah. we can figure it out though, together. One step at a time? #speaker_1
Sigh, we could. But then ten steps later, we would have to make a very hard choice.  #speaker_self
So we can enjoy 9 steps together first, then get to that later! #speaker_1
No, the final step is where we realise this relationship has an “expiry date”...  #speaker_self
There are many ways this could play out, and almost all of them lead to heartbreak, probably for me.  #speaker_self
What do you mean? #speaker_1
Gavin, I’m Muslim.  #speaker_self
Haha we went through this, and I’m Chinese Christian. But that doesn’t matter to me. #speaker_1
Sigh... if you’re serious, at some point, you’ll need to think about whether you’re ready to convert.  #speaker_self
My religion is important to me, but I know it’s important to you too. I don’t know if that has sunk in yet.  #speaker_self
And even if you want to, what will your parents think? I know how important church life is to you and them. And if you don’t convert, then what does it mean to me? #speaker_self
Oh. There must be a simpler way around this? #speaker_1
Oh Gavin. I wish life could always be the simple straight line you make it out to be, but religion, relationships, parents - these are not always… linear.  #speaker_self
So what does this mean? #speaker_1
It means that if boy likes girl, and girl likes boy, we’re in for a tough time ahead some day. And it may be more tough than we need in our lives right now.  #speaker_self
What if boy really likes girl? Does that change how tough things will be?  #speaker_1
He really is so sweet. #inner_monologue
#ui:scene
#background:bg_nadia_bedroom.jpg 
I wish I didn’t have to think about all these things. #inner_monologue
I know he’s right - we’re still young. #inner_monologue
But I’m scared that we’ll have to hide this from everybody, especially our parents. #inner_monologue
And wouldn’t he be happier with a girl he can hug in public, he can introduce to his mother without any concern or doubt, bring to Chinese New Year and not think about the food? #inner_monologue
Sigh. Am I imagining all these fears or are these real? #inner_monologue
#ui:whatsapp
#background:whatsapp.png
#chat_group_title:Gavin
#chat_group_image:ico_nadia_gavin.png
#speaker_1_name:Gavin 
Hmm....
+ [Maybe, let’s try]
    I still am really unsure about this Gavin.  #speaker_self
    Life is a process of taking small steps until you get somewhere, and one never knows where that somewhere is until one arrives. #speaker_1
    Haha suddenly the philosopher comes out. 🤓  #speaker_self
    I can be very smart in addition to kind and handsome, you know. #speaker_1
    🤮🤮🤮🤮🤮 #speaker_self
    You make me alternate between feeling happy and throwing up, you know.  #speaker_self
    Hopefully more happy than pukey. That’s my life goal. #speaker_1
    Ugh. You are an idiot you know. But let’s give this a try.  #speaker_self
    Step by step. Small steps. #speaker_self
    Tiny steps. Like a lizard. #speaker_1
    I hate lizards. #speaker_self
    I know. But they do have tiny steps. 🤪 #speaker_1
    Sigh. Thanks for listening to my rants. #speaker_self
    Anytime. It’s all part of being there for you 😊 #speaker_1
    ~ nadia_3_gavinchoice = "maybe"

+ [Sigh, I don’t think this will work]
    I’m not sure this will work Gav. #speaker_self
    Life is a process of taking small steps until you get somewhere, and one never knows where that somewhere is until one arrives.  #speaker_1
    Omg isn’t that from the motivational poster in our classroom? Idiot. #speaker_self
    Haha, I pay attention to the details, you know.   #speaker_1
    #ui:scene
    #background:bg_nadia_bedroom.jpg 
    I need him in my life as a friend who can listen to me rant and make me laugh. #inner_monologue
    But if we dated, and things didn’t work out, I would lose both a boyfriend and a best friend at once.  #inner_monologue
    I’m not ready for that. Sigh. I don’t know how to tell him this. #inner_monologue
    #ui:whatsapp
    #background:whatsapp.png
    #chat_group_title:Gavin
    #chat_group_image:ico_nadia_gavin.png
    #speaker_1_name:Gavin 
    So shall we take the first tiny step together?  #speaker_1
    Sigh. I wish I had your perpetual optimism, but my head is a mess rn and I don’t want to drag you down.  #speaker_self
    I don’t want to risk losing my best friend. #speaker_self
    “Best” friend? I was hoping for a different kind of prefix...  #speaker_1
    I know this isn’t what you wanted but I think staying friends makes more sense right now. #speaker_self
    😭😭  #speaker_1
    Is there any chance you’ll be charmed into changing your mind?  #speaker_1
    #ui:scene
    #background:bg_nadia_bedroom.jpg 
    Please don’t make this harder than it already is Gavin.  #inner_monologue
    My heart wants to say yes, but every responsible bone in my body is telling me to say no. #inner_monologue
    #ui:whatsapp
    #background:whatsapp.png
    #chat_group_title:Gavin
    #chat_group_image:ico_nadia_gavin.png
    #speaker_1_name:Gavin 
    I think...  #speaker_self
    I think we should stay friends.  #speaker_self
    I hope you can understand. I still want to hang out with you and everything. But anything more would just be too… complicated. #speaker_self
    😔  #speaker_1
    ~ nadia_3_gavinchoice = "no"
-  I’ll see you in school k?   #speaker_self
-> nadia_3_2_narration

=== nadia_3_1b ===
    Yeah. Left school in a bit of a mood 👀 you ever have those days? #speaker_self 
    ~ nadia_3_relationship += 1
    Guess so. Talking nonsense with you or whoever’s in the student council room helps  #speaker_1
    Haha wow - must mean you’re always in a bit of a weird mood.  #speaker_self 
    Yup, that’s the secret. Don’t tell anyone ok. Sooo what’s gg on with u 💩 #speaker_1
    #ui:scene
    #background:bg_nadia_bedroom.jpg 
    I don’t want to complain to him about Chloe. She’s a friend to us both.. #inner_monologue
    #ui:whatsapp
    #background:whatsapp.png
    #chat_group_title:Gavin
    #chat_group_image:ico_nadia_gavin.png
    #speaker_1_name:Gavin  
    I think Chloe was just super stressed yesterday and it rubbed off on me 🤷 that’s all  #speaker_self 
    Ah man, that happens. You guys didn’t fight again did you? #speaker_1
    No la #speaker_self 
    Good u met up with your cousin tho, shake off any bad vibes #speaker_1
    😐😐😐 wish that was the case #speaker_self 
    Noooooo 😩😩😩😩😩😩 #speaker_1
    Yaaaa it’s like the feng shui was all wrong yesterday with whoever I was talking to #speaker_self 
    Lucky we didn’t talk much yesterday then lol #speaker_1
    It really does feel like my fault sometimes, like recently..  #speaker_self 
    Really? #speaker_1
    Sigh I don’t *actually* like talking about race, or religion.  #speaker_self 
    But then it comes up and then catches me by surprise - I can’t taichi it away!!  #speaker_self 
    Yeah you shouldn’t have to Nad  #speaker_1
    Why can’t race be a non-issue, it’ll make everything SO not complicated #speaker_self 
    Exactly!! I was just talking about it with Zhihao yesterday #speaker_1
    #ui:scene
    #background:bg_nadia_bedroom.jpg 
    Really? I’m not sure I want to hear this. #inner_monologue
    #ui:whatsapp
    #background:whatsapp.png
    #chat_group_title:Gavin
    #chat_group_image:ico_nadia_gavin.png
    #speaker_1_name:Gavin 
    Dude was just giving me a tough time cos we haven’t hung out in awhile - said I “disappeared” with my “minah gf”  #speaker_1
    🙄 wth right #speaker_1
    #ui:scene
    #background:bg_nadia_bedroom.jpg 
    What the hell is right. #inner_monologue
    #ui:whatsapp
    #background:whatsapp.png
    #chat_group_title:Gavin
    #chat_group_image:ico_nadia_gavin.png
    #speaker_1_name:Gavin 
    Messed up man. Told him race doesn’t matter to you and me.  #speaker_1
    We’re chill about it, if it even comes up.  #speaker_1
    #ui:scene
    #background:bg_nadia_bedroom.jpg 
    Well that was the one time when we went on our date. Wasn’t thaaaat chill, that part. #inner_monologue
    #ui:whatsapp
    #background:whatsapp.png
    #chat_group_title:Gavin
    #chat_group_image:ico_nadia_gavin.png
    #speaker_1_name:Gavin 
    Can’t believe he called you a minah.  #speaker_1
    It’s not like he doesn’t know you from council.  #speaker_1
    Whatevs we’re not close #speaker_self 
    Yeah but still! He knows you what. You’re not like that 🙄  #speaker_1
    Huh like what #speaker_self 
    Welllll different la 😎 I mean do *you* think you’re a minah hahaha #speaker_1
    + [Pick a fight]
    ~ nadia_3_relationship -=1  
    Like you’ve even met any minah before 🤨  #speaker_self 
    Hahaha ok fair #speaker_1
    Ya it’s a damn weird thing to say  #speaker_self 
    But I’m saying you’re not one? #speaker_1
    #ui:scene
    #background:bg_nadia_bedroom.jpg 
    That says you have an idea of what being a minah means... and it’s not a good image #inner_monologue
    #ui:whatsapp
    #background:whatsapp.png
    #chat_group_title:Gavin
    #chat_group_image:ico_nadia_gavin.png
    #speaker_1_name:Gavin 
    And you’re not - you’re really not like most Malays #speaker_1
    Uhhhh sounds like a backhanded compliment 🙄  #speaker_self 
    Woah  #speaker_1
    What does “not like most Malays” even mean  #speaker_self 
    Yo it’s not that deep, chill  #speaker_1
    And so what if I was like “most Malays” which means what EVEN #speaker_self
    Look I’m on *your* side here, Zhihao WAS being dickish #speaker_1
    + [Try to Explain] 
    ~ nadia_3_relationship +=1
    lol don’t think am legit enough to call myself a minah #speaker_self 
    Anyway it’s the same as ah lian or ah beng #speaker_1
    Does anyone ever call YOU ah beng #speaker_self 
    If I ever dye my hair red, maybe they will!! lolol #speaker_1
    Ya see it’s not like Azlin goes around asking “oh where’s your ah beng so-and-so” just bc you’re chinese #speaker_self 
    Has she been asking about me 👁️👁️ & am I a so-and-so #speaker_1
    Dude not the point!! #speaker_self 
    Ok ok  #speaker_1
    It’s weird for Zhihao to so easily throw out “minah” bc duh I’m Malay #speaker_self 
    Ikr  #speaker_1
    🙄🙄🙄 minah is short for Aminah btw, like an actual name  #speaker_self 
    So like when OTHER people start using it.. as a label, bc I guess we’re *all* Aminah 🙄🙄🙄 #speaker_self 
    Oh wow #speaker_1
    Hey I'm sorry about that. I'll have a chat with Zhihao if he does it again. #speaker_1
- Sigh. He can be pretty irritating sometimes. 😡  #speaker_self 
+ I don’t understand why you’re friends with the guy.[] #speaker_self 
    ~ nadia_3_relationship -=1
    Relationship: {nadia_3_relationship} // remove 
+ I’m not pissed at you, but argh! [] #speaker_self 
    ~ nadia_3_relationship +=1
    Relationship: {nadia_3_relationship} // remove 
- Sigh... Sorry. Zhihao's all right... deep down? #speaker_1 
{ nadia_3_relationship < 3 : 
    -> nadia_3_1maybe
}
{ nadia_3_relationship >= 3 : 
    -> nadia_3_1yes
}

= nadia_3_1maybe
He’s not as funny as he thinks he is #speaker_self 
~ nadia_3_gavinchoice = "maybe"
Ok, burn. 🔥🔥🔥 #speaker_1 
Said what I said 🙄💁‍♀️ #speaker_self 
We’ve just been friends for ages, same schools etc. He’s always been around.  #speaker_1 
Yeah I get it.. Kinda like what Azlin is to me too.  #speaker_self 
😐 what happened with your cousin last night? #speaker_1 
You know how sometimes when you’re close with someone  #speaker_self 
Like inseparable  #speaker_self 
You forget that you’re NOT the same person. #speaker_self 
You guys are that tight huh #speaker_1 
Yeah. Grew up together, like you said.  #speaker_self 
She said some things.. I just didn’t think we felt so differently about it 😕 #speaker_self 
Like?.. #speaker_1 
#ui:scene
#background:bg_nadia_bedroom.jpg 
Oh, I don’t want to tell him about being Malay or whatever. He’s not going to get it. It’s too exhausting.  #inner_monologue
#ui:whatsapp
#background:whatsapp.png
#chat_group_title:Gavin
#chat_group_image:ico_nadia_gavin.png
#speaker_1_name:Gavin 

If you want to say la #speaker_1 
Yeah tell you next time maybe. I don’t really wanna relive it all in text lol #speaker_self 
Ok thenn #speaker_1 
Thanks for checking in on me btw 🙂 #speaker_self 
Duh no prob. Got me real worried for a bit, radio silence all #speaker_1 
😬 lol k will give u advance warning next time #speaker_self 
You still wanna meet my church friends? Am gonna see them this weekend #speaker_1 
Idkkk might be tough. My social batt is like zero, lol. Can just see how it goes? #speaker_self  
You sure you’re ok right?  #speaker_1 
I think so. I don’t know actually. Maybe. #speaker_self  
My spidey sense is tingling again… 🕷 #speaker_1 
Tell me briefly what’s draining you? 👉No Judgment Zone, promise. #speaker_1 
Oh ok. #speaker_self  
I guess… Azlin made me think about my life… differently.  #speaker_self  
There’s stuff that I took for granted, and I feel suuuper guilty about.  #speaker_self  
She also said something about relationships that got me thinking. #speaker_self  
This sounds promising. #speaker_1 
Not what you think.  #speaker_self  
It may shock you to know that not all my conversations with others are about you. #speaker_self  
You are right. It does shock me.   #speaker_1 
But I’ll let it go this time. 😂🤡 #speaker_1 
I started wondering what the universe would look like if I didn’t have to hide in cinemas from my family... #speaker_self  
or lie to my dad, or be stared at by strangers when we’re out together. #speaker_self  
Can’t we just ignore them for now? #speaker_1 
For now. Maybe.  #speaker_self  
But one day you’re going to wish you could hug me in public.  #speaker_self  
or bring a gf home for Chinese New Year, and not have to change the entire menu to a Halal one.  #speaker_self  
Actually my uncle is vegetarian, so we have catered a veg cny meal before! Nothing is impossible. #speaker_1 
Is it that simple to you? #speaker_self  
Nad, I know it’s not.  #speaker_1 
But you’re putting a lot of pressure on your very small shoulders.  #speaker_1 
You don’t have to think about that now.  #speaker_1 
We will have to think about it some day, if this gets serious. #speaker_self  
I like how you’re thinking. But let’s take tiny little steps for now.  #speaker_1 
And enjoy one day at a time. Can? #speaker_1 
Do you ever give up? #speaker_self  
Nope. One of my finer traits, I think. #speaker_1 
I wish I could give you a clear answer.  #speaker_self  
I’ll take a smile, for now. Tiny steps. #speaker_1 
🙃🙂 #speaker_self  
~ nadia_3_gavinchoice = "maybe"
-> nadia_3_2_narration

= nadia_3_1yes
👁️👁️️ #speaker_self 
~ nadia_3_gavinchoice = "yes"
He’s good deeeeep down laaa, and he's fine...  #speaker_1 
...in small amounts  #speaker_1 
Ha!!!! Knew it!️ #speaker_self 
What happened with you and Azlin anyway #speaker_1 
😔️️ #speaker_self 
No? Don’t wanna talk about it? #speaker_1 
I do... but I also don’t really wanna relive it in text️ #speaker_self 
Ya know?️ #speaker_self 
OK thennn. Will a bubble tea help haha #speaker_1 
No need la. I want to stew and sulk a bit. That’s all 😔️ #speaker_self 
Sulking is a lot more fun with an audience #speaker_1 
Nooooo   #speaker_self 
Yessssss #speaker_1 
Trust me, way better 😂 #speaker_1 
That what you always do? Should I be worried lol️ #speaker_self 
Well I don’t think sulking is a competitive sport #speaker_1 
So you can take the lead today lol #speaker_1 
🙄 .. I don’t expect you to get it ok, so it’s fine if you don’t. ️ #speaker_self 
My ears (👂👂️) are at your disposal.  #speaker_1 
The chat I had with Azlin gave me all sorts of feelings about being Malay️ #speaker_self 
I’m not ashamed of being Malay, like NO WAY. ️ #speaker_self 
Uh huh #speaker_1 
👉No Judgment Zone #speaker_1 
Ok ok️ #speaker_self 
What if.. All this while, I have been judging️ #speaker_self 
Myself. AND my own people 🙃🤡🙃🤡🙃️ #speaker_self 
This come from where 🤯 #speaker_1 
IDKKKKK but?? ️ #speaker_self 
...*Sometimes* I think if they worked harder or made “right” decisions, then they would stop doing so.. badly?️ #speaker_self 
It’s such an awful thing to say. Sometimes my dad says it in passing. Maybe I absorbed it, idk️ #speaker_self 
Well idk.. Parents really have their idea of the world #speaker_1 
I also KNOW it’s easy for me to say, cos things are ok for MY family.️ #speaker_self 
Then THAT makes me feel like a lousy Malay person. Can’t even relate to other Malays who are doing less-great. Sometimes it’s my own cousins. As if I’m so different from them. But I’m not.. ️ #speaker_self 
I don’t think any of this makes you more or less Malay than each other 😕 #speaker_1 
Sometimes I forget how much I have. I forget how much I don’t know. It’s embarrassing. ️ #speaker_self 
Makes me feel so gross ️ #speaker_self 
You’re also your own person tho, a whole individual.  #speaker_1 
You’re also being a bit hard on yourself. Just a bit 👀 #speaker_1 
I want to do well. I want it to mean something. Get myself into med school. ️ #speaker_self 
The other day Azlin joked like haha, for sure my face will be on Berita Harian some day 💀💀💀️ #speaker_self 
Lot of pressure for small shoulders #speaker_1 
Ya who wants to be a potential poster child about anything! I’m not about tht life 🤢️ #speaker_self 
Then at the same time.. ️ #speaker_self 
Posters work.  #speaker_1 
Maybe? Who knows. If it throws away shitty stereotypes? even my own. ️ #speaker_self 
OK that’s it.️ #speaker_self 
Thanks for listening to my podcast 😣️ #speaker_self 
Pretty good one tbh #speaker_1 
That was really a rant. I’m sorry️ #speaker_self 
Eh, no sorry pls! Thank you for sharing all of that   #speaker_1 
Means a lot too that you can talk to me about these things  #speaker_1 
You sure?️ #speaker_self 
Yeah man! Tbh you being very srs about a lot is NOT brand new information.  #speaker_1 
I like that about you. More of this please 🤓 #speaker_1 
Okayyyy, my head can be pretty tangled sometimes 😅️ #speaker_self 
I’m good with a comb #speaker_1 
Haha we know️ #speaker_self 
😳😎💁‍♂️ #speaker_1 
Thanks Gavin. I feel a bit better️ #speaker_self 
Told you sulking with an audience works! #speaker_1 
Anyway, come out tmr la! Meeting my church friends, so if you wanna ask them about med school..   #speaker_1 
Oh geez I keep forgetting! Yes pls. Thanks for doing this with me 😅️ ️ #speaker_self 
That’s my plan 🧡 #speaker_1 

-> nadia_3_2_narration
    

=== nadia_3_2_narration ===
#knot:nadia_2_minigame
#ui:mcq
#game_id:4 // must add some text
Minigame 4 // must add some text


#knot:nadia_3_2_narration
#ui:narrator
#background:bg_nadia_canteen.jpg
12:30pm, School Canteen.
The months flew by in a blur as we rushed through the A Levels. 
Late nights, notes covered with scribblings and highlighted lines, practice papers, and lots of sugar and caffeine to keep us going.
Chloe and I never found a good time to talk about the “library conversation” and she'll never know that what she said stung. 
But I guess that's how friendships go sometimes. 
Anyway, all of that studying ... to lead to today. 
It feels odd being back in the school canteen again. In just a few hours, I'll pick up my results.
It's good to see some familiar faces again.
A simple sheet of paper that will determine whether I can enter med school or not. I'm excited, nervous, terrified, and hopeful all at once.



-> nadia_3_2


=== nadia_3_2 ===
#knot:nadia_3_2
#ui:scene
#background:bg_nadia_canteen.jpg
#speaker_left_image:cha_nadia_chloe_school_normal.png
#speaker_left_name:Chloe
Never thought I would miss the smell of the canteen. It’s so odd seeing it empty like this. #inner_monologue
Nad! #speaker_left
There she is. Looks like she’s finally managed to catch up on her sleep. Let me  go over.  #inner_monologue
Haven’t seen you in ages! I’m so nervous, my hands are jittery. #speaker_left
I know right. The other day, I saw papers thrown out of someone’s window. #speaker_self   
What! Like notes? Did you see who it was? #speaker_left
No, just the white sheets, floating down the block. Was probably around after our last papers. I’ve been thinking about it since. #speaker_self 
Tempting huh. Maybe I’ll do that after today. I’ve been holding on to them, a crazy stack by my bed. #speaker_left
Don’t want to touch, right? #speaker_self 
Ya! Don’t want to even look. Might be bad luck to disturb, just in case. But also.. Reassuring? #speaker_left
It’s all the work. Two years. #speaker_self 
#speaker_left_image:cha_nadia_chloe_school_grinning.png
(Jokingly) Not like I put down offerings.  #speaker_left
Well, after today.. #speaker_self 
I know, right? It feels so surreal. #speaker_left
+ [Yeah, it's surreal]
    Haha I guess that's true. Like a dream or something. #speaker_self 
+ [Actually, I'm terrified]
    It feels terrifying, not surreal.  #speaker_self 
    I’m pretty sure I was going to throw up this morning. #speaker_self 
    #speaker_left_image:cha_nadia_chloe_school_normal.png
    You? Of all the people, you should be the least terrified. It’s the mere mortals like me who need to panic. #speaker_left
    It’s not just the grades, it’s also all the pressure.  #speaker_self 
    My dad has all these expectations of me to become a doctor, and he keeps making these “cute” jokes which just stress me out! #speaker_self 
    Yeah, my mum too.  #speaker_left
    Ugh, parents.  #speaker_self 
    I think my mum gave up on the whole scholarship rat race though - luckily her mahjong friends started gossiping about how amazing their kids are doing in private sector, and started dissing scholarships.  #speaker_left
    #speaker_left_image:cha_nadia_chloe_school_grinning.png
    So at least that’s one load of my back. But I still need to get into a good uni to go to private sector. #speaker_left
    That’s good to hear! I mean, I’m sure you’ll do well enough la. #speaker_self 
    I hope so. #speaker_left
- Anyway, do you know where we’re supposed to go? And where’s Gavin? #speaker_left
#speaker_left_image:cha_nadia_chloe_school_normal.png
The hall I think, haven’t heard much from the teachers. Do you think they’ll make announcements? #speaker_self 
Maybe, how the school did and all. Haven’t seen some of the guys around yet either. #speaker_left
Yeah, some of them are coming in from Tekong, might take a while I guess. I saw a few of the boys by the field. #speaker_self 
Oh that’s right! Have you seen Gavin with his botak cut yet?  #speaker_left
(Distracted) No, not yet actually.. #inner_monologue
#speaker_left_image:cha_nadia_chloe_school_normal.png
Wanna go to the quad? See whether the rest of the class is there. #speaker_left
+ Yes, Let's go.[] #speaker_self
    Hopefully there’s a good breeze there. This still air and anticipation is killing me!  #speaker_left
+ Can we stay in the canteen? []  #speaker_self
    Haha alright, I miss this place too. #speaker_left
    I’m hoping Gavin will find us here. #inner_monologue
-     Anyway, I am such a ball of nerves...  #speaker_self
Oh please - if anybody should walk into that hall with confidence, it's you. #speaker_left
#ui:narrator
#background:bg_nadia_canteen.jpg
1:30pm. It was so good chatting with Chloe and some of my classmates. 
It felt like a reunion, but with a nervous energy running through us all.
Some classmates joked too loud, others were quieter than usual.
An announcement over the school PA system rings out, asking us to go to the school hall.
It's time. Sigh.
Suddenly, a teacher approaches our table. It's Ms Unaisah.
#ui:scene
#background:bg_nadia_canteen.jpg
#speaker_left_image:cha_nadia_chloe_school_normal.png
#speaker_left_name:Chloe
#speaker_right_name:Unaisah    
#speaker_right_image:cha_nadia_unaisah.png
Ms Una? Is she looking for someone? #inner_monologue
Nadia, can I see you for a bit? Privately please?   #speaker_right
Chloe, you guys go ahead first. I’ll catch up later.  #speaker_self
Ok, text me? See you later! #speaker_left
#speaker_left_image:pixel.png
Your form teacher asked me to help look for you.  #speaker_right
+ Is something the matter? []  #speaker_self
+ Oh no, did I do badly? []  #speaker_self
- Not at all. Congratulations, Nadia.  #speaker_right
(disbelief) What do you mean? #speaker_self
I mean you did really well. You’re one of our top scorers.  #speaker_right
No way. NO WAY. NOOOO WAAAAYYYY. OMG OMG OMG #inner_monologue
(laughs) I can see you’re in a bit of shock. Come with me, we’re briefing the top 3 students in the teacher’s lounge before you go to the hall with the rest.  #speaker_right
There’s also some paperwork to collect the school award and we want to take a few photographs of you three for our school website.  #speaker_right
#speaker_right_image:pixel.png
#ui:narrator
#background:bg_nadia_schoolhall.jpg
2:40pm. School Hall.
My world changed in the last hour. 
I'm holding my envelope in my hand, and I keep peeking at the results sheet just to make sure I read it correctly.
The teachers are still talking, going through slides in some presentation that I stopped paying attention to.
#ui:notification
#background:ui_nadia_message.jpg
Abah: How was it? # message
-> nadia_3_2_abah

=== nadia_3_2_abah === 
#knot:nadia_3_2_abah
#ui:whatsapp
#background:whatsapp.png
#chat_group_title:Abah
#chat_group_image:ico_nadia_family.png
#speaker_1_name:Abah
#timestamp:14:40
Abah: How was it? #speaker_1
I got my results #speaker_self
?.. #speaker_1
...... straight As #speaker_self
Alhamdulillah!! All ur hard work Nadia. Abah very, very proud of u. Always.  #speaker_1
Thanks abah. I can’t believe it.. #speaker_self
Want me to pick u up from school? Can be there half hr #speaker_1
+ It’s ok, think I want to look for my friends [] #speaker_self
    Ok then. Jangan balik lambat (don't return home late) #speaker_1
    Enjoy yourself! :) #speaker_1
+ Yeah ok, but maybe 1hr like that? []  #speaker_self
    Ok then. Make sure you go say thank you to your teachers!  #speaker_1
- I will :) Also.. don’t tell the rest of the family k? I want to message Azlin first.   #speaker_self   
👌     #speaker_1
#ui:narrator
#background:bg_nadia_schoolhall.jpg
Ok, the formal part is finally done. Now to find my friends.
#ui:notification
#background:ui_nadia_message.jpg
Kelly: omggggggG @nadia!!!! We just heard!! # message


-> nadia_3_2b

=== nadia_3_2b ===
#knot:nadia_3_2b
#ui:whatsapp
#background:whatsapp.png
#chat_group_title:Student Council Chat
#chat_group_image:ico_nadia_studentcouncil.png
#speaker_1_name:Gavin 
#speaker_2_name:Kelly 
#speaker_3_name:Yvonne
#speaker_4_name:Vikas 
#speaker_5_name:Sam
#timestamp:14:45
omggggggG @nadia!!!! We just heard!! #speaker_2
Ya siaaaaaa no wonder suddenly disappear like that hahaha #speaker_3
Haha rest of us queueing up in hall to collect result slip like goondu #speaker_2
@nadia congrats yo. How’s everyone? I still otw to school sia, kena book out so late  #speaker_5
Ok ok la, not so bad mine.. Just glad finish already, can move on 🤭 #speaker_3
 
#ui:scene
#background:bg_nadia_schoolhall.jpg
I better say something. Before it gets awkward! #inner_monologue
 
#ui:whatsapp
#background:whatsapp.png
#chat_group_title:Student Council Chat
#chat_group_image:ico_nadia_studentcouncil.png
#speaker_1_name:Gavin 
#speaker_2_name:Kelly 
#speaker_3_name:Yvonne
#speaker_4_name:Vikas 
#speaker_5_name:Sam
Thanks guys!! I didn’t really know what to expect.. Think am still processing haha #speaker_self
Haha what’s there to process. The whole world’s your oyster 💎 #speaker_4
Is there anybody else staying back after this? #speaker_5
@sam yea, some of us hanging around still! we gg for ice cream later #speaker_3
yes pls 😅 Wanna ask yall about unis huhu #speaker_2
mememe! #speaker_1
{nadia_3_gavinchoice:
- "no" : -> nadia_3_2b_no
- "maybe": -> nadia_3_2b_maybe
- "yes": -> nadia_3_2b_yes
- else: -> nadia_3_2b_maybe
}

=== nadia_3_2b_no ===
#knot:nadia_3_2b_no
#ui:notification
#background:ui_nadia_message.jpg
Gavin: Hey congrats # message
#ui:whatsapp
#background:whatsapp.png
#chat_group_title:Gavin
#chat_group_image:ico_nadia_gavin.png
#speaker_1_name:Gavin
Hey congrats.  #speaker_1
Thanks #speaker_self
#ui:scene
#background:bg_nadia_schoolhall.jpg
I guess.. That’s that. #inner_monologue
I should...#inner_monologue
+ [Check up on Chloe] -> nadia_3_2d
+ [Tell Azlin your results] -> nadia_3_2e
    
    
=== nadia_3_2b_maybe ===    
#knot:nadia_3_2b_maybe
#ui:whatsapp
#background:whatsapp.png
#chat_group_title:Student Council Chat
#chat_group_image:ico_nadia_studentcouncil.png
#speaker_1_name:Gavin 
#speaker_2_name:Kelly 
#speaker_3_name:Yvonne
#speaker_4_name:Vikas 
#speaker_5_name:Sam
Nadddd tell me you’re joining us! Am dying to hear what you’re gg to apply for #speaker_2
Ummm not really sure yet 😅 will be nice meeting up! #speaker_self
-> nadia_3_2b_maybe_1

=== nadia_3_2b_maybe_1  ===
#knot:nadia_3_2b_maybe_1
#ui:notification
#background:ui_nadia_message.jpg
Gavin: Pls, no need pretend :) Congrats la!! # message
#knot:nadia_3_2b_yes_1b
#ui:whatsapp
#background:whatsapp.png
#chat_group_title:Gavin
#chat_group_image:ico_nadia_gavin.png
#speaker_1_name:Gavin
Pls, no need pretend :) Congrats la!!  #speaker_1
😳!! omg wru #speaker_self
Still on my way. Travelling from Tekong is no joke. My stupid boat got delayed. You still in school? #speaker_1
Yeah, am looking for Chloe actually  #speaker_self
How did she do? #speaker_1
... idk, she should be ok, but she hasn’t replied my text #speaker_self
Weird #speaker_1
-> nadia_3_2b_maybe_2

=== nadia_3_2b_maybe_2 === 
#knot:nadia_3_2b_maybe_2
#ui:whatsapp
#background:whatsapp.png
#chat_group_title:Student Council Chat
#chat_group_image:ico_nadia_studentcouncil.png
#speaker_1_name:Gavin 
#speaker_2_name:Kelly 
#speaker_3_name:Yvonne
#speaker_4_name:Vikas 
#speaker_5_name:Sam
Hey @yvonne, did you see Chloe btw #speaker_self
Right, she also disappeared lol - she did ok leh! Said her mom was waiting for her outside #speaker_3
Got it, thanks! #speaker_self
#ui:scene
#background:bg_nadia_schoolhall.jpg
Guess I’ll join the rest later for ice-cream.. Doesn’t feel right leaving school without Chloe.   #inner_monologue
I should...#inner_monologue
+ [Check up on Chloe] -> nadia_3_2d
+ [Tell Azlin your results] -> nadia_3_2e


=== nadia_3_2b_yes ===    
Nadddd tell me you’re joining us! Am dying to hear what you’re gg to apply for #speaker_2
😬 I’m probably gonna try for med school #speaker_self
Of course!! I can totally see it #speaker_2
Waaahhh. #speaker_4
So we get free treatment from you for life right Dr Nadia? Hehe #speaker_5
-> nadia_3_2b_yes_1

=== nadia_3_2b_yes_1  ===
#knot:nadia_3_2b_yes_1
#ui:notification
#background:ui_nadia_message.jpg
Gavin: Das right!! Proud of you babe 🌹🌹🌹 # message
#knot:nadia_3_2b_yes_1b
#ui:whatsapp
#background:whatsapp.png
#chat_group_title:Gavin
#chat_group_image:ico_nadia_gavin.png
#speaker_1_name:Gavin
Das right!! Proud of you babe 🌹🌹🌹  #speaker_1
😳!! omg wru #speaker_self
Still on my wayyyyy - stupid boat got delayed... are you waiting for me haha  #speaker_1
I can! Still looking for Chloe actually.  #speaker_self
Eh? She told me she went home  #speaker_1
Wait how do you know this, I’ve been waiting for her to reply meeee #speaker_self
Idk she texted me earlier asking what time I was reaching. When I said I was an hr away  #speaker_1
She decided to go home first..  #speaker_self
Yep her mom was waiting for her. Said she’ll join us for dinner if we’re still out.   #speaker_1
Yeah? #speaker_self
She did ok, I think. You worry too much! I’ll see you in awhile k?   #speaker_1
#ui:scene
#background:bg_nadia_schoolhall.jpg
I hope he’s right. Just feels weird, thought she and I would be doing this together.  #inner_monologue
I should...#inner_monologue
+ [Check up on Chloe] -> nadia_3_2d
+ [Tell Azlin your results] -> nadia_3_2e

=== nadia_3_2c ===
#knot:nadia_3_2c
#ui:scene
#background:bg_nadia_schoolhall.jpg
// + [Check up on Chloe] -> nadia_3_2d
// + [Tell Azlin your results] -> nadia_3_2e
-> END

=== nadia_3_2d ===
#knot:nadia_3_2d
#ui:whatsapp
#background:whatsapp.png
#chat_group_title:Chloe
#chat_group_image:ico_nadia_chloe.png
#speaker_1_name:Chloe
Hallo! Wru? #speaker_self
Chlo u ok #speaker_self
Yoohoo #speaker_self
Hey Chlo heard you’re at home already - lemme know if you want to come out and hang? Esp if you want a break from your mom. #speaker_self
Hi hi  #speaker_1
Omg hey!!! #speaker_self
Sorry I disappeared like that haha #speaker_1
No no its ok 😅 do you want to come hang out #speaker_self
Idk  #speaker_1
I don’t want to ruin the mood #speaker_1
You should celebrate tho 🙂 #speaker_1
Oh.. it won’t be the same without you #speaker_self
Are you ok? #speaker_self
Yes. I’m just being a bit dramatic. What a way to end school, crying in the bathroom haha #speaker_1
Omg Chlo why didn’t you call me #speaker_self
Don’t be ridiculous, you were having your moment lolol #speaker_1
We’ll hang out soon k? Congrats Nad  #speaker_1

-> nadia_3_3_narration

=== nadia_3_2e ===
#knot:nadia_3_23
#ui:whatsapp
#background:whatsapp.png
#chat_group_title:Azlin
#chat_group_image:ico_nadia_azlin.png
#speaker_1_name:Azlin
So I have news 😅 #speaker_self
?  #speaker_1
Eh today is a levels results kan!  #speaker_1
So how, front page berita harian tak 🤭🤭🤭  #speaker_1
Haha nothing that dramatic #speaker_self
But I did well. I’m gg to apply for med school #speaker_self
!!!! YES LA congrats Nad 💯✨✨✨💯  #speaker_1
Thank youuuuuu I really just wanted you to be the first to know 💖 #speaker_self
Gasp am i really  #speaker_1
Ok sort of, my dad got ahead of you #speaker_self
Haha of course he did  #speaker_1
Ahhhhh I’m so happy for you ✨ Let’s have dinner soon, my treat!   #speaker_1
Wah 🤓 #speaker_self
You pick ok! Good news like this must celebrate.   #speaker_1

-> nadia_3_3_narration
    
=== nadia_3_3_narration ===    
// Scene 3: INT. HDB flat, living room. Nadia is arriving at a gathering of friends from school. 
#knot:nadia_3_3_narration
#ui:narrator
#background:bg_nadia_bedroom.jpg
The dust settled after a few weeks.
I guess the jubilation, excitement - and disappointment, for some - just settled into an acceptance of whatever A Level grades we each received. 
This period felt a bit rudderless, I guess. 
I knew what the next steps were, but I wish I had friends around me to talk about it with.
I miss my friends, but at the same time, I'm a bit nervous about the upcoming gathering.

{ nadia_3_gavinchoice == "yes" && nadia_2_hidewithgavin == false : -> nadia_3_3a }
{ nadia_3_gavinchoice == "yes" && nadia_2_hidewithgavin == true : -> nadia_3_3b }
{ nadia_3_gavinchoice == "maybe" : -> nadia_3_3c }
{ nadia_3_gavinchoice == "no" : -> nadia_3_3d }

=== nadia_3_3a ===
#knot:nadia_3_3a
#ui:narrator
#background:bg_nadia_selfiehijab.jpg
6:30pm, outside Chloe's house. 
Gavin and I arrived a bit late to the party.
#ui:scene
#background:bg_nadia_chloehome.jpg
#speaker_left_image:cha_nadia_gavin_casual_normal.png
#speaker_left_name:Gavin
#speaker_right_image:cha_nadia_chloe_casual_normal.png
#speaker_right_name:Chloe
Why do I feel so nervous! #inner_monologue
OK I hear quite a crowd, guess we’re running late. Just ring the doorbell.. #inner_monologue
You ok? #speaker_left
Yes. Absolutely. #speaker_self
Oi! Took you two long enough. Food arrived ages ago. #speaker_right
Scolding us already Chloe.. #speaker_left
We brought ice cream? #speaker_self
Ok fine. Your bribe is accepted. #speaker_right
Told you that would appease her. Will put these away in the freezer.. #speaker_left
Sorry we’re late Chlo. #speaker_self
Ok nevermind, he’s gone now. #speaker_right
#speaker_left_image:pixel.png
What happened? You texted me saying you were leaving your house ages ago.  #speaker_right
Well… #speaker_self
+ [A small victory... ]  Yes.. so Gavin decided he wanted to pick me up then head here. #speaker_self
    That’s kinda sweet.. #speaker_right
    Ya it is! But that also means he met my dad today.  #speaker_self
    For the first time.  #speaker_self
    Oh.. #speaker_right
    Did I warn him that my dad can get long-winded? Yes.  #speaker_self
    Did it go ok though? #speaker_right
    Well.. Better than expected? #speaker_self
    Is that a high bar? #speaker_right
    Actually, we think he’s ok with it. For now, that’s all I can hope for! #speaker_self
    I think he’s been rather chill about everything these days - he is probably so happy about the med school thing to care about anything else!  #speaker_self
    That’s good! #speaker_right
    
+ [I’ve never been more stressed... ] We hit a bit of a detour... #speaker_self
    Oh no, what happened? #speaker_right
    Gavin decided to pick me up and met my dad. #speaker_self
    Whoa! #speaker_right
    I was so nervous my heart nearly flew out of my chest. #speaker_self
    Did it go ok though? #speaker_right
    I think so? We think so. I hope so.  #speaker_self
    That’s good right! #speaker_right
- Anyway come on, you must be hungry. Better get to the food before the guys finish everything.  #speaker_right
Good point.  #speaker_self
So I made sure we ordered from a halal place. It’s just bee hoon and things, but I double-checked and everything.  #speaker_right
Wow thanks Chloe. It looks really good. #speaker_self
The sweet and sour fish is really good. #speaker_right
This is what friends do. She makes me feel so... welcomed, and part of the group. #inner_monologue
#speaker_left_image:cha_nadia_zhihao_normal.png
#speaker_left_name:Zhihao
That one not nice!! #speaker_left
Don’t listen to him. He finished like half the tray. #speaker_right
Who ask you guys come so late, haha. #speaker_left
That one not my fault ok. You go ask... #speaker_self
+ [Gavin] You go ask Gavin la. #speaker_self
    Gavin? Eh, got no hair already, what excuse does he have! #speaker_left
    Aha, so Gavin is a vainpot! As suspected.. #inner_monologue
+ [my boyfriend] You go ask my boyfriend la. #speaker_self
    Ugh, don’t remind me! I’m still looking for a replacement gaming buddy now that loverboy is spending all his time with you.  #speaker_left
    Anybody interested? #speaker_left
    Dream on, Zhihao.  #speaker_right
- Anyway. Nice to see you Nadia. Congrats. Top scorer and all.  #speaker_left
Thanks Zhihao.  #speaker_self
Who would have thought, huh? #speaker_left
No, can we not.. #inner_monologue
#speaker_right_image:cha_nadia_gavin_casual_normal.png
#speaker_right_name:Gavin 
Thought what? #speaker_right
Nothing, Nadia just very zai. Who would have thought Gavin had such good taste. #speaker_left
Good save, Zhihao. #inner_monologue
You were always a bit.. different.  #speaker_left
+ In a good way? [] #speaker_self
    Must be!  #speaker_left
    I felt like an outsider sometimes. #speaker_self
    Wait, really? #speaker_right
    You?? You sailed right through school, all the way to the end. #speaker_left

+ What’s that supposed to mean? []  #speaker_self
    I meant that in a good way! #speaker_left
    I don’t see how always being an outsider is a good thing.  #speaker_self
    I didn’t realise you felt that way. #speaker_right
    Yah! You sailed right through school, all the way to the end. #speaker_left
- It looked that way, huh.  #speaker_self
#speaker_right_image:cha_nadia_chloe_casual_normal.png
#speaker_right_name:Chloe
I think it was a very lonely two years sometimes. #speaker_right
Yeah? Felt longer too. #speaker_self
#speaker_left_image:cha_nadia_zhihao_normal.png
#speaker_left_name:Zhihao
Don’t say until like that can.. #speaker_left

#speaker_left_image:cha_nadia_gavin_casual_normal.png
#speaker_left_name:Gavin 
Yeah we just started our own two years. #speaker_left

Oops, sorry. You can take the floor. What Tekong-related complaints would you like to file Gavin? #speaker_self
#speaker_left_image:cha_nadia_zhihao_normal.png
#speaker_left_name:Zhihao
OK, number one! The canteen food sucks!! How come the Muslim food always look nicer. #speaker_left

#speaker_left_image:cha_nadia_gavin_casual_normal.png
#speaker_left_name:Gavin 
I told you that years ago.#speaker_left

#speaker_left_image:cha_nadia_zhihao_normal.png
#speaker_left_name:Zhihao
Number two! People who snore, they should all form their own company.  #speaker_left

#speaker_left_image:cha_nadia_gavin_casual_normal.png
#speaker_left_name:Gavin 
Hahaha, that one makes sense. #speaker_left
Do you think your campmates who snore know they do? #speaker_self
We’d tell them. Trust me. #speaker_left
Phew, glad I’m not one. #speaker_right
Um... #speaker_self
What?! Since when! #speaker_right
You know how you like to nap in those armchairs? In the school library?  #speaker_self
We have videos.#speaker_left
No!!!! #speaker_right

This is all so silly.  #inner_monologue
And yet, it feels so wonderful.  #inner_monologue
It won’t last forever, so I should cherish these moments while they last.  #inner_monologue
University will be a whole new world, filled with new challenges.  #inner_monologue



-> nadia_3_3_epilogue

=== nadia_3_3b ===
#knot:nadia_3_3b
#ui:narrator
#background:bg_nadia_selfiehijab.jpg
6pm, outside Gavin's apartment. 
#ui:scene
#background:bg_nadia_gavinhome.jpg
#speaker_left_image:cha_nadia_gavin_casual_normal.png
#speaker_left_name:Gavin
#speaker_right_image:cha_nadia_mrstan_normal.png
#speaker_right_name:Mrs Tan
Why do I feel so nervous!  #inner_monologue
OK I don’t hear too much commotion, not so many people here yet. Just ring the doorbell.. #inner_monologue
Oh. I thought you were the catering.  #speaker_right
+ [No, sorry.] 
    Err, no, sorry. Just me. Nadia. #speaker_self
    Oh, Nadia! Gavin’s said a lot about you.  #speaker_right
    Nad! You’re early! #speaker_left
    Come in, come in!  #speaker_left

+ [I’m Nadia.]
    I’m Nadia. #speaker_self
    Oh, Nadia! Nice to finally meet you. Gavin’s said a lot about you. #speaker_right
    Likewise! Thanks for having us over.  #speaker_self
    Come in! Come in!  #speaker_right
    Nad! You’re early! #speaker_left

- Mom, this is Nadia. She’s one of the school’s top scorers - #speaker_left
So I’ve heard. #speaker_right
Which surprised no one really. She’s just brilliant like that, and making it look so easy. The cheek of it all! #speaker_left
Haha alright, how about we let Nadia say something for herself. #speaker_right
+ Yes, he does do that.[]  #speaker_self
    Doesn’t he?  #speaker_right

+ It’s okay[.]  It’s kinda sweet.  #speaker_self
    Well, someone’s gotta brag about Nadia. #speaker_left
    Hey, maybe you haven’t given me the chance to! #speaker_self
    Don’t you notice he always has more to say when someone opens their mouth?  #speaker_right

- Wow already ganging up on me. Fine, I’ll get back to putting away the ice cream. #speaker_left
(Excited) There’s ice cream? #speaker_self
And a waffle maker. Come help me set it up later! #speaker_left
(Smiles) So that’s why he was bothering me about dragging it out from the store room. #speaker_right
Haha I guess.. What’s not to like about fresh waffles. #speaker_self
So congrats on your results. I’m sure your family must be very proud.  #speaker_right
Thanks auntie, yes they were very excited.  #speaker_self
Gavin said you’re applying for med school.  #speaker_right
Oh, he did! Well, yes. I’m going to try. It’s very competitive I heard.  #speaker_self
He says you’re very focused. And stubborn.  #speaker_right
Not that stubborn.. I hope.  #speaker_self
No, it’s a good thing. It’s better to be stubborn with some things.  #speaker_right
(Smiles) Ok, I’ll write that down to remind myself.  #speaker_self
Gavin is in the kitchen. In case you want to get ahead with the ice cream before your friends arrive.  #speaker_right
You really do have the best ideas, auntie.  #speaker_self
Whew. I think that went ok.. Now to find Gavin in the kitchen.  #inner_monologue
Here for ice cream? #speaker_left
Looks like you got started without me! #speaker_self
Yup. Got bored putting away all the tubs. Here, grab a bowl. Start sampling. #speaker_left
Thanks. Your mom’s nice by the way.  #speaker_self
Yeah she was looking forward to meeting you. I could tell.  #speaker_left
Did you.. Tell her about us? #speaker_self
Well — #speaker_left
... it’s ok if you didn’t, I was just asking! #speaker_self
I did. #speaker_left
(Shy) Oh! Ok. That’s cool. #speaker_self
Have you told your folks about me? #speaker_left
+ Wow what flavour is this ice cream.[] #speaker_self
+ Should we change the music? []  #speaker_self
    It’s a bit sombre for a party. #speaker_self
- Nad! #speaker_left
Ok ok, I will! But then you’re going to have to meet my dad. He’s old school like that.  #speaker_self
I can be old school.  #speaker_left
Next weekend? #speaker_self
It’s a date! See? Old school. #speaker_left
Alright then. And Gavin? #speaker_self
Yes Nadia? #speaker_left
Are waffles and ice cream all we’re having for dinner? #speaker_self
Course not! We’re working backwards huh. This is just dessert.  #speaker_left
I ordered food from that cafe we went to - #speaker_left
... the one with the aglio olio!  #speaker_self
They had pizza on the menu too, so I ordered some of that. Thought it’d be easier to just order from a halal restaurant for the whole party.  #speaker_left
Thanks for putting this together. #speaker_self
Wasn’t too hard. Most things are easy if you want them to be.  #speaker_left
Yeah? #speaker_self
Absolutely.  #speaker_left
Things won’t always be this easy.  #inner_monologue
But he’s trying so hard, and makes me feel so… visible. #inner_monologue
I should cherish it while it lasts.  #inner_monologue
I hope my dad is ok with this.  #inner_monologue
He’s gotten a lot more relaxed about everything now that I have a place in med school.   #inner_monologue


-> nadia_3_3_epilogue

=== nadia_3_3c ===
#knot:nadia_3_3c
#ui:narrator
#background:bg_nadia_selfiehijab.jpg
6pm, outside Chloe's apartment. 
#ui:scene
#background:bg_nadia_chloehome.jpg
#speaker_left_image:cha_nadia_gavin_casual_normal.png
#speaker_left_name:Gavin
#speaker_right_image:cha_nadia_chloe_casual_normal.png
#speaker_right_name:Chloe
Why do I feel so nervous! #inner_monologue
OK I hear quite a crowd, guess I’m running late. Just ring the doorbell.. #inner_monologue
Nad, took you long enough! Food just arrived. #speaker_right
Oh wow that's a lot! I know the guys are in army now, but you don’t have to FEED one.. #speaker_self
Well the rest of your student council gang are coming round later.  #speaker_right
Some of the hockey girls too. I  hope we didn’t order too much.  #speaker_right
.. it’s NOT going to be a problem.  #speaker_left
+ Haha hello Gavin. [] #speaker_self
    Anything that is not from a Tekong kitchen is gourmet to me.  #speaker_left

+ Gavin! I thought you said you were going to be late? [] #speaker_self
    Convinced Mom to give me a lift. Speedy speedy.  #speaker_left
- Haha ok, how much torture is NS? #speaker_self
The very most worst! #speaker_left
Sounds like Tekong has brought out an even more dramatic side of you.. #speaker_self
It is so boring. I do what I need to keep myself sane.  #speaker_left
Come on, hurry up sit down. Zhihao wants to start a board game. #speaker_left
Ok ok, sure. Chloe you joining? #speaker_self
Gimme a min.. #speaker_right

#speaker_left_image:cha_nadia_zhihao_normal.png
#speaker_left_name:Zhihao
Wah Nadia, new look is it.  #speaker_left
+ Uh no, not really. [] #speaker_self
    Oh ya, I think I saw before, outside school.  #speaker_left
+ ... [] #speaker_self
    #speaker_left_image:cha_nadia_gavin_casual_normal.png
    #speaker_left_name:Gavin
    Eh nonsense la Zhihao! In school she wear already to collect results. #speaker_left
    #speaker_left_image:cha_nadia_zhihao_normal.png
    #speaker_left_name:Zhihao
    Ohhhh yeah... #speaker_left

- I think you look nice! You always look so comfy. #speaker_right
#speaker_left_image:cha_nadia_zhihao_normal.png
#speaker_left_name:Zhihao
Ya I was only asking.. But a bit warm right?  #speaker_left
#speaker_left_image:cha_nadia_gavin_casual_normal.png
#speaker_left_name:Gavin
Oi! She’s not here for an interview leh. #speaker_left
I’m going to get something to eat. Does anyone want anything? #speaker_self
Oh Nad! My mum did all the ordering, but I made sure the pizza came from a halal place.  #speaker_right
Got it. Pizza is halal. #speaker_self
That’s ok right? #speaker_right
+ Got it. Pizza is halal. [] #speaker_self
    Food enough for an army. Pizza for me. #inner_monologue
    I suppose she expects me to feel grateful that she ordered something for me.  #inner_monologue
    Should I be?  #inner_monologue
    Wouldn’t it be nice if someone who you were best friends with at least made you feel a bit more welcomed at her house with something aside from a plain cheese pizza? #inner_monologue
+ Aww, that chicken looked good.[] But oh well.  #speaker_self
    Thanks for getting the Pizza, I guess. #speaker_self
- Hurry back Nad! Zhihao is trying to look at your cards! #speaker_left
OI!! #speaker_self
I wonder what I’ll feel when I look back on all this some day.  #inner_monologue
I had these friends, and we had our moments, but perhaps… there’s more out there to look forward to. #inner_monologue
University will be a whole different ball game. #inner_monologue


-> nadia_3_3_epilogue


=== nadia_3_3d ===
#knot:nadia_3_3d
#ui:narrator
#background:bg_nadia_selfiehijab.jpg
6pm, outside Gavin's house. 
#ui:scene
#background:bg_nadia_gavinhome.jpg
#speaker_left_image:cha_nadia_gavin_casual_normal.png
#speaker_left_name:Gavin
#speaker_right_image:cha_nadia_chloe_casual_normal.png
#speaker_right_name:Chloe
Why do I feel so nervous!  #inner_monologue
OK I hear quite a crowd, guess I’m running late.  #inner_monologue

#ui:notification
#background:ui_nadia_message.jpg
Gavin: Hey!  # message
#ui:whatsapp
#background:whatsapp.png
#chat_group_title:Gavin
#chat_group_image:ico_nadia_gavin.png
#speaker_1_name:Gavin
18.02 #timestamp
Are you coming by today? #speaker_1
Yup. Just outside your door actually, haha. #speaker_self
Oh, ok. Chloe’s there already. I went out to grab some ice. #speaker_1
👍 #speaker_self
#ui:scene
#background:bg_nadia_gavinhome.jpg
#speaker_left_image:cha_nadia_mrstan_normal.png
#speaker_left_name:Mrs Tan
#speaker_right_image:cha_nadia_chloe_casual_normal.png
#speaker_right_name:Chloe
Just ring the doorbell.. #inner_monologue
Oh. Hello dear. You must be - #speaker_left
Nadia.   #speaker_self
+ [Thanks for having us over.]
    Nadia. Hi auntie - thanks for having us over.  #speaker_self
    Was all Gavin’s idea. I’m just here opening doors for teenagers.  #speaker_left
    I’m joking. It’s nice to meet you. Nadia.. Are you - #speaker_left

+ [Gavin’s said a lot about you.] 
    Nice to finally meet you. Gavin’s said a lot about you. #speaker_self
    Likewise, Nadia.  #speaker_left
    I’m glad he’s decided to be more serious with his studies. I guess he just needed some competition.  #speaker_left

- Are you -  #speaker_left
... one of the school’s sleeper hits? Hi Nad, what took you so long!! #speaker_right
Are you the one applying for med school? #speaker_left
+ [Respond to Mrs. Tan]
    Yep, that’s me. Gavin told you? #speaker_self
    He said you were deciding between two universities.  #speaker_left
    I have my preference, but it’s probably better to try for both.  #speaker_self

+ [Respond to Chloe]
    Wow, um hi Chloe. I’m a what? #speaker_self
    Haha nevermind. Yes, Nadia is applying for med school. Have you decided between the universities yet? #speaker_right
    I think so, but it’s probably better to try for both. #speaker_self
- That’s true. Gavin was asking about our church friends currently in med school.  #speaker_left
Said a friend of his was going along the same path. Didn’t realise it was you.   #speaker_left
Ah, yes. Gavin was trying to help. I don’t know anyone who’s in med school.  #speaker_self
Did you meet any of them in the end? #speaker_right
No.. this was sometime ago. It’s ok, really.  #speaker_self
Would you like to? It might be helpful. Always good to know what’s coming ahead.  #speaker_left
Really? Only if it’s no trouble.  #speaker_self
Of course not. It’s going to be a tough draw. Any small leg up is helpful. #speaker_left
Thank you so much! It’s so nice to meet you.   #speaker_self
Come look for me later, I’ll pass you their numbers. #speaker_left
Nice one, Nad!  #speaker_right
Yeah. That was a surprise.  #speaker_self
Anyway, I brought food! It’s potluck, right? #speaker_self
Yup, you can put yours with the rest on the dining table. What did you bring! #speaker_right
Nothing fancy, just some bee hoon and snacks my mom made.  #speaker_self
Oh nice! I think Gavin also prepared some bee hoon already, but I think I saw it had luncheon meat.. #speaker_right
Yep. Figured as much. #inner_monologue
Lucky you brought yours, huh. #speaker_right
+ Yeah, it’s no biggie! [] #speaker_self
    I’m going to help Zhihao with something, he was trying to set up a video game. Come find me when you’re done! #speaker_right
+ Yeah, I usually have to. [] Wouldn’t wanna be drooling over everyone else’s food. Heh. #speaker_self
    ...Right. #speaker_right
    Anyway, I think I heard Zhihao call for you.  #speaker_self
    Oops, forgot I was in the middle of helping him set up a video game.  #speaker_right
- I’ll come find you when I’m done? #speaker_right
Yep, see you in a bit Chlo. #speaker_self
I don’t think they even bothered to cater any food for me.  #inner_monologue
All that talk about how he will always try to make me feel included, make the extra effort as a friend... #inner_monologue
I wonder if he realises now that he was not ready to make all those changes for me? #inner_monologue

#ui:notification
#background:ui_nadia_message.jpg
Azlin: how is it  # message
-> nadia_3_3d_whatsapp

=== nadia_3_3d_whatsapp ===
#knot:nadia_3_3d_whatsapp
#ui:whatsapp
#background:whatsapp.png
#chat_group_title:Azlin
#chat_group_image:ico_nadia_azlin.png
#speaker_1_name:Azlin
how is it #speaker_1
+ Okkkk la.[] #speaker_self
+ Bit awkward. [] #speaker_self
- But good to see Chloe. Was supposed to catch up with her.  #speaker_self
🤞   #speaker_1
You want to hang out later? I won’t be long here, I think.  #speaker_self
can, set.  #speaker_1
#ui:scene
#background:bg_nadia_gavinhome.jpg
I’m so glad I have Azlin. #inner_monologue
I can escape these awkward parties and have real conversations with her… even hard ones. #inner_monologue
I wonder if I can find people like her in university too. #inner_monologue



-> nadia_3_3_epilogue


=== nadia_3_3_epilogue ===
#knot:nadia_3_3d
#ui:narrator
#background:bg_nadia_selfiehijab.jpg
Some days flew by, others dragged on.
More gatherings, some farewells to those who went overseas for uni.
As for me? 
I finally got the acceptance letter from med school!


-> nadia_3_4_narration

===  nadia_3_4_narration ===
#knot:nadia_3_3d
#ui:narrator
#background:bg_nadia_unientrance.jpg
// change background to uni entrance 
Abah is driving me to university for my first day.
He insisted on getting here a "bit" early... so we're here at 8am!
He's so excited. I'm so nervous. 
Also, this campus is a maze. Where on earth is my building?
-> nadia_3_4

===  nadia_3_4 ===
#knot:nadia_3_4
#ui:scene
#background:bg_nadia_fathercaratday.jpg
#speaker_right_image:cha_nadia_rahman_normal.png
#speaker_right_name:Abah
Abah, I think you turn left here. #speaker_self
Why are the signs so small.. #speaker_right
I’ll keep a look out for the building. #speaker_self
It’s not even 8 yet. You said 8.30, kan? Plenty of time.. #speaker_right
{ nadia_3_gavinchoice == "yes" : -> nadia_3_4a }
{ nadia_3_gavinchoice == "maybe" : -> nadia_3_4b }
{ nadia_3_gavinchoice == "no" : -> nadia_3_4c }

    = nadia_3_4a 
    Yeah. I might get lost though. Inside. #speaker_self
    You won’t. How are you feeling? #speaker_right
    Um, ok I guess! A bit nervous. I’ve been googling, managed to find my course overview for the next 5 years. #speaker_self
    Already? #speaker_right
    Ya! At least I waited until I got in to med school, before digging it up. #speaker_self
    Well I know you always want to step on the pedal. Five years is long ok. #speaker_right
    More than that. With residencies.  #speaker_self
    Exactly. Remember to pace yourself. It’s a marathon. #speaker_right
    Not a sprint, I know. I’ll be fine, the people around me always remind me. It means a lot! Like Azlin.  #speaker_self
    And that boy? #speaker_right
    Yes, and Gavin.  #speaker_self
    Hm. Next time he book out, tell him to go get you the curry puff at that other Pasir Ris hawker centre.  #speaker_right
    That one is the better one.  #speaker_right
    For me, or for you? #speaker_self
    Well you know.. If he happens to buy extra, it’s not good to push away good fortune. #speaker_right
    Sure, I’ll let him know. #speaker_self
    Ok, here we are. What time do you finish today? Want me to pick you up? #speaker_right
    Thanks abah. #speaker_self
    + Will find my way back later. I’ll see you at home? [] #speaker_self
    + Gavin will send me back later. I’ll see you at home? [] #speaker_self
    - Ok, be good! #speaker_right
    Ok abah, I think this is the building. Thanks for the lift! #speaker_self
    #ui:notification
    #background:ui_nadia_message.jpg
    Gavin: Good luck babe!! You got this 💪❤️‍🔥 # message
    #ui:narrator
    #background:bg_nadia_selfiehijab.jpg
    Ok, take a deep breath. 
    VAR chapter_3_ending = 1 
    I'm going to be ok. 
    I just need... to be me.
    
    -> chapter_3_ending_1
    
    = nadia_3_4b
    Yeah. I might get lost though. Inside. #speaker_self
    You won’t. How are you feeling? #speaker_right
    Kinda weird to not be in uniform. I feel ok, I guess.  #speaker_self
    Just ok? You’re going into your first day of becoming a doctor! #speaker_right
    Almost feels weird to be wearing my headscarf in a school situation. #inner_monologue
    Abah is very proud of you.  #speaker_right
    I know, thanks abah. This campus is huge.. #speaker_self
    Just look out for the sign, don’t want to miss the turn. #speaker_right
    Sort of met some of my schoolmates the other week. #speaker_self
    Ya? Banyak Cina? (lots of Chinese) #speaker_right
    Kinda, but there were some Malay and Indian students too. I wonder which JCs they came from.. #speaker_self
    That’s good, a nice mix.  #speaker_right
    Yeah. Time to make friends.  #speaker_self
    Nobody from your school? #speaker_right
    Maybe one or two familiar faces? Nobody I really know. #speaker_self
    Also, I found out also that for the exams, its just pass or fail.  #speaker_self
    That’s crazy! I wonder what that’s going to feel like. Apparently so we won’t chase grades.  #speaker_self
    Maybe now that they’ve decided you all are good enough, they just want you to chill. Relax. #speaker_right
    Hahaha, sure. Relax in med school. #speaker_self
    It’s a good joke.  #speaker_right
    It is, not bad, not bad. #speaker_self
    Ok, here we are. What time do you finish today? Want me to pick you up? #speaker_right
    Thanks abah. Will find my way back later. I’ll see you at home? #speaker_self
    Oh, ok. Are you meeting someone later? #speaker_right
    + [Azlin]  Ya, I’m meeting Azlin.  #speaker_self
         Ok, be good! #speaker_right
         Ok abah, I think this is the building. Thanks for the lift! #speaker_self
        #ui:notification
        #background:ui_nadia_message.jpg
        Azlin: text me later when you’re done! easy-peasy 💪💅✨ #message
    + [Gavin]  Ya, I’m meeting Gavin. #speaker_self
        Gavin, hm? #speaker_right
        Ok, be good! #speaker_right
        Ok abah, I think this is the building. Thanks for the lift! #speaker_self
        #ui:notification
        #background:ui_nadia_message.jpg
        Gavin: Good luck Nad! You got this 😉 #message
    #ui:narrator
    #background:bg_nadia_selfiehijab.jpg
    - Ok, take a deep breath. 
    ~ chapter_3_ending = 2
    I'm going to be ok. 
    I just need... to be me.
    

    -> chapter_3_ending_2
    
    
    = nadia_3_4c 
    I know. It’s just.. #speaker_self
    Are you nervous? #speaker_right
    No! No, I’m really excited. It’s med school. I can’t believe it.  #speaker_self
    It’s going to be tough - #speaker_right
    I can do it.  #speaker_self
    Insyaallah. #speaker_right
    Insyaallah. I really learned a lot in the last 2 years. #speaker_self
    Ya? #speaker_right
    Yeah. This time, I’m going to make sure I speak my mind. Be terus terang (frank), you know? #speaker_self
    Maybe.  #speaker_right
    Seriously, abah. Sometimes when I think about it kan, maybe the things people have said.. I let it slide.  #speaker_self
    If I’m going to become a good doctor, I’m going to be more honest with myself. #speaker_self
    And with other people. Not going to take any bullshit. #speaker_self
    Eh, language.  #speaker_right
    Sorry. Ok, I see it! You can turn right here, abah.  #speaker_self
    Be respectful. Keep your focus. Must always remember what you represent. Have you met your schoolmates yet? #speaker_right
    Sort of.  #speaker_self
    Semua Cina? (All Chinese?) #speaker_right
    No, I saw some Malay and Indian students. Not a lot -  #speaker_self
    ... but still good. Anybody from your school? #speaker_right
    Haha, it’s not like I memorised everyone in JC.. #speaker_self
    Ok, here we are. What time do you finish today? Want me to pick you up? #speaker_right
    Thanks abah. Will find my way back later. I’ll see you at home? #speaker_self
    Ok, be good! #speaker_right
    Ok abah, I think this is the building. Thanks for the lift! #speaker_self
    #ui:notification
    #background:ui_nadia_message.jpg
    Azlin: good luck on your first day! blow them away naddd 🔥x💯 #message
    #ui:narrator
    #background:bg_nadia_selfiehijab.jpg
    Ok, take a deep breath. 
    ~ chapter_3_ending = 3
    I’m going to be ok.
    I just need... to be me.
    

    -> chapter_3_ending_3
    


=== chapter_3_ending_1 === // for debug only
#knot:chapter_3_ending_1
#ui:story_end
#reflection_id:4
the end = 1    
~ chapter_3_ending = 1 
VAR story_finished = true
.

    -> END
 
=== chapter_3_ending_2 === // for debug only
#knot:chapter_3_ending_2
#ui:story_end
#reflection_id:4
the end = 2
~ chapter_3_ending = 2
~ story_finished = true
.
      -> END

=== chapter_3_ending_3 === // for debug only
#knot:chapter_3_ending_3
#ui:story_end
#reflection_id:4
the end = 3
~ chapter_3_ending = 3
~ story_finished = true
.
      -> END

=== story_end_browser ===
#ui:story_end_browser
#reflection_id:4
reflection browser
    
    
-> END
