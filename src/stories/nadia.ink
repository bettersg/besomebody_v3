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


FOR MINIGAMES DO NOT START A NEW KNOT
#knot:nadia_2_minigame
#ui:mcq
#game_id:2
Minigame // must add some text
-> nadia_2_3 // point to next section of story


*/

 

-> nadia_1_intro

// CHARACTER INTRODUCTION


=== nadia_1_intro ===
#knot:nadia_1_intro
#ui:narrator
#background:bg_nadia_intro.jpg
#music:nadia_intro.mp3
// DECLARE GLOBAL VARIABLES
VAR character_id = 1
VAR chapter_id = 1
VAR nadia_mood = 10
VAR gavin_mood = 10
VAR nadia_liar = 0
// VAR chapter_1_ending = 0 
// VAR chapter_2_ending = 0 
// VAR chapter_3_ending = 0 
// VAR chapter_4_ending = 0 
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
VAR chapter_1_ending = 1
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
geram seh! “just  (marry) and have children.. like that life is blessed already” #speaker_1
Ya, I know.  #speaker_self
Thanks you know, for  helping and pushing me through. Means a lot. #speaker_self
tau pon 😬 #speaker_1
better remember when u bc some bigshot doctor haha.  #speaker_1
don’t shiok sendiri (fall blissfully in love and get self absorbed), suddenly don’t know ur nurse cousin all  #speaker_1
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
#background:nadia_1_intro.jpg
#music:nadia_intro.mp3
~ chapter_id = 2
//reset chapter 2-5 variables
I’m still a little surprised by what happened with Gavin. 
Not the chopsticks thing - but the invitation to go on a date! 
I guess it never occurred to me that he might like me enough to ask me out. 
There are still so many questions in my head - and Azlin is right, I need to remember who I am. 
But maybe for this one moment, I can just enjoy being with him without worrying about all that. 
And maybe I can show who him who I am outside of school, when we’re not studying in the library. 
I hope he likes what he finds.
CHAPTER 2 #title
Dates and Faith #title

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
Hallo! Wanna head out this afternoon for a mug sesh? #speaker_1
Darn I can’t #speaker_self
That’s ok! What are u up to? #speaker_1
Um. I’m meeting Gavin. #speaker_self
Oh chey, bo jio.. Are you two studying without me! #speaker_1
😳 #speaker_self
wellllllll #speaker_self
No way! Omg. It’s a daaaaaaaaaate  🎉✨🎉✨🎉✨ #speaker_1
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
#ui:scene
#background:bg_nadia_wearinghijab.jpg
Gah can’t believe am taking a selfie for Chloe. #inner_monologue
Right... sending through my selfie with this caption! #inner_monologue
+ 😎 Rocking it![] #speaker_self
    VAR nadia_2_confidenthijab = true
    I’m turning up like this. Ok right? #speaker_self
    Still a cutie!  #speaker_1
    Whew, what a relief 😏  #speaker_self
    Your headscarf colour is so pretty 💛 I think this is the first time I’ve EVER seen you wearing one!!  #speaker_1
    Gavin is going to love it!   #speaker_1
    #ui:scene
    #background:bg_nadia_selfiehijab.jpg
    I sure hope so. #inner_monologue
    
+ 🧐 Like this can?[] #speaker_self 
    ~ nadia_2_confidenthijab = false
    What do you think? #speaker_self 
    Hahaha oh gosh #speaker_1
    !! #speaker_self 
    No no you still look super cute! Just forgot that you wear a headscarf these days (?) #speaker_1
    Does Gavin know btw? He should be ok with it right? #speaker_1
    #ui:scene
    #background:bg_nadia_selfiehijab.jpg
    It's never really come up with him. But he should be "okay with it"... right? #inner_monologue
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
#speaker_left_image:cha_nadia_gavin_date.png
#speaker_left_name:Gavin
Hi so sorry I’m late! #speaker_self
Hey! You look nice. #speaker_1
Oh! He’s reaching out for a hug. #inner_monologue
{nadia_2_confidenthijab: 
    + [Hug Gavin back ] -> nadia_2_2a1
    }
{not nadia_2_confidenthijab: 
    + [Hug Gavin back ] -> nadia_2_2a1
    + [Turn my shoulder to avoid] -> nadia_2_2a2
    }

= nadia_2_2a1
VAR nadia_2_huggavin = true
Gee thanks. You clean up well too. So where’s this cafe? #speaker_self
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
That I look.. different today, than how I would in school?	#speaker_self
True. I don’t think it’s a big deal. #speaker_left
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
Oh, it’s just, you know... #speaker_self
I’m wearing my hijab and it’s best not to be seen hugging when I have it on. 	#speaker_self
Ah! Noted. My bad. I will keep five steps apart from you at all times. #speaker_left
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
#speaker_left_image:cha_nadia_gavin_date.png
#speaker_left_name:Gavin
#speaker_right_image:cha_nadia_azlin.png 
#speaker_right_name:Azlin
This mall is such a maze. Where on earth is that cafe?
Wait a minute. Is someone calling my name?
Someone is definitely calling my name.
I know that voice. That’s...
We carry on making our way to the cafe. The mall is a maze to get through, when a familiar voice breaks through the crowd.	
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
K, just be steady... she salam me (traditional Muslim greeting), I salam her...  #inner_monologue
Oh dear. What is Gavin doing? #inner_monologue
...ah. #speaker_self
#speaker_left_image:cha_nadia_gavin_date_confused.png
What? #speaker_left
Uh, I'll have to talk to him later about this.#inner_monologue
Haha, it’s okay. #speaker_right
Hi kak, this is Gavin.	#speaker_self
Hi Gavin —	#speaker_right
PLEASE do not say “I’ve heard so much about you.”	#inner_monologue
#speaker_left_image:cha_nadia_gavin_date.png
Nice to meet you! #speaker_right
Oh thank goodness. Thank you Azlin. #inner_monologue
What are you guys doing here?	#speaker_right
We’re going to grab coffee.. There’s this halal cafe that just opened up.	#speaker_left
Yes, and Gavin’s suggestion actually! #speaker_self
#speaker_right_image:cha_nadia_azlin_naughty.png
Oh really? I thought you were more of a tea person, Nad.	#speaker_right
#speaker_left_image:cha_nadia_gavin_date_confused.png
huh?	#speaker_left
uh... I mean, I drink tea at home cos it’s there, but I do like.. Coffee.. At cafes.	#speaker_self
Ooh, fancy. No kopitiam kopi for you? #speaker_right
#speaker_left_image:cha_nadia_gavin_date.png
Kopi po siew dai. #speaker_left
Hmm? #speaker_right
That’s her usual order. At school.	#speaker_left
Haha ok ok, just teasing only.	#speaker_right
Gee, thanks. #speaker_self
You’re welcome! Ok, I’ll get to my errands now. Text me later!	#speaker_right
We’re in the clear! Oh no, Gavin is trying to salam her again... #inner_monologue
That’s right Azlin, just ignore and walk away. #inner_monologue
Did I miss something?	#speaker_left
Sorry about that. The salam thing - er, you don’t have to salam Azlin. #speaker_self
You don’t do that when you’re a guy and she’s...	#speaker_self
Wow. I am tripping up today.	#speaker_left
It’s fine, she was definitely more kaypoh to meet you. It’s nothing offensive or rude. #speaker_self
How come there are so many invisible rules?	#speaker_left
I wouldn’t say rules...	#speaker_self
Ok, not rules.	#speaker_left
Cultural... customs. Habits. Adat, which means behaviour of.. being polite.	#speaker_self
Social protocol. #speaker_left
Courtesy. #speaker_self
Code of conduct. #speaker_left
Ugh why must you make everything sound so formal?	#speaker_self
#speaker_left_image:cha_nadia_gavin_date_confused.png
(Bewildered) Well yeah, but it is. I had no idea Malay people were so formal. 	#speaker_left
Why, because we just sit downstairs at void deck with guitar all?	#speaker_self
Oi don’t put words in my mouth -	#speaker_left
— ok fine, but just because you don’t know about it doesn’t mean it doesn’t exist.	#speaker_self
And I’m just trying to understand how come I never knew any of this before.	#speaker_left
Because you’re not Malay!	#speaker_self
#speaker_left_image:cha_nadia_gavin_date.png
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
Snarky?	#speaker_left
Yes, that. I got defensive. #speaker_self
And I wasn’t criticising your.. culture.	#speaker_left
Anyway these things, it’s sort of - no need to say one. It’s just how we are around family. 	#speaker_self
You grow up with it. So when you were so confused by it, and suddenly I have to explain things that usually no need to say.. it rattled me, actually.	#speaker_self
I feel like an idiot saying this. But maybe only just now did I realise: eh, we really are very different. 	#speaker_self
Haha so I was kinda right, you really did just realise I’m Chinese. #speaker_left
You know what I mean! #speaker_self
Yeah, I do. I feel a bit of it. Funny huh, we spend some much time hanging in school. #speaker_left
This is a new feeling.	#speaker_left
I hate new feelings. #speaker_self
Well.. I hope not.	#speaker_left
(smiles) Ok. I don’t hate ALL new feelings. #speaker_self
(beams) Good. Can’t believe we bumped into your cousin. Are you sure she’s not stalking us? 	#speaker_left
+ [Let's hide - just you and me]
    I wouldn’t put it past her. How about we go hide somewhere? #speaker_self
    Do you still want coffee? 	#speaker_left
    Ooh I don’t know. How caffeinated do we want to be? #speaker_self
    Haha, you’re right - I feel quite awake already after all that. 	#speaker_left
    How about.. Somewhere quiet and chill? #speaker_self
    How about a silly movie? #speaker_left
    Oh! How about a scary movie? #speaker_self
    #ui:narrator
    #background:bg_nadia_mall.jpg
    We end up watching the latest Thai horror movie. 
    I think Gavin liked it. He grabbed my hand at a jump scare... 
    And didn’t let go for the rest of the movie.
    {nadia_2_huggavin: I didn't want him to.}
    -> nadia_2_3_narration

+ [No clue!]
    I hope not! #speaker_self
    Do you still want coffee?  #speaker_left
    Not if it means we’re going to be walking around this mall looking for the place, haha.  #speaker_self
    Yeah and it’s so crowded today! How about.. A movie?#speaker_left
    Yeah, why not! #speaker_self
    Something serious or silly?#speaker_left
    Silly, please.  #speaker_self
    #ui:narrator
    #background:bg_nadia_mall.jpg
    We end up watching a very strange and silly movie. 
    He didn’t try to hold my hand or anything. Everything was just comfortable, and.. nice.
    -> nadia_2_3_narration

=== nadia_2_3_narration ===
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
Maybe not now. I think.. I’d rather hear about your date  👀👫 #speaker_1
Ah! Haha yes, um it was nice. Normal.  #speaker_self
Wow, please hold back on the details!! 😂 #speaker_1
Ok fine, fine. Then you come down here la! #speaker_self
#ui:narrator
#background:bg_nadia_library.jpg
10 minutes later
#ui:scene
#background:bg_nadia_library.jpg
#speaker_left_image:cha_nadia_chloe.png
#speaker_left_name:Chloe
So.. how was date-day? #speaker_left
Kinda the same, kinda really different.. Did you see this coming? #speaker_self
Only like, finally. You guys have been into each other for ages! The banter is non-stop with you two. #speaker_left
Why didn’t you say anything!! #speaker_self
Cos I didn’t want to accidentally force something into happening, if it wasn’t going to happen.	#speaker_left
In case it doesn’t work out.. because she doesn’t think it will? #inner_monologue
Did he say anything about you know, wearing a headscarf?	#speaker_left
Strangely.. it went ok. I was so nervous! Who knows what he really thinks of it. But he didn’t freak out. So there’s that at least. #speaker_self
Are you sure you’re ok?	#speaker_self
Gah, I don’t know.  #speaker_left
It’s just so frustrating, I feel like I’ve been trying to do everything right but it’s still not going to be good enough. #speaker_left
What’s this about?	#speaker_self
I have.. been hoping to apply for overseas scholarships. #speaker_left
My mum keeps bugging me about it. So I’ve been asking some teachers. #speaker_left
Everybody is saying to just try la, what’s the harm right. But I don’t want to waste my time! #speaker_left
If my chances are going to be lousy, I want to know so I can figure something else out. #speaker_left
Argh, I hate that this is stressing you out. #speaker_self
I know right! My mum is convinced that it’s the route to go for.  #speaker_left
+[Why does your mum think this way?] -> nadia_2_3a
+[What do you think?] -> nadia_2_3b

= nadia_2_3a
Why is she so fixed on scholarships though? But is it though? #speaker_self
Well, all her friends keep talking about it too I guess.  #speaker_left
They have kids our age, in other JCs or already on scholarships. #speaker_left
It’s so weird how parents gossip!! #speaker_self
Tell me about it! I’ve never even met these guys, but I probably can tell you their life stories based on what my mum tells me.  #speaker_left
Who got through DSA, who transferred out, who didn’t get into med school here and now it’s costing a bomb to go overseas.. #speaker_left
Oh boy. Should I tell her about med school? #inner_monologue
+[Yes, maybe Chloe can help me.] -> nadia_2_3a1
+[No, this is about Chloe not me.] -> nadia_2_3a2

= nadia_2_3a1
VAR nadia_2_chloelibrarychoice = 1
Ok, I have to tell you something.  #speaker_self
What is it? #speaker_left
I’m going to try for med school too.  #speaker_self
Oh shit. Really? #speaker_left
Yeah.. is that crazy? #speaker_self
I mean, you know how tough it’s going to be.  #speaker_left
I’m going to try.  #speaker_self
Well of course! It’s really prestigious.  #speaker_left
The hours are mad long though, you’re gonna sacrifice a lot.  #speaker_left
That’s what they tell me on TV. #speaker_self
It’s real! And what if a patient DIES. I could never do it, and I don’t think you’re the GP doctor sort either. #speaker_left
I think it’s worth it.  #speaker_self
If somehow I get the grades to get into med school.. Then that’s the best use of it. You know? #speaker_self
If you get those grades, you could go anywhere! What about law? #speaker_left
Mmmph not my thing.  #speaker_self
I guess a Dr. Nadia does makes more sense for the universe. #speaker_left
-> nadia_2_3c

= nadia_2_3a2
~ nadia_2_chloelibrarychoice = 2
All this sounds really stressful.Well.. how do you feel about this scholarship situation? #speaker_self
Totally. It’s lLike I’m being pushed for something that I can’t really argue against.  #speaker_left
But you’re so good at arguing with your mom.  #speaker_self
Well this one isn’t as fun. I mean, it’s GOOD to get your name on a scholarship right? That means you’re someone. #speaker_left
Does it really matter? #speaker_self
Ya! Not that I like it, but it’s the game, and you gotta make smart moves.  #speaker_left
(Doubtfully) Ok, assuming you’re right.. why do you think you’re not in the game anymore? #speaker_self
So I was talking to the HOD just now about the scholarship I’m applying for. You know he’s the super honest type. No bullshit.  #speaker_left
Said that based on his past students and how they did.. I don’t have enough on my track record. #speaker_left
Woah, he really said that?! #speaker_self
Ya something along the lines of ‘showcase self-initiated community projects with impact’.  #speaker_left
Maybe I shouldn’t have spent all my time with hockey. Should have joined student council like you and Gavin.. #speaker_left
But you LOVE hockey. And you think student council people are annoying and idealistic.  #speaker_self
Correction - everyone else, aside from you and Gavin. #speaker_left
-> nadia_2_3c

= nadia_2_3b
~ nadia_2_chloelibrarychoice = 3
But what do you think? That’s the most important thing.  #speaker_self
You always say she ends up being right. #speaker_self
It’s so annoying! Like I’m being pushed for something that I can’t really argue against.  #speaker_left
Hmm.. Well.. d do you want a scholarship?how do you feel about this scholarship situation? #speaker_self
Well..That it’ll be really cool to study overseas.  #speaker_left
Right? You get to do that, and have a career set and planned.  #speaker_left
Would you still go overseas without a scholarship? #speaker_self
Maybe.. I think we could, but it really is so expensive.   #speaker_left
Oh boy. Med school is expensive too. #inner_monologue
Chloe, should I be looking at scholarships too? #speaker_self
I didn’t know you wanted to go overseas too! #speaker_left
Oh no, no, I’m probably going to stick to the local unis. But hoping to apply for.. med school. #speaker_self
Really? I guess I can see that happening.. #speaker_left
You think so?  #speaker_self
Yeah, sure. It is pricey though, I heard it’s like three times more than other degrees. #speaker_left
Three?? #speaker_self
Oh boy, and you’re also going to be doing more years in school too. The unis have scholarships too, you can try for that?  #speaker_left
I’ll look it up. #speaker_self
And financial assistance, I think.  #speaker_left
Right, that too.  #speaker_self
You know, and if somehow med school doesn’t work out.. I mean, they shortlist more than 1,000 applicants, then only offer less than 300 spots.  #speaker_left
There’s always.. nursing? #speaker_left
That’s not the same thing. #inner_monologue
Isn’t your cousin in nursing? That’s good right? #speaker_left
Yeah she is, but not through NUS. #speaker_self
Ah, right..  #speaker_left
Azlin worked HARD for her diploma.  #inner_monologue
Well I guess we’re both on the same track. #speaker_left
What’s that? #speaker_self
Making life more difficult for ourselves. #speaker_left
-> nadia_2_3c

=== nadia_2_3c ===
#ui:scene
#background:bg_nadia_library.jpg
#speaker_left_image:cha_nadia_chloe.png
#speaker_left_name:Chloe
Gee, thanks. Well.. scholarships are competitive, but so are you! Your essays are laser sharp.  #speaker_self
It’s not enough. Just wish I had a bit of an advantage.. Anyway, you won’t understand.  #speaker_left
Come on, try me. #speaker_self
Well, it’s different for you. You’ll probably have an easier time getting a scholarship too.  #speaker_left
I really don’t think so. #speaker_self
Nad, it’s easier for you to get into things.  #speaker_left
+ [Right.] -> nadia_2_3d
+ [What do you mean by that?] -> nadia_2_3e

=== nadia_2_3d ===
VAR nadia_2_confrontchloe = false
Right. #speaker_self
Argh it’s so unfair. You fill the quota, you know?  #speaker_left
No, I don’t know, Chloe. #inner_monologue
Anyway. I’ll figure it out.   #speaker_left
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
My mum just texted, says she needs me for something. You’re ok right? #speaker_self
Yeah, sure...  #speaker_left
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
#speaker_left_image:cha_nadia_chloe.png
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
#background:new_message_notification.jpg
A message from my Abah.
#ui:whatsapp
#background:whatsapp.png
#chat_group_title:Family Chatgroup
#chat_group_image:ico_nadia_rahman.png
#speaker_1_name:Abah
Huhu terjumpa (found) photo of Nadia when she was small 🌱👶🐛🦋 #speaker_1
#ui:scene
#background:bg_nadia_library.jpg
#speaker_left_image:cha_nadia_chloe.png
#speaker_left_name:Chloe
Anyway, I need to take this. #speaker_self
#ui:whatsapp
#background:whatsapp.png
#chat_group_title:Abah
#chat_group_image:ico_nadia_rahman.png
#speaker_1_name:Abah
#speaker_2_name:Azlin
#speaker_3_name:Cik Lina (aunt)
#speaker_4_name:Raihan (cousin)
[Thumbnail image: Nadia aged 6, dressed in a kid’s doctor’s coat. She is not looking at the camera. Instead, her full attention is to a teddy bear that she is examining with a toy stethoscope.]  #speaker_1
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
    #chat_group_title:Abah
    #chat_group_image:ico_nadia_family.png
    #speaker_1_name:Abah
    #speaker_2_name:Azlin
    #speaker_3_name:Cik Lina (aunt)
    #speaker_4_name:Raihan (cousin)
    Thank you Abah. I will try my best 🙏 #speaker_self
    -> nadia_2_3e1
+ [Ignore group chat, text Azlin instead.] -> nadia_2_3e2

===  nadia_2_3e1 ===
#ui:scene
#background:new_message_notification.jpg
A message from Azlin.
#ui:whatsapp
#background:whatsapp.png
#chat_group_title:Azlin
#chat_group_image:ico_nadia_azlin.png
#speaker_1_name:Azlin
Haha kembang seh #speaker_1
Wait what do you meannn #speaker_self
kembang, like you know, your head getting all big 🙃 oi i didn’t know your malay was this bad hahaha #speaker_1
I KNOW what kembang (flower) is, and I’m not okayy 😑 It’s just my dad la, he can be very over #speaker_self
lol memang. anyway joking only. u really are working for it. #speaker_1
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
#background:bg_nadia_playground.jpg
8.45pm, at a playground bench. 
This is where we always meet, ever since Azlin moved into the same neighbourhood as me.

-> nadia_2_4

=== nadia_2_4 ===
#knot:nadia_2_4
#ui:scene
#background:bg_nadia_playgroundnight.jpg
#speaker_right_image:cha_nadia_azlin.png
#speaker_right_name:Azlin
So.. are you sure this is not about Gavin? #speaker_right
No, it’s really not. #speaker_self
Sorry if I gave you a hard time that day when I bumped into you all. Hope I didn’t make it awkward.  #speaker_right
Don’t bluff, you were enjoying yourself.  #speaker_self
Ok I was, just a little. He seems nice, although when he - #speaker_right
- tried to salam you! I died a bit.  #speaker_self
But it was kinda cute. Clearly he knows who he needs to impress. Or try to. Smart guy.  #speaker_right
It wasn’t that awkward right? I explained to him afterwards, and it’s so weird to suddenly need to even explain these — #speaker_self
STOP. You’re obsessing. It was fine. Also I thought you said this wasn’t about Gavin. #speaker_right
You’re right. I need to unclench. I wanted to talk to you about... #speaker_self
+ [...what Chloe said.] -> nadia_2_4a
+ [... what my dad said.] -> nadia_2_4b

=== nadia_2_4a ===
#ui:scene
#background:bg_nadia_playgroundnight.jpg
#speaker_right_image:cha_nadia_azlin.png
#speaker_right_name:Azlin
VAR chapter_2_ending = 1
..what Chloe said. Like it doesn’t even make sense!  #speaker_self
I couldn’t even say anything back you know, I was stunned - like has she always felt this way? Is that really how she thinks? #speaker_self
Ok ok, one thing at a time. This Chloe person, your volleyball friend? #speaker_right
(Sigh) Hockey.  #speaker_self 
And this fight was about? #speaker_right
Well she’s been obsessing about scholarships and this afternoon, she was really ticked off by something. I was just trying to talk to her.  #speaker_self
Chloe said.. she thinks that I get accepted into things. Because I’m Malay. That I would fill their quota, so that’s why they would want me.  #speaker_self
Wait, who’s “they”? #speaker_right
I don’t even know! But Chloe thinks that I have it easier, that it’ll be easier for me to get into things, and that -  #speaker_self
- she has to work harder than you. That’s some crazy shit.  #speaker_right
It is, right? #speaker_self
Ya it is. I’m sorry Nad, but your friend - does she even live in the real world? Nonsense seh! #speaker_right
That’s what I couldn’t believe! She’s so level-headed, reasonable, I didn’t think she was so - #speaker_self
- sheltered?  #speaker_right
Not that. I didn’t think.. she would see race. Like we’re such good friends.  #speaker_self
She knows we both work super hard to get where we are. How can she think I have it easier?  #speaker_self
Does she also think we don’t have to pay school fees? Or that we get special treatment? #speaker_right
Do people still think that!  #speaker_self
I was digging around before I did my nursing diploma. Betul ke? What is this that people who are never Malay always like to say? #speaker_right
Isn’t it just one of those things taxi uncles like to complain about.  #speaker_self
I found out.. It’s half-true, which is always the problem kan.  #speaker_right
That doesn’t sound good.  #speaker_self
We don’t get free education. That rumour is just rubbish. BUT. There is a government subsidy.. if you’re Malay, and trying to get diploma or degree.  #speaker_right
How come we get subsidy? #speaker_self
I know kan. Asked myself that also, and then I saw the max household income if you nak qualify. You know how much? $2000.  #speaker_right
That’s not - #speaker_self
- ya, is not a lot. Like if you qualify kan, that means there wasn’t money floating around to anyhow get a diploma.   #speaker_right
But still.. why this special subsidy? And just for us? Because we’re what, native to Singapore? #speaker_self
No, Nadia. Because more of us, more Malay people, are poor.  #speaker_right
(Confused) That isn’t - I don’t think.. But we’re not poor because we’re Malay. #speaker_self
Ya obviously. You, me and the next door neighbour also know that.  #speaker_right
Doesn’t change the fact that when there’s a charity drive, and got photos on Facebook, the faces all Melayu.  #speaker_right
And when there’s somehow a success story -   #speaker_self
- then all over Berita Harian. Masyarakat Melayu boleh maju. Malay people can succeed! Haha, might be you next time. #speaker_right
Argh, I hope not.. I want to be a doctor. But I don’t want it to be a big deal because I’m Malay. Suddenly becoming a poster.  #speaker_self
It’s all the stories, with the money problems, the drug problems. Then, when there’s an achievement.. #speaker_self
They shout it out to the whole kampong. Look what this person managed to do! You can do it too!! #speaker_right
You managed also though. That says something kan? Put in the effort, work hard, and things get better.  #speaker_self
We’re all trying. It’s nothing special.  #speaker_right
Maybe other people don’t want to try hard enough.  #speaker_self
What? #speaker_right
Why are so many of us poor, until government give us special treatment? How come?  #speaker_self
I don’t know. But once you’re not doing well, with money problems, it’s harder to get out.  #speaker_right
But it’s also personal decisions, right? Maybe it’s other people and their decision-making that’s.. not good.  #speaker_self
Maybe always living beyond their means. Maybe a lot of them don’t know how to be responsible.  #speaker_self
(Getting pissed) Who are you talking about? #speaker_right
No one.. But you know, Cik Lina’s family - I know they have money problems, but when I see them, phones all macam baru je. #speaker_self
New phones, different models.  #speaker_self
That’s not our business, Nad.  #speaker_right
But it’s true though! Every Hari Raya also must change curtains.  #speaker_self
Your abah telling you these things? #speaker_right
It’s just something I noticed. #speaker_self
Ya something you noticed. Doesn’t mean you understand. How people spend their money is not our business. #speaker_right
Not if that’s why they keep being stuck! #speaker_self
Let me tell you something. Those phones kan, it’s all secondhand okay.  #speaker_right
It’s the thing that they can have and feel like everyone else. Have you ever met up with them? #speaker_right
No, I’ve been busy.. #speaker_self
Right. When you do, you meet them at MRT station. Because they’re on top-up, not phone plan.  #speaker_right
They want to use public wifi. They all work part-time. Do you? #speaker_right
I’m not, but that’s also why I’m not spending money anyhow.  #speaker_self
And your coffee latte or bubble tea all whatever, that one come from where? Pocket money from your abah kan.  #speaker_right
School fees? Next year when you go uni? #speaker_right
I can take my own bank loan - #speaker_self
- but you don’t have to. That’s the difference. They have “new” phones, but at home no internet. You know how difficult that makes school and work?  #speaker_right
I know my family has it easier. #speaker_self
Your family can afford to make decisions easier. You don’t have to calculate many small decisions just to make one big one.  #speaker_right
You don’t think I want to get a degree like you? I see my colleagues, they all can climb higher with degree.  #speaker_right
You thinking of doing degree next time? #speaker_self
How to? Now my income finally dah stable, if I go back to nursing school - who’s going to pay the house bills?  #speaker_right
See how that works? Because I’m being responsible, right? #speaker_right
Kak..  #speaker_self
When you don’t have much, it is so much more difficult to step up.  #speaker_right
Kak, I understand - #speaker_self
- no, just because you’re Malay doesn’t mean you understand. You and your father, always thinking you’re so different from the rest of us. #speaker_right
I don’t think I’m different.. #speaker_self
Sorry - not different. You think you’re better than the rest of us.  #speaker_right
That’s not true! #speaker_self
Maybe. I’m gonna go. I’ll see you around.  #speaker_right
-> nadia_2_reflection

=== nadia_2_4b ===
#ui:scene
#background:bg_nadia_playgroundnight.jpg
#speaker_right_image:cha_nadia_azlin.png
#speaker_right_name:Azlin
~ chapter_2_ending = 2
..what my dad said. He really open mouth only.  #speaker_self
It’s like that. Haha remember that time when he said - anyone can become a nurse.   #speaker_right
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
Sounds like my Maths teacher. Saying I’m good at the subject. “Very rare,” she said. How you tahan like that?  #speaker_self
You just hold your breath and smile. Shield up. Ignore their nonsense. Waste time only to get so worked up.   #speaker_right
But so geram! For Chloe to think I will have an easier time, that she has to work harder than me - when every day, I feel a bit... lost.  #speaker_self
Gavin and Chloe all have family and friends who went through JC, scholarships, uni. They know what’s coming up. I don’t, not really.  #speaker_self
Sorry I can’t help there.   #speaker_right
I don’t mean it that way! Without you around, I would feel even more alone.  #speaker_self
With all the stories from your work, at least I know I’m not really imagining things.  #speaker_self
It’s funny right. You can work harder than everyone else, but you slip up one time, or giving yourself a break, and in front of the wrong person -  #speaker_right
- they will think it’s because she’s lazy, or not very smart.  #speaker_self
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
..are there really HDB racial quotas? #speaker_self
Wow you JC kids really think far ahead ah.  #speaker_right
No, no way, not like that. It’s Chloe, she said I can get the scholarship easier just like how Malays get HDB ballots easier.  #speaker_self
Is that true? But Cik Lina had a hard time when she was applying for a flat.  #speaker_self
It’s hard for everyone la. People always think just because there’s a quota to buy a flat, that means we can always get any flat.   #speaker_right
People always want what they can’t have.   #speaker_right
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
It just wants you quiet and compliant. Penat you know? Focus on your A’s. Maybe Gavin is nice, but... Save yourself the heartache.  #speaker_right
// #speaker_right_image:pixel.png
// #background:new_message_notification.jpg
// A message from Gavin
// #ui:whatsapp
// #background:whatsapp.png
// #chat_group_title:Gavin
// #chat_group_image:ico_nadia_gavin.png
// #speaker_1_name:Gavin
// Hey wru? #speaker_1
// My church friend is down to meet this Sat. What say u? We can properly get coffee this time :) #speaker_1




-> nadia_2_reflection



=== nadia_2_reflection ===
#knot:nadia_1_reflection
REFLECTION TBC



-> nadia_3_intro


=== nadia_3_intro ===

-> END
