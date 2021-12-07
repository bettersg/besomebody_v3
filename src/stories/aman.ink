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
-> aman_1_1_narration 


// -> aman_holding_line

=== aman_holding_line ===
#knot:aman_holding_line
#ui:narrator
#background:bg_aman_intro.jpg
AMAN SINGH #title
Dear fans of ToBeYou.sg,
Over the past two weeks, we have received so much love from the community. Thousands of you have played it and shared such thoughtful and heart-felt responses to the game thus far. 
We have only released the initial chapters of two characters, and there’s much more to their stories, and many more characters on the way. I am excited for you to play them and to feel empathy for their journeys too.

However, there are some in the Sikh community who felt that the way in which one of our characters, Aman Singh, was presented was not respectful. They have given strong feedback to us and requested that we consider changing key parts of the story. 
We hear their concerns, and are in close consultation with the leaders of that community to address the issues. Allow us to also explain the philosophy behind the game and the way in which our stories are written.

ToBeYou's purpose is to share the experiences of different groups of Singaporeans, including the different experiences of people within a particular group. 
We hope that through exploring powerful identity dilemmas,  users will appreciate the complexity behind the choices others make, and engender empathy and goodwill for those around them. 

Firstly, our stories are written after substantial research. We do open source reading, we have an academic Research Advisor, and we hold multiple focus group discussions with members of the community. 
Our writers and editors are also closely connected to the community, and most are from those communities themselves. 
We do not put any value judgement on the choices that real people make, and we try to represent their dilemmas in our stories.

Secondly, our game is designed to explore different pathways that a person from that group may take. There are deliberately no right or wrong answers, no winning or losing outcomes, as in life. 
The pathways are deliberately designed to allow players to explore a variety of choices that shape the character, and mirror the diversity we see even within a community group. 
We do not favour or promote one pathway over the other. 
The choices that players make early in the game have consequences that will be played out in later chapters, and this is an important element of the story. Some of the choices that the character makes in the early chapters will have real and serious consequences later on. 
The objective of this is to let players experience those dilemmas first hand, and in the process, gain empathy for people who have a different identity, or have chosen pathways different from theirs.

// On the specific issue for Aman Singh’s story, there were some in the community who objected to the option of him not keeping his turban. During our interviews and focus group discussions, we heard stories from Sikh participants who struggled and sometimes eventually chose to cut their hair, for personal reasons. 
// The SAF does not require this, there are many who have kept their turbans and succeeded in NS, we understand what the Sikh faith says about this, and how strictly it is presented. 
// Nevertheless, there are Sikhs who do choose this path of not keeping their turban. There are prominent and valued Singaporeans who are Sikhs who have opted not to keep their turbans. 
// Many non-Sikh Singaporeans know too little about this wonderful community, but they see the visible differences between different Sikhs and may have questions about it. 
// Our game was designed as an attempt to educate, enrich, and engage all of these people. 
// The game offered both options to players (keep the turban, or not keep the turban), making it clear which is the one that is aligned with the faith before the decision, and showing the familial consequences of a choice that was not aligned with the faith. 
// In the reflections that players shared, none of the players came away with the impression that not keeping the turban was a convenient, light, or easy choice - the reflections that touched on this topic highlighted that they never knew how serious the issue was prior to the game.

// Unfortunately, the members of the community who objected to this option preferred a different approach altogether, while recognising our desire to encourage empathy and understanding for all members of a wonderful and diverse Sikh community. 
// We are in close consultation with the leaders of the Sikh community and will manage this delicate issue together. 

The purpose of this game is for us to gain empathy for people unlike ourselves, even though this may make us feel uncomfortable at times. 
At no point during the research, design, or development of the game and the story did we seek to undermine, judge, or challenge any belief system,  practice, or community. 
Our hope is to represent the lived experiences of real people, and to cherish them as human beings even if we disagree with their choices. 
It is difficult, but for Singapore to be better, we must learn to understand and accept these differences between people, even from within the same community. 

Aman Singh will be back soon. Thank you for your support and patience.

Regards,
The ToBeYou team

RETURN TO MAIN MENU


// -> END




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
#chat_group_image:ico_aman_zhihao.png
#speaker_1_name:Zhihao
#timestamp:21.34
bro tmr all ready? #speaker_1
Haha hey bro #speaker_self
+ [Yes, I'm ready] Yes. I think... #speaker_self
    lol you think?? #speaker_1
    gotta be more sure than that #speaker_1

+ [Not really...] Panicking a bit #speaker_self
    lol obv la!! #speaker_1
- gonna be tortureeeeee ☠️  #speaker_1
tekannnnnnnn ☠️☠️  #speaker_1
no gf, cannot cry to sel ☠️☠️☠️ #speaker_1
😡 don’t you have a Twitch stream to attend to? #speaker_self
making you stress is more entertaining #speaker_1
lol #speaker_1
okok fine #speaker_1
in all seriousness... #speaker_1
...it’s going to be hell. #speaker_1
hahahahahhaha #speaker_1
and i can’t imagine, with a turban #speaker_1
wash your uniform not enough #speaker_1
also have to wash turban #speaker_1
die la bro #speaker_1
CONFIRM DIE #speaker_1
Omg. Please leave this chat #speaker_self
hahahhaaha #speaker_1
okok  #speaker_1
good luck 💙 #speaker_1
🙏🏽  #speaker_self

-> aman_1_1a 

=== aman_1_1a ===
#knot:aman_1_1a
#ui:scene
#background:bg_aman_bedroom.jpg
#speaker_left_image:cha_aman_mama_concerned.png
#speaker_left_name:Mum
Aman? Are you done packing? Do you have everything you need, beta? (Term of endearment for child, or son.) #speaker_left
Yes, mum.   #speaker_self
Goggles? #speaker_left
Yes.  #speaker_self
Alarm clock, hair gel? #speaker_left
Yes.  #speaker_self
Underwear? #speaker_left
Yes!  #speaker_self
Extra underwear? #speaker_left
Mum!  #speaker_self
The government website says to bring extra underwear, you know. I went to research.  #speaker_left
If it’s not important, the government wouldn’t say EXTRA. #speaker_left
Yes mum, I have hills of underwear. Mountains.  #speaker_self
You are so cheeky to your mum. Where do you learn all these bad things? #speaker_left
+ [From you] People say I take after you, don’t they?   #speaker_self
    Nonsense, you look just like your Papa-ji. #speaker_left
    I mean in character, you know. #speaker_self
    You and he are more alike than you think. #speaker_left
    But Papa-ji is always so serious. #speaker_self
    Yes, but you have the same stubbornness inside. #speaker_left
    I’m not stubborn! #speaker_self
    #speaker_left_image:cha_aman_mama_happy.png
    (laughing) Well, if you insist. #speaker_left

+ [From Jothi] Jothi has corrupted me with her bad influence. #speaker_self
    #speaker_left_image:cha_aman_mama_happy.png
    (laughing) Now that, I can believe. #speaker_left
    Have you said goodbye to your sister yet? #speaker_left
    She was on the phone with Kirpal, but she said she’ll come say goodnight later. #speaker_self
    Ooh, they must be doing wedding planning. #speaker_left
    Yes, I heard something about booking a slot at the gurdwara (Sikh temple). #speaker_self
    Only six months left - they need to book right now or they will never get the slot they want.  #speaker_left
    I don’t know why this generation always likes to leave things late.  #speaker_left
- Ok, time to pack everything in... #speaker_self
-> aman_1_1b

=== aman_1_1b ===
#knot:aman_1_1b
#ui:whatsapp
#background:whatsapp.png
#chat_group_title:Extended Family Chat
#chat_group_image:ico_aman_extendedfamily.png
#speaker_1_name:Papa
#speaker_2_name:Uncle Ranjit
#speaker_3_name:Cousin Harpreet
#timestamp:21.52
Tomorrow our Aman is going into NS. We are all proud of him. #speaker_1
#ui:scene
#background:bg_aman_bedroom.jpg
What is Papa-ji doing? This is so unlike him. He never makes these grand speeches, let alone about me. #inner_monologue
#ui:whatsapp
#background:whatsapp.png
#chat_group_title:Extended Family Chat
#chat_group_image:ico_aman_extendedfamily.png
#speaker_1_name:Papa
#speaker_2_name:Uncle Ranjit
#speaker_3_name:Cousin Harpreet
🙏🏽 A noble time of life. Aman, remember that Sikhs have always been warriors and defenders. It is in our blood, in our history as a martial people. Do us proud! #speaker_2
#ui:scene
#background:bg_aman_bedroom.jpg
Wow, it can’t get more stressful than that. #inner_monologue
#ui:whatsapp
#background:whatsapp.png
#chat_group_title:Extended Family Chat
#chat_group_image:ico_aman_extendedfamily.png
#speaker_1_name:Papa
#speaker_2_name:Uncle Ranjit
#speaker_3_name:Cousin Harpreet
In fact, I am sure you will make it into OCS (Officer Cadet School). Just like our Harpreet! #speaker_2
🙌🏽 All the best Aman! #speaker_3
And don’t worry BMT is not that bad! haha  #speaker_3
Am sure you’ve been keeping fit etc   #speaker_3
#ui:scene
#background:bg_aman_bedroom.jpg
I take it back, it just got worse. Uh... #inner_monologue
#ui:whatsapp
#background:whatsapp.png
#chat_group_title:Extended Family Chat
#chat_group_image:ico_aman_extendedfamily.png
#speaker_1_name:Papa
#speaker_2_name:Uncle Ranjit
#speaker_3_name:Cousin Harpreet
Thanks everyone!
+ [I'll do my best]  🙏🏽🙏🏽 very touched by the support #speaker_self
    Will do my best 😅 #speaker_self
+ [I'll make you proud] Won’t let you down 🙏🏽 #speaker_self
- I know you will do well, son. #speaker_1

 -> aman_1_1c
 
 === aman_1_1c ===
 #knot:aman_1_1c
#ui:scene
#background:bg_aman_bedroom.jpg
#speaker_left_image:cha_aman_mama_concerned.png
#speaker_left_name:Mum
Why are you tap-tap-tapping away again, beta? Always got side-business going on. #speaker_left
Sorry, I had to reply to something. You’ll see later in the family chat with Uncle Ranjit and all. (sigh) #speaker_self
What’s wrong, beta? #speaker_left
Nothing’s wrong. #speaker_self
You think I raised you for 19 years and don’t know how to read your face? #speaker_left
Well… #speaker_self
VAR aman_1_nsworries = ""

+ [I'm just worried about not doing well]  I just don’t want to disappoint you all. #speaker_self
    ~ aman_1_nsworries = "not doing well"
    You know me, mum. I’m never the guy who’s the loudest in the room, or the one who assumes he should take charge.   #speaker_self
    I’m not Mr “OK Let’s Go” like Harpreet, or -   #speaker_self
    Aman, you stop right there. #speaker_left
    Do you think following the ways of the Khalsa (Sikh saint-soldiers) is about being Number One in the room?   #speaker_left
    About how fast you run, or how much you can lift, or how many men salute you when you walk past them?   #speaker_left
    
        ++ [I guess not] ...No, I guess not.  #speaker_self
        Then? #speaker_left
        But Papa-ji and Uncle Ranjit both did so well. Uncle Ranjit expects me to -   #speaker_self
        ++ [But it matters] No, but people do care about that kind of thing. #speaker_self
        Papa-ji and Uncle Ranjit both did so well in their time, and Uncle Ranjit especially - #speaker_self
        
    -- Uncle Ranjit, Uncle Ranjit. Is Uncle Ranjit going with you to NS? Will you be taking him to Tekong in your backpack? #speaker_left
    (Laughs) Okay mum, okay. You’re right. #speaker_self
    I know I am. #speaker_left
    #speaker_left_image:cha_aman_mama_happy.png
    You just focus on being yourself, and make sure you come home safely to me.   #speaker_left

+ [I'm worried about being the only Sikh there]     Maybe it’s just the ‘new school’ feeling. #speaker_self
    ~ aman_1_nsworries = "only sikh"
    Having to start in a new environment all over again, and being the odd one out.   #speaker_self
    The odd one out? #speaker_left
    You know, the only Sikh. #speaker_self
    Like how everyone will be wearing helmets, and I’ll be only one keeping the turban.   #speaker_self
    Is lying low what you want to do? #speaker_left
    Sorry, I know. I have to excel. #speaker_self
    Aman, I didn’t say that. #speaker_left
    I asked, what do you want to do?   #speaker_left
        VAR aman_1_nsgoals = ""
        
        ++ [Lie low]
        ~ aman_1_nsgoals = "lie low"
        Honestly, I just want to survive NS, mum. #speaker_self
        Then you do that, beta.  #speaker_left
        It’s all I want for you as well. To come home safe and sound. #speaker_left
        
        ++ [Do well]
        ~ aman_1_nsgoals = "do well"
        I’d like to do well, if I can. #speaker_self
        I know NS is a big deal, and means a lot to Papa-ji… #speaker_self
        But I am not asking what Papa-ji wants. #speaker_left
        Never mind Aman, you think about it. #speaker_left
        Just make sure you come home to me safely. #speaker_left

        ++ [I don’t know]
        ~ aman_1_nsgoals = "not sure"
        I haven’t figured that out yet. #speaker_self
        Well, if you don’t know what you want. #speaker_left
        (Laughs) You can’t fail, eh? #speaker_left
        
   -- As for worrying about being the odd one out. You know it is not your first time being unique, and it will not be your last time. #speaker_left
   #speaker_left_image:cha_aman_mama_happy.png
    Remember - Nirbhau (without fear), Nirvair (without hate). Maintain your chardikala (serenity regardless of adversity.)  #speaker_left
    Just be yourself, and everything will fall into place. Because you are a good person. And a good son.  #speaker_left
    Yes, I’ll remember. #speaker_self
    I’ll be fine, mum. Don’t worry.   #speaker_self
    Alright, beta. #speaker_left
- Now, are you sure you have enough underwear? There’s more downstairs, just out of the laundry - #speaker_left
Mum! Just let me finish packing okay? Goodnightttt. #speaker_self
Okay, okay. Goodnight, beta. I love you. #speaker_left
Love you too. #speaker_self

-> aman_1_2_narration


=== aman_1_2_narration ===
#knot:aman_1_2_narration
#ui:narrator
#background:bg_aman_bmtcampoutside.jpg
The next day, on Pulau Tekong.
Well, this is it. I’m on my own now.
I can’t believe it was just hours ago that Papa-ji and Mum brought me to the ferry terminal, and we took the boat here.
Turning in my NRIC for my 11B (military ID) felt like taking on a new life.
After we ate lunch in the cookhouse, we said our goodbyes. 
Thankfully Mum didn’t make a big deal about it. Papa-ji just patted me on the shoulder and gave a nod.
I miss Sel already. We only managed a few sweet messages and I-love-yous in the early morning hours. I wonder what she’s up to...

-> aman_1_2


=== aman_1_2 ===
#knot:aman_1_2
#ui:scene
#background:bg_aman_bmtcampoutside.jpg
#speaker_left_image:cha_aman_sergeant_normal.png
#speaker_left_name:Sergeant Ong
Amandeep Singh Sahota? #speaker_left
Yes, that’s me. #speaker_self
Should I be saying yes, sir? Yes, sergeant? I should have looked up this stuff on Reddit. #inner_monologue
So is your surname Singh, or Sahota? #speaker_left
+ [Singh] I’ll go by Singh... sir.  #speaker_self
+ [Explain the difference] Singh is my Sikh surname, Sahota is my ancestral name.  #speaker_self
    So? Which one? #speaker_left
    I’ll go by Singh… sir.  #speaker_self
- Okay Recruit Singh, listen up. #speaker_left
#speaker_left_image:cha_aman_sergeant_irritated.png
Firstly, you will address me as SERGEANT not SIR.  #speaker_left
If you forget it, you can read it on my name tag.  #speaker_left
If you forget how to read, then good luck to you. #speaker_left
#speaker_left_image:cha_aman_sergeant_normal.png
Inside your duffel bag, no helmet for you. Got green turban.  #speaker_left
Later, for the haircut. You are exempt. Just make sure you keep your hair neatly. #speaker_left
If anyone asks you, why Recruit Singh so special? You can refer them to me. #speaker_left
+ [Thank you]
    Thank you sergeant. #speaker_self
    #speaker_left_image:cha_aman_sergeant_irritated.png
    Oh please, you believe? Refer them to me for what?  #speaker_left
    You explain to them yourself. #speaker_left
+ [Will they ask?]
    Will they ask? #speaker_self
    #speaker_left_image:cha_aman_sergeant_irritated.png
    Wait ah, let me call my grandmother ask her… #speaker_left
    Oi! How I know?  #speaker_left
    Please lah, you are how old? I’m sure you know how to handle your own life. #speaker_left
- Oh boy. #inner_monologue
#speaker_left_image:cha_aman_sergeant_normal.png
Okay, all your items are in order. Bring your things to your bunk. #speaker_left
Yes sergeant. #speaker_self
Uh, which way is my bunk? #inner_monologue
Think quick, before I look like a fool… #inner_monologue
#speaker_left_image:pixel.png
#speaker_right_image:cha_aman_lukman_normal.png
#speaker_right_name:Lukman
Hey man, Section 3? Let’s go up together. #speaker_right
Oh, hi! Yeah, sure. #speaker_self
I’m Lukman. #speaker_right
Aman. #speaker_self
Cool. ‘Man and ‘Man. Can be buddies. #speaker_right
Hey, this guy is pretty cheesy. We might get along. #inner_monologue
#speaker_right_image:cha_aman_lukman_curious.png
So I overheard just now - you don’t have to cut your hair? #speaker_right
No, for religious reasons. #speaker_self
Oh! But you can still have short hair and keep your turban, right? #speaker_right
No, hair is sacred in Sikhism, so underneath, my hair is long. I’ve literally never cut it. #speaker_self
Seriously? I had no idea. #speaker_right
So... all Sikhs keep their hair long? How about the girls? #speaker_right
Yes, the girls are supposed to keep their hair long as well. Uncut hair is called the ‘kesh’ and it’s one of the symbols of the faith we’re supposed to keep - we call it the five ‘K’s. #speaker_self
But I guess like in every religion, there are differences, based on personal reasons. So not everyone keeps it long, like my sister. #speaker_self
#speaker_right_image:cha_aman_lukman_normal.png
Oh, got it. Some Muslim men also believe they should keep facial hair, but I don’t. #speaker_right
Are you worried about maintaining it in NS? #speaker_right
Maybe, but I’ll figure it out. Anyway, you’ll be helping me tie my turban, so it’s fine. #speaker_self
Yup! #speaker_right
Wait, what - ? #speaker_right
Okay set, you agreed! I’ll show you later! #speaker_self

#knot:aman_1_minigame
#ui:mcq
#game_id:1
Minigame 1 // must add some text

-> aman_1_3_narration



=== aman_1_3_narration ===
#knot:aman_1_3_narration
#ui:narrator
#background:bg_aman_bmtbunk.jpg
One week later.
The last week has been a blur.
We wake at dawn, we train, we fall into our bunks at night.
I manage to exchange a few messages with Sel most nights, before I sleep. It’s hard to talk much since I’m paranoid about running out of batt.
I’ve tried to remember Mum’s advice. To be myself.
It seems to be working out so far...

-> aman_1_3


=== aman_1_3 ===
#knot:aman_1_3
#ui:scene
#background:bg_aman_bmttoilet.jpg
#speaker_left_image:cha_aman_bunkmate2_mocking.png
#speaker_left_name:Matthias
#speaker_right_image:cha_aman_bunkmate1_mocking.png
#speaker_right_name:Ravi
Aman, don’t walk around with your hair like that leh.  #speaker_left
We all cannot sleep seeing your long hair in the dark, nearly to your waist. So scary! #speaker_left
#background:bg_aman_bmtmirrorsad.jpg
Am I very scary? #inner_monologue
Like hantu (ghost) sia. #speaker_right
Pontianak! #speaker_left
Woooooooo-oo-oooo! #speaker_left
+ [Ignore them] -> aman_1_3a
    
+ [Get annoyed] -> aman_1_3b
    
+ [Scare them!] -> aman_1_3c

= aman_1_3a
Control, control… #inner_monologue
#background:bg_aman_bmtmirrorsad.jpg
Time for shampoo advertisement. #speaker_left
(Singing) Everybody fling to the left, everybody fling to the right… #speaker_right
Aman, teach me how to tie hair in a bun leh, next time I can do for my girlfriend. #speaker_left
{aman_1_nsworries == "not doing well":
    Nirbhau (without fear), Nirvair (without hate), maintain my chardilaka (serenity regardless of adversity). #inner_monologue
}
{aman_1_nsworries == "only sikh": 
    Nirbhau (without fear), Nirvair (without hate), maintain my chardilaka (serenity regardless of adversity). #inner_monologue
}
Thank god, they’re finally losing interest and walking away. #inner_monologue
-> aman_1_3ab

= aman_1_3b
#background:bg_aman_bmtmirrorsad.jpg
I didn’t know you were so easy to scare. #speaker_self
If you’re scared, just don’t look. #speaker_self
Ooooh, why so serious, man. #speaker_left
Yeah, it’s just a joke. #speaker_right
You know my hair is long for religious reasons, right? #speaker_self
Better don’t joke lah, wait Aman call police, say you anti- religious harmony. #speaker_left
Wahhhh so serious. Okay Aman, don’t kill me. I have nothing against long hair... #speaker_right
These idiots. #inner_monologue
Yes, go on, walk away. #inner_monologue
-> aman_1_3ab

= aman_1_3ab
#background:bg_aman_bmttoilet.jpg
#speaker_left_image:cha_aman_lukman_curious_shorts.png
#speaker_left_name:Lukman
#speaker_right_image:pixel.png
Hey man, what was that about? #speaker_left
Oh, they were being fools. #speaker_self
You okay? #speaker_left
Yeah, I’m used to it. Same story since young, being teased. Happens all the time. I just thought people would be more mature in NS. #speaker_self
#speaker_left_image:cha_aman_lukman_shorts.png
I’m also not used to being around other people with my hair not covered. But my hair is wet, so what to do, right. #speaker_self
Screw them. They don’t matter. #speaker_left
-> aman_1_3_lukmanchat

= aman_1_3c
#speaker_right_image:pixel.png
#speaker_left_image:pixel.png
#background:bg_aman_bmtmirrorgrin.jpg
Oh, are they looking for a pontianak? I’ll give them something to remember. #inner_monologue
Let my eyes glaze over, slowly turn around… #inner_monologue
Advance on them, step by step... #inner_monologue
#background:bg_aman_bmtpotianak.jpg
Waaaaaahaha! Ouuaahhkeke! #speaker_self
#speaker_left_image:cha_aman_bunkmate2_afraid.png
What the --  #speaker_left
#speaker_right_image:cha_aman_bunkmate1_mocking.png
Ha! That was brilliant, dey. I was legit freaked out. #speaker_right
#speaker_right_image:pixel.png
#speaker_left_image:pixel.png
#background:bg_aman_bmtbunknight.jpg
Well, that seems to have settled them. Glad they’re turning their attention to something else now. #inner_monologue
#speaker_left_image:cha_aman_lukman_curious_shorts.png
#speaker_left_name:Lukman
Wow, what was that about! #speaker_left
#speaker_left_image:cha_aman_lukman_shorts.png
Didn’t know you can act so well, man! #speaker_left
When I saw you do that I was honestly shook. #speaker_left
Ha, thanks. I like acting. #speaker_self
I can tell bro. You’re super talented! #speaker_left
You shouldn’t have had to use it there though. Those guys were out of line. #speaker_left
Oh, that. #speaker_self
Yeah, I find that sometimes, humour is a useful way to just defuse the situation, when you don’t want to get into a fight. #speaker_self
I was pissed off, but it’s not like I want to start anything on an island in the middle of nowhere. #speaker_self
I’ve been teased about my turban since young, so all these - I guess you could call them coping mechanisms - are like second nature now. #speaker_self
Right. But then they’ll never learn, and they’ll think you’re fine with it. #speaker_left
That’s true… #inner_monologue
Maybe I shouldn’t have played along? #inner_monologue
They’d better not pull that crap again with me around, I tell you. Just because you’re a nice guy. They shouldn’t take advantage. #speaker_left

-> aman_1_3_lukmanchat 

=== aman_1_3_lukmanchat ===
#knot:aman_1_3_lukmanchat
#ui:scene
#background:bg_aman_bmtbunknight.jpg
#speaker_left_image:cha_aman_lukman_shorts.png
#speaker_left_name:Lukman
I’m really lucky to have a buddy. #inner_monologue
Hey, time to fold my turban to wear tomorrow. You want to help? #speaker_self
Can. Wait, let me remember what you said… fold in half first, right? #speaker_left
Yes, correct. #speaker_self
Then another half… yes, like that. #speaker_self
Then one third. #speaker_self
Now, hold tightly and I will fold towards you… #speaker_self
OK, done. Thanks! #speaker_self
Anytime, bro. #speaker_left
I’m really glad you have my back in here. #speaker_self
Don’t mention it. Anyway, you’ve had mine too. #speaker_left
I have? #speaker_self
Yes, of course. #speaker_left
With you around, I don’t have to be the only one in our section who eats in the Halal area of the cookhouse. You don’t have to eat Halal food, but you accompany me. #speaker_left
Well, it’s also because I’m not used to Chinese food... #inner_monologue
You’re always reminding me to hydrate when I push myself too hard. #speaker_left
That’s just normal decency, but okay... #inner_monologue
#speaker_left_image:cha_aman_lukman_determined_shorts.png
When I told you I wanted to try for OCS, you didn’t laugh or accuse me of trying to be wayang, but you said you thought I had potential. #speaker_left
But you do! #speaker_self
See? #speaker_left
I don’t want to tell the rest about the OCS thing, they’d make fun of me for trying. Plus, my grades are okay but they’re not that high. And people also say it’s harder to get into some positions as a Malay-Muslim. #speaker_left
Really? But I thought there are Malay fighter pilots and Generals? #speaker_self
Yeah, there are some. It’s just... rare. #speaker_left
To be fair, I think things are slowly getting better. At least now we can go on ships. #speaker_left
Huh? Why couldn’t you go before? #speaker_self
No Halal kitchens, supposedly. #speaker_left
#speaker_left_image:cha_aman_lukman_sad_shorts.png
But if you read comments about Muslims in the military online, it’s damn toxic. There are people who think we won’t be loyal to Singapore. #speaker_left
So is it about my diet, or is it about my loyalty?

+ [I'm sure there are reasons for this] It’s hard to understand, but I guess there must be reasons why some people came to think this way. #speaker_self
    Not saying they’re right at all, but mindsets take time to change. #speaker_self
    Maybe there’s a reason that makes sense to them generally. But it sucks because it makes no sense to me personally. #speaker_left
    This country means something to me. #speaker_left
    My ancestors were probably here before this place was called Singapore. #speaker_left
+ [Things should change faster] I’m sorry bro, things shouldn’t be this way.  #speaker_self
    Loyalty to Singapore isn’t about race or religion. Mindsets should move on. #speaker_self
    This kind of thing can only change slowly.  #speaker_left
    Then you see what generation you are born in, whether you are lucky or unlucky to suffer from this kind of mindset. #speaker_left
- But this is my struggle to fight la. No use complaining tonight.  #speaker_left

#speaker_left_image:cha_aman_lukman_shorts.png
Eh for you how? You haven’t said what you want - command school or slack? #speaker_left
I haven’t decided yet. I mean, I’ll do what I can. #speaker_self
Still early days. How about after NS? #speaker_left
After? Er, I’m going into business school. #speaker_self
You don’t sound so happy about that. #speaker_left
Er, it’s okay lah. Honestly, if I could do something else, I might consider it. #speaker_self
Like what? #speaker_left

+ [Confide in him about your dream] I’ve actually been thinking about trying… acting? #speaker_self
    VAR aman_1_sharedreamslukman = true
    Whoa. Not bad huh, Aman Got Talent. #speaker_left
    Hurr. Not sure about talent, but I’ve always been in drama since young. #speaker_self
    I like acting. People say I’m good at it, and I like how I feel when I do it. #speaker_self
    How does it feel? #speaker_left
    It’s going to sound really weird and philosophical. #speaker_self
    Try me. #speaker_left
    So… acting is about pretending to be someone else, right? #speaker_self
    But when I act, I feel like I’m being me. #speaker_self
    Like I’m putting myself on the line.  #speaker_self
    The parts of me that feel the same emotions my character feels, think the same way my character thinks. #speaker_self
    In real life, we’re always presenting ourselves the way we want to be seen.  #speaker_self
    When I’m acting, it’s like... I’m revealing the way I am, and the way I am is… seen. #speaker_self
    Oh damn bro, that’s cheem.  #speaker_left
    (laughs) I know, right. #speaker_self
    
+ [Hesitate to share] Top secret. #speaker_self
    ~ aman_1_sharedreamslukman = false
    Wah lao, like that also can. #speaker_left
    What I would really want to do is act. #inner_monologue
    After NS, the plan is to go for some casting calls, maybe do some headshots and demo reels… #inner_monologue
    But I’m not ready to say all of that out loud. #inner_monologue
    Work in progress, akan datang (coming soon) bro. #speaker_self
    Okay man, keep me posted. #speaker_left

- Crap, we talked until so late. Time to crash. (Yawns) #speaker_self
You’re right. Goodnight! Let’s slay it tomorrow. #speaker_left
Finally, blessed sleep… #inner_monologue
Wait, what am I forgetting… #inner_monologue
Oh right! Sel! #inner_monologue
Quick, turn on my phone. I can only spend 10 minutes max. #inner_monologue

-> aman_1_3_selchat

=== aman_1_3_selchat ===
#knot:aman_1_3_selchat
#ui:whatsapp
#background:whatsapp.png
#chat_group_title:Sel 😍😍 
#chat_group_image:ico_aman_selinder.png
#speaker_1_name:Selinder
#timestamp:22.49
Jaan (term of endearment) how was your day? #speaker_1
#ui:scene
#background:bg_aman_bmtbunknight.jpg
Where do I even begin? I’m so exhausted… #inner_monologue
#ui:whatsapp
#background:whatsapp.png
#chat_group_title:Sel 😍😍 
#chat_group_image:ico_aman_selinder.png
#speaker_1_name:Selinder
It was good bb, how about yours? #speaker_self
Hey there you are!! 😍 #speaker_1
Mine was OK, still waiting to hear back on jobs  #speaker_1
There’s one accounting position that looks possible #speaker_1
And a couple of finance admin jobs in govt agencies #speaker_1
You’re gonna be a career woman huh, way ahead of me… #speaker_self
Don’t be silly jaan. Well, maybe at first #speaker_1
But you are going to university remember, and doing business #speaker_1
So you will be the big dollars man. 🤪 #speaker_1

+ [Maybe] Gotta work for my bb, I know #speaker_self
    VAR aman_1_selinderchat = ""
    ~ aman_1_selinderchat = "maybe"
    😘 #speaker_self
    I meant it about you being a career woman though, you shouldn’t hold yourself back at all while I’m stomping mud on this island #speaker_self
    I know how talented you are #speaker_self
    Yes I also know #speaker_1
    🤣🤣 #speaker_1
    I’m not sure I want that life though #speaker_1
    I definitely want to work. At least for now #speaker_1
    But it will also be nice to live a quiet life #speaker_1
    Meditate. Gardening. Take care of kids #speaker_1
    Every day go to langgar hall (Sikh communal kitchens, in gurdwaras) and volunteer #speaker_1
    Prep food for worshippers, the needy… #speaker_1
    Oh dear #speaker_1
    You have gone v v quiet #speaker_1
    Have I scared you #speaker_1
    #ui:scene
    #background:bg_aman_bmtbunknight.jpg
    No, I’m just dozing off, I’m incredibly tired… #inner_monologue
    #ui:whatsapp
    #background:whatsapp.png
    #chat_group_title:Sel 😍😍 
    #chat_group_image:ico_aman_selinder.png
    #speaker_1_name:Selinder
    No jaan #speaker_self
    You can’t scare me off #speaker_self
    There’s no right or wrong about it, you just go for the life you want #speaker_self
    #ui:scene
    #background:bg_aman_bmtbunknight.jpg
    But I’m not sure I can give it to you… #inner_monologue
    Never mind, it’s too early to think about that. #inner_monologue
    #ui:whatsapp
    #background:whatsapp.png
    #chat_group_title:Sel 😍😍 
    #chat_group_image:ico_aman_selinder.png
    #speaker_1_name:Selinder
    I love you so much #speaker_self
    ... but I have to sleep now #speaker_self

+ [Maybe Not] Oh? What if I don’t end up doing business in the end? #speaker_self
    ~ aman_1_selinderchat = "maybe not"
    I’ll still love you #speaker_1
    What if I don’t earn any money? #speaker_self
    Still love you #speaker_1
    What if I become an actor and play a leading man in a romance drama with a v v pretty actress? #speaker_self
    Ok, bye #speaker_1
    🤣🤣🤣 #speaker_1
    Really, what a strange and highly specific question #speaker_1
    Do you have some life goals I don’t know about? #speaker_1
    
        ++ [Yes, acting.]
        Well, nothing in stone, but I was thinking of taking acting a little further #speaker_self
        Really??? #speaker_1
        I know you are v v good, I’ve seen all your performances #speaker_1
        So proud of you #speaker_1
        But jaan… professionally? That’s a big step #speaker_1
        #ui:scene
        #background:bg_aman_bmtbunknight.jpg
        I shouldn’t have started this conversation, I can’t finish it tonight. #inner_monologue
        It sounds like she has doubts, I don’t blame her. #inner_monologue
        #ui:whatsapp
        #background:whatsapp.png
        #chat_group_title:Sel 😍😍 
        #chat_group_image:ico_aman_selinder.png
        #speaker_1_name:Selinder
        Yeah I know jaan #speaker_self
        We can talk about it more, but I really have to sleep now #speaker_self
        
        ++ [Possibly...]
        Mayyyyybe. 🤪 #speaker_self
        Whaaaaaaat #speaker_1
        I thought I knew you completely jaan 😭 #speaker_1
        You’ve been holding out #speaker_1
        #ui:scene   
        #background:bg_aman_bmtbunknight.jpg
        I shouldn’t have said anything, now I can’t finish telling her. #inner_monologue
        #ui:whatsapp
        #background:whatsapp.png
        #chat_group_title:Sel 😍😍 
        #chat_group_image:ico_aman_selinder.png
        #speaker_1_name:Selinder
        Hahaha don’t worry Sel #speaker_self
        My only goals right now are to make you smile #speaker_self
        Jaaaaaaaan 😍😍 #speaker_1
        I’m smiling #speaker_1
        Me too #speaker_self
        Let’s smile together #speaker_self
        😍😍 I didn’t know in NS they teach you all the sweet things #speaker_1
        Hahaha #speaker_self
        No jaan these things come naturally to me #speaker_self
        🤣🤣 #speaker_1
        Ok sorry bb, I have to sleep. #speaker_self
    -- Lights out already     #speaker_self

- Oh yes it’s late… #speaker_1
Miss you so much. 😘 #speaker_1
Me too jaan #speaker_self
Won’t hold you up #speaker_1
Goodnight bb #speaker_1
Night night 🥰🥰 #speaker_self

-> aman_1_4_narration


=== aman_1_4_narration ===
#knot:aman_1_4_narration
#ui:narrator
#background:bg_aman_ordturban.jpg
NS was tough.
There were bad days, worse days, and a few good ones sprinkled around.
{aman_1_nsgoals:
- "lie low": I tried to keep a low profile for the most part, but being the only one with a turban made that tough.
- "do well": I pushed myself to do well, and I did - but it was hard, and there were days I felt like giving up.
- "not sure": I wasn't sure what I wanted to achieve coming into NS, so I mostly just focused on surviving it.
}
This selfie was a happy memory - my parents and Sel came by for my Passing Out Parade after BMT.
I became a combat medic. I didn't make it to OCS, but I got promoted to be a Third Sergeant!
{aman_1_nsworries:
- "only sikh": Being the only Sikh in my platoon wasn't easy, but some people had it much harder than I did.
- "not doing well": I guess I didn't need to be worried about not doing well - NS was about proving myself to me, not to others.
}
I think it worked out for the best. Being a medic felt right to me.
Lukman didn’t get into OCS either. But he worked hard as a Transport Operator and eventually got his 3SG rank, same as me.
Jothi got married to Kirpal mid-way and moved in with him. I weirdly miss having her around home on the weekends.
But we still see each other often, and she joins us for dinner sometimes.
#background:bg_aman_indianrestaurant.jpg
Two years later. #title
My last day of NS was yesterday. I'm a free man today. And it feels... liberating!
But I'll need to start confronting my future now, which is something I've been putting off. 
First, it's time to celebrate with the family. I'm hungry!

-> aman_1_4


=== aman_1_4 ===
#knot:aman_1_4
#ui:scene
#background:bg_aman_indianrestaurant.jpg
#speaker_left_image:cha_aman_mama_happy.png
#speaker_left_name:Mum
#speaker_right_image:cha_aman_jothi_normal.png
#speaker_right_name:Jothi
Wow, this place is atas (fancy). #inner_monologue
Papa-ji and Mum really pulled out all the stops just to celebrate my ORD (Operationally Ready Date). #inner_monologue
Congratulations, Third Sergeant Amandeep Singh Sahota! #speaker_left
You are a senior medic who saves lives! #speaker_left
Mum, your voice is a bit uh, loud... #speaker_self
Let everybody hear! #speaker_left
(Loudly) Fellow diners, my son has served his NS! #speaker_left
(Even more loudly) And his biceps are STILL BIGGER THAN HIS BRAIN! #speaker_right
Eh please!! #speaker_self
Good grief, this family. #inner_monologue
Papa-ji hasn’t said much tonight. But he’s always quiet, hard to read. #inner_monologue
I wonder if he wishes I had gotten into OCS instead? #inner_monologue
When I told him I was assigned to SCS (Specialist Cadet School) to be a medic, he just nodded and went back to his newspaper. #inner_monologue
Our Aman has big biceps and excellent brains. That’s why Selinder is hanging on to him. #speaker_left
Mum, it’s more like the other way around. #speaker_self
Oh, young love. It’s so disgusting. #speaker_right
Behave yourself, beta. How old are you already, and still bullying your brother like you are teenagers. #speaker_left
I married out of the house, mummy. Now I rarely get to make Aman suffer, so I must maximise every chance I get. How is this not intuitive? #speaker_right

+ [Huh, what logic?!] My dear sister, you seem to be going through a dark time. #speaker_self
    Is your mid-life crisis everything you thought it would be? #speaker_self
    #speaker_right_image:cha_aman_jothi_angry.png
    Excuse me, mid-life?! MID, LI - #speaker_right

+ [Your poor spouse!] Boy, Kirpal must have a fun married life. #speaker_self
    And I must have fun while I skewer you with this for - #speaker_right
- Children! Mera ser na kayi ja (“Stop eating my head”)!  #speaker_left

#speaker_right_image:cha_aman_jothi_normal.png
Ha, fine. Aman knows I’m kidding. #speaker_right
I’m proud of you, chote veer (younger brother). #speaker_right
Why thank you, penji (elder sister). #speaker_self
Where’s Selinder, by the way? I thought she was supposed to join us tonight? #speaker_right
Oh, she’s working late.  #speaker_self
She says she’s sorry, she wanted to have dinner with us, but her whole team is staying back so she felt like she couldn’t leave. #speaker_self
Aw, so sad. Same story for Kirpal. I think Kirpal might join us for dessert though. He has a sweet tooth! #speaker_right
But didn’t you say Selinder was miserable at her job? She’s still there? #speaker_right
Yes, she always says once she can afford to quit, she’ll quit. She’s not a fan of corporate life. #speaker_self
I don’t get it. I love working. I couldn’t stand to be home all day. #speaker_right
Not working doesn’t mean she’ll be at home all day.  #speaker_self
Sel is just a quiet soul, she’d rather spend her time doing her own things and volunteering. #speaker_self
No, don’t get me wrong, more power to her. Oh look - our food is here. #speaker_right
Everything is delicious - parathas, shahi paneer, tandoori aloo. #inner_monologue
The silence is comfortable, as we eat. Enjoying good food, in good company, on a good night... #inner_monologue
#speaker_right_image:cha_aman_papa_normal.png
#speaker_right_name:Papa
(Clears throat) So, son. #speaker_right
Uh-oh, what’s coming? #inner_monologue
Yes, Papa-ji? #speaker_self
You have some months before university starts. You should make good use of your time. #speaker_right
What are your plans? #speaker_right
...Casting calls. Auditions. #inner_monologue
But I can’t tell him that, right? He’s not going to think that’s a good use of time. #inner_monologue

+ [No real plans] I haven’t really made plans, Papa-ji. #speaker_self
    Idling is no good, beta. #speaker_right
    Yes, I won’t be idle, I will be doing… things. #speaker_self
    Things? What things? #speaker_right
    
+ [Side projects] Just this and that, Papa-ji. Side-projects. #speaker_self
    Side-projects? #speaker_right
    What are these side-projects? #speaker_right

- Uh... #speaker_self
VAR aman_1_familydinner = ""

+ [Acting] -> chapter_1_ending_1
    
+ [I'll think of something] -> chapter_1_ending_2
   


=== chapter_1_ending_1 ===
#knot:chapter_1_ending_1
#ui:scene
#background:bg_aman_indianrestaurant.jpg
#speaker_left_image:cha_aman_mama_happy.png
#speaker_left_name:Mum
#speaker_right_image:cha_aman_papa_normal.png
#speaker_right_name:Papa
Take a deep breath, Aman. #inner_monologue
I know this may be a surprise, but I was thinking of trying out some professional acting. #speaker_self
#speaker_left_image:cha_aman_mama_concerned.png
~ aman_1_familydinner = "acting"
VAR chapter_1_ending = 1
... #speaker_left
... #speaker_right
Acting? #speaker_left
Oh no. #inner_monologue
I can’t read Papa-ji’s face at all. #inner_monologue
Yes, I was thinking of auditioning for some plays, or television work. I like acting, and I.. I’m good at it. So I would like to try. #speaker_self
They’re so quiet. #inner_monologue
Maybe Jothi will save me…? #inner_monologue
#speaker_right_image:cha_aman_jothi_diva.png
#speaker_right_name:Jothi
Well, this sounds like a terrible idea. #speaker_right
Wait, what? Why? #speaker_self
What do you mean, why? Isn’t it obvious? #speaker_right
How many roles do you think are out there for people who look like you?  #speaker_right
Look like me? #speaker_self
Yes Aman, people who look like you.  #speaker_right
Who keep the kesh. Who wear turbans. With brown skin. #speaker_right
It’s hard enough to find roles for minorities, you think you’ll be able to find roles for minorities-within-minorities?  #speaker_right
Indians who are Sikhs? #speaker_right
Wow. #inner_monologue
It’s not like I hadn’t thought about this at all before.  #inner_monologue
But I thought Jothi, of all people, would support me on this. #inner_monologue
I’m sorry Aman, you know me, I’m just being honest.  #speaker_right
I’m your sister and I can’t lie to you. You are going to have a very tough time. #speaker_right
My food tastes like ash. #inner_monologue
And Papa-ji still hasn’t said anything. #inner_monologue
Well… err. #speaker_left
Beta, I’m sorry, I was just very surprised. #speaker_left
We all knew you were talented, but we thought it was just a hobby. #speaker_left
#speaker_left_image:cha_aman_mama_happy.png
I believe in you, son. And Jothi, you should be more supportive of your brother. #speaker_left

+ [It's fine] It’s fine mum, Jothi is just saying what she thinks. #speaker_self
    She’s not entirely wrong, I’m not an idiot. I just want to try. #speaker_self
    Why set yourself up for failure? #speaker_right
    If I never fail then I’ll never succeed! #speaker_self
    Wow, nice motivational poster, that’ll - #speaker_right
    #speaker_right_image:cha_aman_papa_stern.png
    #speaker_right_name:Papa
    Enough, Jothi.
    Is that all he’s going to say? #inner_monologue

+ [I'll prove her wrong] No, she’s not obliged to agree with my choices. And I know I’ll have a tough time. #speaker_self
    You’re wrong though, Jothi - it’s not a terrible idea. It’s just an idea you don’t agree with. #speaker_self
    But this is my path and I’m going to pursue it. #speaker_self
    You are in for disappointment, Aman. #speaker_right
    And you are in for a surprise. #speaker_self
    Aman… #speaker_right
    Enough, Jothi, this is for Aman to choose. #speaker_left
-   Son, we support you no matter what. Go ahead and try. Just give it your best. #speaker_left
I will, mum.  #speaker_self
There’s no turning back now. #inner_monologue

-> aman_1_reflection

=== chapter_1_ending_2 ===
#knot:chapter_1_ending_2
#ui:scene
#background:bg_aman_indianrestaurant.jpg
#speaker_left_image:cha_aman_mama_happy.png
#speaker_left_name:Mum
#speaker_right_image:cha_aman_papa_normal.png
#speaker_right_name:Papa
I haven’t decided yet. #speaker_self
~ aman_1_familydinner = "something"
~ chapter_1_ending = 2
Could I sound any more pathetic? Someone rescue me. #inner_monologue
You should spend more time with Selinder, beta. #speaker_left
You’ve lasted three years already, and she has stayed with you since you were schoolmates, all throughout NS. #speaker_left
She’s a good girl. And I like her parents too, they always say hello to us at the gurdwara. #speaker_left
Are you serious with this girl? #speaker_right

+ [Yes]
    Yes Papa-ji, I am. #speaker_self
    Ahhhhhhh. #speaker_left
    I don’t like that look in mum’s eye. Like she’s counting the years between imaginary grandkids. #inner_monologue
    Then Aman, you must take the next few years very seriously. #speaker_left
    Study hard, and get yourself established. Then you can take the next step. #speaker_left
    Yes. If you are serious, don’t make the girl wait too long. #speaker_right
    But what about acting? #inner_monologue
    Never mind. It’s too late to say anything. #inner_monologue
    
+ [We're only 21]
    I like her a lot, but I know we’re still young. #speaker_self
    Oh, your Papa-ji and I were young when we got married. Well, he was older, but I was only twenty-two. That’s why I’m still young now. #speaker_left
    Although, the two of you have given me many grey hairs before my time. #speaker_left
    Well. Think about it, son. You are young, but already a man. #speaker_right
    So if you are serious about the girl, then be serious with your life. #speaker_right
    But I am! I’m serious about acting. #inner_monologue
    How do I tell them - #inner_monologue
    Never mind. It’s no use. #inner_monologue

- Yes Papa-ji. I understand. #speaker_self
I’ll just have to do this on my own. #inner_monologue

-> aman_1_reflection

=== aman_1_reflection ===
#knot:aman_1_reflection
#ui:chapter_reflection
#reflection_id:1
Reflection 1



-> aman_2_intro










// CHAPTER 2





=== aman_2_intro ===
#knot:aman_2_intro
#ui:narrator
#background:bg_aman_intro.jpg
A month has flown by since I completed NS, and uni is around the corner.
I haven’t wasted a single day.
Each night I search for casting calls, and I’ve applied for dozens and dozens of roles...
Sometimes, I hear back!
But it’s always the same refrain:
‘Sorry, we’re looking for pan-Asian features.’
‘Sorry, can you shave your beard?’
‘Sorry, we need a more relatable look.’
Sorry. Sorry. Sorry!
{aman_1_familydinner: 
- "acting" : It’s hard to think that Jothi might be right.
    But I tell myself it’s early days, too early to give up. 
- "something" : Maybe it’s a good thing I didn’t tell my family about this.
If they don’t know I’m trying, they don’t have to know I’m failing.
}
~ chapter_id = 2
//reset chapter 2-5 variables
CHAPTER {chapter_id} #title
Price of Admission #title


-> aman_2_1_narration 


=== aman_2_1_narration ===
#knot:aman_2_1_narration
#ui:narrator
#background:bg_aman_beach.jpg
Saturday morning.
It’s just sad that all this has eaten into my time with Sel. She deserves better.
It’s a beautiful day on the beach, and I can’t even focus on her fully.

-> aman_2_1

=== aman_2_1 ===
#knot:aman_2_1
#ui:scene
#background:bg_aman_beach.jpg
#speaker_left_image:cha_aman_selinder_normal.png
#speaker_left_name:Selinder
Jaan? What are you looking at on your phone? #speaker_left
#background:bg_aman_casting_calls.jpg
#speaker_left_image:pixel.png
hmm #inner_monologue
uh-huh #inner_monologue
Oh... #speaker_self
VAR aman_2_selinderfocus = ""
+ [Sorry, let's focus on us.] -> aman_2_1_1a
+ [These casting calls. ] -> aman_2_1_1b

= aman_2_1_1a
#background:bg_aman_beach.jpg
#speaker_left_image:cha_aman_selinder_normal.png
#speaker_left_name:Selinder
Nothing, sorry about that. #speaker_self
~ aman_2_selinderfocus = "us"
Are you sure? #speaker_left
Yes jaan, don’t worry about it. Today is just about you and me. #speaker_self
Aww, thank you. I’ve really needed this. #speaker_left
What do you mean? #speaker_self
Just… this. Being here. On a beach. With you. Away from things. #speaker_left
What’s wrong? #speaker_self
#speaker_left_image:cha_aman_selinder_sad.png
I think I’m really not cut out for this job. #speaker_left
I’m working late into the night, every single night, taking on duties that are way over my head. #speaker_left
They say they want to ‘stretch’ my potential, but they clearly don’t want to ‘stretch’ my pay. #speaker_left
They use the fact that I’m a Poly grad to justify it, you know? They say it’s ‘market rate for Poly grads’ - like, come on. Why can’t they pay me ‘market rate’ for my performance? #speaker_left
And my boss. She expects me to read her mind, and she gets mad if I don’t. #speaker_left
She’s always coming after me about the smallest things. The other day she said she wants me to start meeting clients, so I should try to look more ‘presentable’ and ‘modern’. #speaker_left
She started dropping hints about hair salons and places where you can get your eyebrows trimmed. And she kept sneaking these weird looks at my kara (steel bangle, Sikh article of faith). #speaker_left
Seriously? Did you explain it to her? #speaker_self
#speaker_left_image:cha_aman_selinder_annoyed.png
No, it was all very subtle, you know? Nothing that I could really point to. Like she didn’t outright ask me to cut my hair or change my dressing. So I didn’t want to come across as over-sensitive. #speaker_left
She’s always saying she has no tolerance for bad attitudes. I don’t want to be on her hitlist. #speaker_left
This sounds like such a toxic work environment. #speaker_self
#speaker_left_image:cha_aman_selinder_sad.png
I know right, what era is this? #speaker_left
You should look for a different job. It’s not right. #speaker_self
Well, you know the money makes a difference for my family so I can’t just quit. But I’m applying around. #speaker_left

-> aman_2_1_2

= aman_2_1_1b
Sorry, I was just looking at these casting calls. #speaker_self
~ aman_2_selinderfocus = "casting"
#speaker_left_image:cha_aman_selinder_normal.png
#speaker_left_name:Selinder
Oh, you mean you’re still applying for those? #speaker_left
Yes, of course I am. #speaker_self
Sorry - I know you tried for one last week and it didn’t work out, so I thought that was that. #speaker_left
Which one is she talking about? I applied for like twenty roles last week. #inner_monologue
#background:bg_aman_beach.jpg
I guess you won’t get to do this sort of thing once uni starts, so it’s good that you’re trying now. #speaker_left
+ [... Right ] Oh, yeah… I guess so. #speaker_self
        I’ll just be glad to have your attention again. I feel like you’ve been so distracted. #speaker_left
    Really? Sorry about that... #speaker_self

+ [Actually, I'll keep trying. ]  I’m not actually planning to stop, jaan. #speaker_self
    #speaker_left_image:cha_aman_selinder_confused.png
    Really? How will you balance it with school? #speaker_left
    I’ll be okay, I can juggle my time. #speaker_self
    Are you sure? #speaker_left
    Of course. Where is this coming from? #speaker_self
    #speaker_left_image:cha_aman_selinder_sad.png
    Well it just seems like lately, we’ve barely had time together. I thought everything would get better after your NS, but it hasn’t. #speaker_left
 - Oh man... #inner_monologue
 
 -> aman_2_1_2
 
 
= aman_2_1_2 
#ui:notification
#background:ui_aman_message.jpg
Elsa: Hi Aman this is Elsa from Everyday Productions. Tks for your pics and showreel. We took a look and the showreel is strong. #message
#ui:scene
#background:bg_aman_beach.jpg
#speaker_left_image:cha_aman_selinder_confused.png
#speaker_left_name:Selinder
Yes - they liked it! This is promising. #inner_monologue
Who is it? #speaker_left
VAR aman_2_selinderquestion = ""
+ [Give me a minute] Hold on one sec, sorry. It’s a casting agent! She’s still typing... #speaker_self
    ~ aman_2_selinderquestion = "wait"
    {aman_2_selinderfocus:
    - "us" : Oh wow! I didn’t know you were still applying for auditions. Yes, better reply quickly. #speaker_left
    - "casting": ...Right.  #speaker_left
    #speaker_left_image:cha_aman_selinder_annoyed.png
    Of course. A casting agent. #speaker_left
    Boy, she sounds unhappy about something. I’ll figure it out later. #inner_monologue
    }
    -> aman_2_1_3

    
    

+ Nothing, I'll check it later []  #speaker_self
    ~ aman_2_selinderquestion = "nothing"
    {aman_2_selinderfocus:
    - "us" : Are you sure? You looked so excited. Who’s the other woman? #speaker_left
        Oi, don’t be cheeky! It’s a casting agent! #speaker_self
        I’m kidding, jaan. I didn’t even realise you were still applying for auditions! You better check it, maybe it’s good news. #speaker_left
        Ok, then just give me a second. #speaker_self
        -> aman_2_1_3
    - "casting":  -> aman_2_1_2b
    }
 
= aman_2_1_2b
#speaker_left_image:cha_aman_selinder_normal.png
Okay. Hey, you want to go wade in the water? #speaker_left
I wonder what that Elsa lady is typing. #inner_monologue
It looks nice out there, not too crowded for a Saturday. Oh, then we go biking, and have brunch, and - how about a movie after that? #speaker_left
I’ve been meaning to see that new horror movie for so long, what’s it called…  #speaker_left
The reviews are not bad. Do you know the one I’m talking about? #speaker_left
I saw her first message, so she’ll see the blue-tick. I hope she doesn’t get offended by the delay in replying… #inner_monologue
#speaker_left_image:cha_aman_selinder_sad.png
Seriously, Aman? #speaker_left
Huh? #speaker_self
Did you hear anything I said? #speaker_left
Yes, of course! #speaker_self
#speaker_left_image:cha_aman_selinder_annoyed.png
Okay, then what did I say we should do next? #speaker_left
+ [Wade, Brunch, Biking]
    Go wading, have brunch, then go biking. #speaker_self
    Incorrect. #speaker_left
    Is this a test? It’s a bit childish don’t you think? #speaker_self
    Childish? #speaker_left
    I can’t believe this. Okay, you should check your messages, those aren’t childish.  #speaker_left
+ [Wade, Biking, Brunch]
    Go wading, then go biking, then have brunch. #speaker_self
    ... #speaker_left
    See, I was listening! #speaker_self
    Yes, fine. You were listening. Everything is perfect. Go check your messages. #speaker_left
- If you don’t mind, I think I will. #speaker_self
 -> aman_2_1_3
 
=== aman_2_1_3 ===
#knot:aman_2_1_3
#ui:whatsapp
#background:whatsapp.png
#chat_group_title:Elsa
#chat_group_image:ico_aman_elsa.png
#speaker_1_name:Elsa
Hi Aman this is Elsa from Everyday Productions. Tks for your pics and showreel. We took a look and the showreel is strong.  #speaker_1
Hi Elsa, thanks, that’s great to hear. #speaker_self
We hv shortlisted you for auditions, but need to check with you something first. It’s a corporate video so the client wants a very clean look. You ok to shave? #speaker_1
#ui:scene
#background:bg_aman_beach.jpg
Here we go again. #inner_monologue
What does she even mean by a ‘clean’ look? Do I look dirty?  #inner_monologue
#ui:whatsapp
#background:whatsapp.png
#chat_group_title:Elsa
#chat_group_image:ico_aman_elsa.png
#speaker_1_name:Elsa
Thanks for your consideration Elsa.
+ [But I cannot] ... but that is not possible for me, for religious reasons. #speaker_self
+ [I would prefer other roles instead] Please let me know if there are future roles for me that do not require me to change my look. #speaker_self
- Oh ok. Hm #speaker_1
You sure? Tbh your reel was v strong. Better than most. #speaker_1
It’s a waste #speaker_1
Yes, I’m sure. Thanks 🙏🏽 #speaker_self
Ok. Your choice #speaker_1
#ui:scene
#background:bg_aman_beach.jpg
My choice... #inner_monologue

{ aman_2_selinderfocus == "us": -> aman_2_1_3a  }
{ aman_2_selinderfocus == "casting" && aman_2_selinderquestion == "wait": -> aman_2_1_3b  }
{ aman_2_selinderfocus == "casting" && aman_2_selinderquestion == "nothing": -> aman_2_1_3c  }

-> aman_2_1_3a

=== aman_2_1_3a ===
#knot:aman_2_1_3a
#ui:scene
#background:bg_aman_beach.jpg
#speaker_left_image:cha_aman_selinder_confused.png
#speaker_left_name:Selinder 
Is everything alright? You don’t look happy. #speaker_left
Oh, just another rejection. Sorry you’re stuck with such a loser. #speaker_self
Don’t talk about yourself like that, jaan. I don’t date losers. #speaker_left
I know she said that to make me feel better, but I kind of feel worse… #inner_monologue
But I don’t want to be a downer. Sel has her own problems, and it’s not fair to overload her with mine. She’s the one who needs some cheering up. #inner_monologue
#speaker_left_image:cha_aman_selinder_normal.png
Now that you mention it. You’re my girlfriend, so that makes me a winner. Let’s get on with our date! #speaker_self
Love you. #speaker_left
I love you too. #speaker_self
-> aman_2_2_narration

=== aman_2_1_3b ===
#knot:aman_2_1_3b
#ui:scene
#background:bg_aman_beach.jpg
#speaker_left_image:cha_aman_selinder_annoyed.png
#speaker_left_name:Selinder
All done? #speaker_left
Yes, I’m done. #speaker_self
You sure? Do you need to text some more? #speaker_left
Sel, I said I’m done… #speaker_self
Just checking on your priorities. #speaker_left
You know, you’re not being very fair. What’s the problem here? #speaker_self
Where do I start? I have a lot of problems Aman, but you have no time to hear them. I’ve been dealing with a lot of crap at work and you’re not mentally present enough to ask me how my week went. #speaker_left
I’ve been waiting and looking forward to this date for a long time but I am starting to ask myself if I’ve been waiting for nothing.  #speaker_left
+ [I'm sorry] Jaan, I’m sorry. I should have paid you more attention. #speaker_self
    What’s the situation at work? #speaker_self
    I hate my job, that’s all. But I don’t really want to talk about it now. #speaker_left
    Are you sure? #speaker_self
    Yes, I’m not in the mood. Let’s just walk, okay? #speaker_left
    ...If that’s what you want. Okay. #speaker_self
    -> aman_2_2_narration
+ [I'm nothing?]
    Is that what I am? Nothing? #speaker_self
    Now you’re just twisting my words! I didn’t mean it that way! #speaker_left
    So what did you mean then? #speaker_self
    I meant I’m right here but your mind is elsewhere, Aman! You’re so wrapped up in this acting nonsense, it’s getting you so upset, and I just feel like it’s not worth it! #speaker_left
    Nonsense? #speaker_self
    ... #speaker_left
    Okay, maybe that was the wrong word, but you get what I mean… #speaker_left
    No, I get what you mean. You think it’s nonsense. #speaker_self
    I mean, not *nonsense*, but compared to business school, don’t you think it’s a bit… #speaker_left
    Frivolous. #speaker_self
    Yes, fine, frivolous. #speaker_left
    Okay. #speaker_self
    Aman... I’m sorry. Does this really mean so much to you? #speaker_left
    Let’s just keep walking, Sel. We can talk about it another day. #speaker_self
    -> aman_2_2_narration

=== aman_2_1_3c ===
#knot:aman_2_1_3c
#ui:scene
#background:bg_aman_beach.jpg
#speaker_left_image:cha_aman_selinder_annoyed.png
#speaker_left_name:Selinder
All sorted? #speaker_left
Yes. #speaker_self
#speaker_left_image:cha_aman_selinder_confused.png
Are you okay? Doesn’t look like good news. #speaker_left
Just another rejection, I’m getting used to it now. #speaker_self
#speaker_left_image:cha_aman_selinder_normal.png
Hey... I’m sorry I snapped at you earlier. I know you were trying your best. I’ve just had a really crappy week. #speaker_left
I’m sorry too. I was trying to focus, I swear… Maybe I’m taking this acting thing too far, I don’t even know what I’m trying to prove anymore. #speaker_self
Wait, why did you have a crappy week? #speaker_self
Just my lousy job being lousy - we can talk about it another time. But jaan… can I ask you a question? #speaker_left
Yes, of course. #speaker_self
{ aman_1_selinderchat:
    - "maybe": Are you really serious about acting? #speaker_left
    I’ve always been serious about acting. #speaker_self
    I know how much effort you put into your performances, and I always think you are truly amazing on stage. Not just because I’m your girlfriend. #speaker_left
    But what I mean is, are you going to try and act for a living? #speaker_left
- "maybe not": Remember way back when you were doing your BMT, and we would WhatsApp frantically at night before your batt ran out? #speaker_left
    Yes of course, good times. #speaker_self
    I remember that one time, you kind of hinted that you might want to do acting seriously. Even for a living. Even instead of business. #speaker_left
    Do you still feel that way? #speaker_left
}

Right now, I’m just trying to land one small break, take it one step at a time. #speaker_self
But yes - I think, if I did see a path forward… I might take it. Is that okay with you? #speaker_self
Even if it means low pay, ‘wasting’ a business degree, not knowing when I can afford to get married or buy a house, and having to explain my life choices to our parents... #inner_monologue
I see. #speaker_left
Well honestly… it’s like you said, one step at a time. #speaker_left
But jaan, I do know you have talent. So I think... if you really care about doing this, then take it as far as you can, so that you have no regrets. #speaker_left
You’re the best. I love you. #speaker_self
Love you too. #speaker_left
I hope that’s enough. #inner_monologue
-> aman_2_2_narration

=== aman_2_2_narration ===
#knot:aman_2_2_narration
#ui:narrator
#background:bg_aman_cafe.jpg
Later that evening, at a new cafe called Cafe Resipi Alegria.

-> aman_2_2

=== aman_2_2 ===
#knot:aman_2_2
#ui:scene
#background:bg_aman_cafe.jpg
#speaker_right_image:cha_aman_jothi_normal.png
#speaker_right_name:Jothi
Where on earth is Jothi? Nearly half an hour late. She keeps breaking records. #inner_monologue
#speaker_right_image:cha_aman_jothi_hairflip.png
I’m here. I know. I repent. #speaker_right
Always late! #speaker_self
But always divine. #speaker_right
#speaker_right_image:cha_aman_jothi_normal.png
Oh good, you got us the vindaloo! My favourite. #speaker_right
Yes, I know the drill. But it’s all cold already. #speaker_self
Okay bander (monkey), now you’re just sulking. Is something wrong? #speaker_right
{aman_1_familydinner: 
- "acting" :   Should I tell her about the rejections? She’ll just say ‘I-told-you-so.’ #inner_monologue
    But maybe that’s what I need to hear? If this is a fool’s dream, someone should tell me to snap out of it.  #inner_monologue
- "something" : Maybe I’ll sound her out. Jothi always says it like it is.   #inner_monologue
}
So, I’ve been applying to as many casting calls as I can in the last month. #speaker_self
Ah. #speaker_right
Let me guess, you haven’t gotten a single audition. #speaker_right
How did you know? #speaker_self
#speaker_right_image:cha_aman_jothi_normal.png
Because if they’d seen you act, they would have hired you. #speaker_right
That’s nice of you to say, but you’re my sister. #speaker_self
No Aman, I’m not saying it because I’m your sister, I’m saying it because it’s true. #speaker_right
I’ve never seen a play with you in it that didn’t blow everyone away.  #speaker_right
So if you haven’t gotten a role yet, it’s because someone has decided that on paper, you don’t fit the mould.  #speaker_right
+ [Those were amateur plays]
    Those were just crummy school productions, community events... #speaker_self
    Oh please, no need to be Mr Modesty around your sister. You know you’re talented, right? #speaker_right
    ...Yes, fine, I think I’ve got something. But if I’m so great, why isn’t that enough to land me a role? #speaker_self
+ [That's not helpful now]
    That’s nice of you to say, but whatever competence I might have on the stage isn’t helping me right now. It’s very frustrating. #speaker_self
    Why isn’t it enough to be good at what I do? #speaker_self
- That’s a rhetorical question, right? You already know. But fine, I’ll answer it. #speaker_right
#speaker_right_image:cha_aman_jothi_diva.png
You’re a smart boy Aman, going into business school and everything. So you know about demand and purchasing power.  #speaker_right
Think about the Singapore market. If a local drama is produced, who forms the majority of the audience watching it?  #speaker_right
...Singaporeans? #speaker_self
Chinese Singaporeans. #speaker_right
And if a commercial is put out on the airwaves, and in the movie theatres, advertising - I don’t know, diamond rings - who do you think is going to be buying most of the diamond rings?  #speaker_right
+ [Rich people] People with money. #speaker_self
    Well, yes. And these are mostly - by sheer numbers, not even talking about any other reasons - Chinese Singaporeans. #speaker_right
+ [Chinese Singaporeans] ...Chinese Singaporeans?  #speaker_self
    Bingo.  #speaker_right
- So now, I ask you. If you want to produce a project that achieves popular success… a project that moves audiences to relate with the hero or heroine, or convinces them to go buy diamond rings… who do you think you will cast? #speaker_right
Wait, wait. If we go with that line of thinking, then everybody will just be watching films and reading books that feature people of their own race. #speaker_self
And most of the time, don’t they? How many Chinese people do you know who are into Bollywood? #speaker_right
What about Korean dramas and boy bands? #speaker_self
Those have cult followings abroad, even in places like Indonesia. Even some Americans are diehard fans! #speaker_self
So, it’s not true that people can only relate to characters who look or speak like them.  #speaker_self
Ah - so now we come to supply. #speaker_right
Where was the Korean entertainment industry born? Where did it first achieve scale? #speaker_right
Obviously, in Korea. Do you think Korean pop could have grown out of Singapore, or Indonesia, or the US?  #speaker_right

+ [But this is defeatist] I see where you’re going, but this is completely defeatist. If we stick to this line of thinking, then are you saying minorities can never achieve success, because we are out-numbered? #speaker_self
    No, of course not! I agree with you, it would be defeatist and even dangerous to start thinking that way. #speaker_right
+ [So I should go to Bollywood?] What are you saying, then? Singapore is my home, but I should go to Bollywood? #speaker_self
    Do you want to? #speaker_right
    No! I can’t imagine leaving. I don’t want to. I shouldn’t have to make a choice like that.  #speaker_self
    I don’t want to believe that minorities can’t succeed! #speaker_self
    Aman, calm down! I’m not saying that at all. #speaker_right
- Obviously, there are plenty of Sikhs who are very successful in Singapore. #speaker_right
In the military. In business. In the legal profession - and I’m biased because I’m married to him, but Kirpal is an example. #speaker_right
#speaker_right_image:cha_aman_jothi_sad.png
But Aman, I’m just saying that in the arts and entertainment industry of all places, I think it will be harder for you to find prime roles. #speaker_right
Not because people are evil and malicious, or out to block you from success. But because of human nature. And, frankly, because you have chosen to be you. #speaker_right
Me? #speaker_self
A Sikh who wears the turban. Who keeps the kesh (unshorn hair). #speaker_right
What are you saying? #speaker_self
#speaker_right_image:cha_aman_jothi_diva.png
Are you being deliberately obtuse? #speaker_right
As an actor, you have to pretend to be someone else for a living. How many people look like you, with turbans and beards? #speaker_right
No, obviously I know that. I mean, what are you trying to get at? What are you implying? #speaker_self
Okay, you want me to say it? #speaker_right
Your chances would be better if you looked just a tiny bit more like everyone else, Aman. #speaker_right
If you could bend and compromise, more roles would open up to you. #speaker_right
I’m not going down that route, Jothi. You know that faith is important to me. #speaker_self
It’s important to me too, and to Kirpal. But you know our views on this. #speaker_right
Sikhism is about service to others. Equality and justice. Learning to be a better person. #speaker_right
Fine, we don’t keep the kesh (uncut hair). And yes, I know that decision hurts Papa-ji and mum. But we still live the values of Sikhism in our daily lives. #speaker_right
That’s why Kirpal does all that pro bono work. And I… I’m not perfect, but I try in my own ways. #speaker_right
We still go to the gurdwara. We will still raise our future children as Sikhs. #speaker_right
Jothi, I know you’re coming from a place of love, but I’ll never do what you’re implying. #speaker_self
For that matter - you know Papa-ji and mum are waiting and hoping for you to return to the path and keep the 'form' (uncut hair) again, right? #speaker_self
#speaker_right_image:cha_aman_jothi_sad.png
Oh I know, trust me. And it is something we think about as well. We may get there one day, but in our own time. #speaker_right
We’re all on our own journeys, right? #speaker_right
Right. And on my journey, there are some compromises I just won’t make. #speaker_self
I respect that, Aman. But this is the real world, and I have to ask. #speaker_right
If succeeding in acting means you have to choose between your dream, and your faith, what will you do? #speaker_right

+ [I would give up acting] If it really came to that, then I would give up the dream. #speaker_self
    Ah, chote veer. Really? #speaker_right
    If I were really backed into that corner, yes. Some things are more important. #speaker_self
    For all I’ve said today, I hope it doesn’t come to that. #speaker_right 
+ [I refuse to choose] I refuse to make that choice. If we live in a world that makes us choose, then maybe we need to do something about the world. #speaker_self
    You mean - change the world? #speaker_right
    Sure, why not. #speaker_self
    #speaker_right_image:cha_aman_jothi_normal.png
    Hah. That’s my stubborn baby brother through and through. #speaker_right
    I despair for you sometimes Aman, but I’m proud of you all the same. #speaker_right
    Thanks, penji. #speaker_self 
- 
#ui:notification
#background:ui_aman_message.jpg
Zhihao: brooooo #message
-> aman_2_2_1

=== aman_2_2_1 ===
#knot:aman_2_2_1
#ui:whatsapp
#background:whatsapp.png
#chat_group_title:Zhihao
#chat_group_image:ico_aman_zhihao.png
#speaker_1_name:Zhihao
bro #speaker_1
still looking for acting jobs?? #speaker_1
Uh yes #speaker_self
What’s up? #speaker_self
got lobang #speaker_1
call me your bro #speaker_1
Huh? #speaker_self
call #speaker_1
me #speaker_1
your #speaker_1
bro #speaker_1
say #speaker_1
it #speaker_1
    #ui:scene
    #background:bg_aman_cafe.jpg
    What is Zhihao up to this time? #inner_monologue
#ui:whatsapp
#background:whatsapp.png
#chat_group_title:Zhihao
#chat_group_image:ico_aman_zhihao.png
#speaker_1_name:Zhihao
Zhihao, you’re my ...  #speaker_self
+ bro [] #speaker_self
+ friend, and a really good one [] #speaker_self
    no count #speaker_1
    must bro  #speaker_1
    sigh. ok. bro. what is it?  #speaker_self
- yaaaaaaaaaaaaas #speaker_1
ok i saw this role advertised #speaker_1
looking for Sikh policeman #speaker_1
will send u the link #speaker_1
perfect right #speaker_1
you are Sikh #speaker_1
the role is Sikh #speaker_1
don’t even have to act la omg #speaker_1
    #ui:scene
    #background:bg_aman_cafe.jpg
    Interesting. #inner_monologue
    Sliightly obnoxious way to put it, but interesting. #inner_monologue
#ui:whatsapp
#background:whatsapp.png
#chat_group_title:Zhihao
#chat_group_image:ico_aman_zhihao.png
#speaker_1_name:Zhihao
Hmmmmm #speaker_self
Sounds good! Yes, please send me the link #speaker_self
Thanks for thinking of me 🙌🏽 #speaker_self

-> aman_2_2_2

=== aman_2_2_2 ===
#knot:aman_2_2_2
#ui:scene
#background:bg_aman_cafe.jpg
#speaker_right_image:cha_aman_jothi_normal.png
#speaker_right_name:Jothi
Who’s that? #speaker_right
Oh sorry, it’s just Zhihao. #speaker_self
That clown? You used to run around the void deck when you were kids and he would call you ‘the Singh fella’. #speaker_right
#speaker_right_image:cha_aman_jothi_eyeroll.png
Not my favourite specimen. #speaker_right
Wow, you remember? #speaker_self
Anyway, yes, it’s the same one. He can be a clown, but his intentions are not bad. #speaker_self
He says he might have found me a role to try for. #speaker_self
#speaker_right_image:cha_aman_jothi_normal.png
Really? What makes this role so special? #speaker_right
+ [It's for a Sikh character]  It’s for a Sikh policeman. #speaker_self
    Mmm. #speaker_right
    Whaaaat? #speaker_self
    I didn’t say anything! #speaker_right
    I can see your eyes being sceptical and all. #speaker_self
    Lies! #speaker_right
    Fine, I was thinking - Sikh policeman? A bit stereotypical no? #speaker_right
    But, I don’t want to be a wet blanket. Good luck, okay? They’d be fools not to give you the part. #speaker_right
    I’ll do my best. #speaker_self
    -> aman_2_3_narration
+ [I'll tell you if I get it]
    Oh, I don’t want to jinx anything. I’ll tell you if I land it. #speaker_self
    Alright, keep me posted. For all the rain I poured on your parade today, you know I’m your number one fan, right? #speaker_right
    I know, I know. #speaker_self
    Good luck for this one. #speaker_right
    I’ll do my best. #speaker_self
    -> aman_2_3_narration
 
 === aman_2_3_narration ===
#knot:aman_2_minigame
#ui:mcq
#game_id:5
Minigame 5 // must add some text
 
 
#knot:aman_2_3_narration
#ui:narrator
#background:bg_aman_casting.jpg
I couldn't sleep well last night, because of the casting call today.
This is it! Finally, make or break.
I’ve gone through the lines they sent me a hundred times. Let’s see...
“Now, listen closely. I’ve looked at the files, and I must say. Things don’t add up in your favour.”
“It says here you’ve been hauled up before for love-scamming an old lady online, stealing grocery vouchers from your neighbour’s letter box, and performing illegal cosmetic surgery in the back room of a KTV lounge.”
“That’s quite the chequered past you have, Mr Roger Tan.”
“Your protestations are futile. Your time is simply up.”
Not hard, not hard at all…

-> aman_2_3
 
=== aman_2_3 ===
#knot:aman_2_3
#ui:scene
#background:bg_aman_casting.jpg
#speaker_right_image:cha_aman_alison_normal.png
#speaker_right_name:Alison
Amandeep Singh Sahota? #speaker_right
Yes, that’s me. Aman is fine. #speaker_self
Hi Aman, I’m Alison! Okay, you’re up. #speaker_right
Just stand there and face us over here… move a little to your left… perfect. #speaker_right
For this first take, just do the lines according to your own interpretation of the role. #speaker_right
I’ll be Roger. Are you ready? #speaker_right
Yes. #speaker_self
I’m going to make this character... #inner_monologue

+ [Intimidating] ...A scary guy. #inner_monologue
    VAR aman_2_actingstyle = ""
    ~ aman_2_actingstyle = "intimidating"
    These lines are ridiculous, but if I keep my eyes looking dead and my demeanour uninterested, I can actually make myself quite sinister. #inner_monologue
+ [Comical] ...A ridiculous figure, over-inflated with his delusions of grandeur. #inner_monologue
    ~ aman_2_actingstyle = "comical"
     This should be fun. #inner_monologue
- And, rolling. #speaker_right
#speaker_right_image:cha_aman_alison_reading.png
Let me go! You have no right to keep me here. I demand my rights as a citizen. #speaker_right
Now, listen closely. #speaker_self

+ [I've looked at the files] I’ve looked at the files, and I must say. #speaker_self
    VAR aman_2_actingaccuracy = 1
+ [I've looked at the facts] I’ve looked at the facts, and I must say. #speaker_self
    ~ aman_2_actingaccuracy = 0
- Things don’t add up in your favour. #speaker_self

It says here you’ve been hauled up before for love-scamming an old lady online, stealing grocery vouchers from your neighbour’s letter box, and performing illegal cosmetic surgery... #speaker_self

+ In the spare room of a KTV lounge. [] #speaker_self
    ~ aman_2_actingaccuracy -= 1
+ In the back room of a KTV lounge. [] #speaker_self
    ~ aman_2_actingaccuracy += 1
- That’s quite the chequered past you have, Mr Roger... #speaker_self
+ Toh [] #speaker_self 
    ~ aman_2_actingaccuracy -= 1
+ Tan [] #speaker_self
    ~ aman_2_actingaccuracy += 1
- I was framed! It was my ex. You have to believe me! #speaker_right
Your protestations are futile. Your time is simply up. #speaker_self
And...cut! #speaker_right
#speaker_right_image:cha_aman_alison_normal.png
{ aman_2_actingaccuracy >= 3:
    Wow, that was great! And you nailed all the lines! #speaker_right 
- else: 
    Not bad, but you did trip up a bit on your lines. Do you need a minute to look at them again? #speaker_right
    No, sorry, I was just nervous! This is my first audition for a professional project. #speaker_self
    Oh, no wonder. #speaker_right
    Crap. #inner_monologue
    No worries - you still did a good job. #speaker_right    
}

{ aman_2_actingstyle == "intimidating": 
    It’s strange - we didn’t write that role to be a scary one at all, but you actually gave me chills. We haven’t seen it done that way before. #speaker_right
    Thank you, I’m so glad to hear that! #speaker_self
    I’m going to have to ask you to redo it in a more comical way though, because that’s what the scriptwriters intended. #speaker_right
    No problem! I’ll change it up. #speaker_self
- else: 
    I loved your delivery, it was hilarious. #speaker_right
    Can we do just one more take? #speaker_right
    Yes, of course! #speaker_self
}

Great. Can you do it with an accent too? #speaker_right
Oh, you mean… #speaker_self
#speaker_right_image:cha_aman_alison_headbobble.gif
An Indian accent, like a really strong one. And can you also do the head wobble? (Attempts to demonstrate.) #speaker_right
Uh… just to confirm, the character is Singaporean, right? #speaker_self
Oh, yes! But Singaporean Indian. This is just to make it more funny. #speaker_right
#speaker_right_image:cha_aman_alison_normal.png
Funny. #inner_monologue
The way Indians speak is funny? It’s not funny to me. #inner_monologue
Should I say something? But won’t that rule me out for the part? #inner_monologue
VAR aman_2_funnyindian = ""

+ [I'm not comfortable with this] -> aman_2_3a
+ [It’s not funny] -> aman_2_3b
+ [Say nothing] -> aman_2_3c

= aman_2_3a
~ aman_2_funnyindian = "not comfortable"
VAR chapter_2_ending = 2
I’m not sure this is very appropriate. #speaker_self
#speaker_right_image:cha_aman_alison_upset.png
Huh? Oh, er... #speaker_right
Sorry if I offended you. But you see, this is just what the team has in mind for the tone of the scene, and the character. #speaker_right
We have to think about what the audience would find amusing, so… it’s nothing personal, it’s a professional thing. I hope you understand. #speaker_right
Of course, you don’t have to do anything you’re not comfortable with. It’s your choice. #speaker_right
There’s that phrase again. ‘Your choice.’ #inner_monologue
Why is it that so often, I find myself in situations where there are no good choices? #inner_monologue
#speaker_right_image:cha_aman_alison_normal.png
So are you good to roll? #speaker_right
Okay, I’m ready. #speaker_self
+ [Perform as requested]
    #ui:narrator
    #background:bg_aman_casting.jpg
    I do another take. 
    I thicken my accent.
    I shake my head.
    I feel like a fraud the whole time. 
    Like I’m betraying someone by doing this.
    I can’t keep the resentment from seeping into my acting. 
    I guess I’m not that good an actor after all.
    I leave... knowing that I didn’t get the part.

+ [Do it your own way]
    #ui:narrator
    #background:bg_aman_casting.jpg
    I do another take, but I do it my own way.
    I think I did great, personally!
    But she doesn’t like that I’ve ignored her instructions, I can tell.
    She’s stone-faced the whole way.
    I leave... knowing that I didn’t get the part.
- -> aman_2_4_intro

= aman_2_3b
~ aman_2_funnyindian = "not funny"
~ chapter_2_ending = 2
I think there can be other, better ways to make the scene funny without resorting to this, if you don’t mind. #speaker_self
Personally, I don’t think Indian accents are funny. #speaker_self
Oh - hmm, that’s not what I was trying to say. #speaker_right
Isn’t it literally what you said? #inner_monologue
I meant, the audience we have in mind for this drama would find that funny, so we are playing more to that kind of humour. #speaker_right
Okay, but shouldn’t you be better than that? #speaker_self
#speaker_right_image:cha_aman_alison_upset.png
Oh god. I did not just tell a casting director how her television series can ‘be better’. #inner_monologue
Her face has changed completely. Wouldn’t be surprised if it turned 360 degrees and bit me right now. #inner_monologue
I think there is a misunderstanding. #speaker_right
I know you don’t have much experience, but I can see that you have talent. #speaker_right
However, no matter how talented you are, what we care about here is professionalism. #speaker_right
You may not agree with the brief, but it’s the brief. #speaker_right
Thank you for your time today, and we will make our decision in due course. #speaker_right
Goodbye. #speaker_right
-> aman_2_4_intro

= aman_2_3c
~ aman_2_funnyindian = "nothing"
Okay, if you’re ready - 3, 2, 1…  #speaker_right
~ chapter_2_ending = 1
#ui:narrator
#background:bg_aman_casting.jpg
The moment passed, there was no time left to think.
I tuned out my doubts and just did what was asked of me.
Suddenly it was over, and she was beaming. Somehow I knew I had gotten the part.
Is this what it feels like to succeed?
Why do I feel a little empty?
Like I’ve let myself and other people down?
I had thought I would be happier than this.
-> aman_2_4_intro


===  aman_2_4_intro ===
#knot:aman_2_4_intro
#ui:narrator
#background:bg_aman_bedroom.jpg
Later that night.

-> aman_2_4

===  aman_2_4 ===
#knot:aman_2_4
#ui:whatsapp
#background:whatsapp.png
#chat_group_title:Lukman
#chat_group_image:ico_aman_lukman.png
#speaker_1_name:Lukman
{aman_1_sharedreamslukman == true: 
    Bro, so I had my audition today. #speaker_self
    How did it go? I’m sure you blew them away! #speaker_1 
    Well, it got really weird. The casting director asked me to be “more indian”. Like, make fun of how Indian people talk. #speaker_self
    -> aman_2_4b
- else: -> aman_2_4a
    
}

= aman_2_4a
Bro, free to chat? #speaker_self
Eh anytime man. What’s up? You ok? #speaker_1
Well, I don’t know if you remember this but remember during the last Tekong field camp we spoke about what we were going to do after NS, and I said I was thinking of doing something different? #speaker_self
Yeah, I remember. You were hinting pretty strongly that it would be media related. I didn’t want to push you... but I think you’d be amazing. #speaker_1
Haha you’re always so supportive! And you’re right - I’m interested in acting. #speaker_self
I knew it! You’re super talented man at acting.  #speaker_1
Uh, not that you were damn drama in NS or anything 😂 ... but I can see that you’ve got that aura of a star, you know? 🤩 #speaker_1
Hurr. Not sure about talent and aura, but I’ve always been in drama since young. I like acting. People say I’m good at it, and I like how I feel when I do it. #speaker_self
How does it feel? #speaker_1
+ It’s going to sound really weird and philosophical.[] #speaker_self
    Try me. #speaker_1
    So… acting is about pretending to be someone else, right? #speaker_self
    But when I act, I feel like I’m being me. #speaker_self
    Like I’m putting myself on the line. The parts of me that feel the same emotions my character feels, think the same way my character thinks. #speaker_self
    In real life, we’re always presenting ourselves the way we want to be seen. When I’m acting, it’s like... I’m revealing the way I am, and the way I am is… seen. #speaker_self
    Oh damn bro, that’s cheem. #speaker_1
    I know, right.  #speaker_self
+ It feels... liberating! []    #speaker_self
    That's awesome! Happy for you man. So what's up?  #speaker_1
- Anyway, I did my first real audition today... #speaker_self
How did it go? I’m sure you blew them away! #speaker_1
Well, it got really weird. The casting director asked me to be “more indian”. Like, make fun of how Indian people talk. #speaker_self
-> aman_2_4b

= aman_2_4b    
They told you to do what??? #speaker_1
Do the accent and shake my head. Because it’s funny. #speaker_self
Not cool sia #speaker_1
Eh this kind of thing can post on social media #speaker_1
Go viral #speaker_1
Serve them right #speaker_1
Oh… nah I think that’s not my style 😅 #speaker_self
Always peace loving #speaker_1
It’s not just that. I don’t want to be known as a troublemaker in the industry #speaker_self
Especially just starting out. #speaker_self
Maybe it would be viral for one week… #speaker_self
But then the public will forget, while I get blacklisted forever. #speaker_self
Yea... true dat #speaker_1
So what did you do?? #speaker_1
{ aman_2_funnyindian == "nothing" : 
    Um… I just did it 😔 #speaker_self
    ~ chapter_2_ending = 1
    Hey no judgment #speaker_1
    They are the ones who should be ashamed not you #speaker_1
    Still… if I do get the role, maybe don’t watch this one 😳 #speaker_self
    I’ll tell you if I ever do anything worth watching. #speaker_self
    I’m sure you will act in some amazing movies one day bro #speaker_1
    There will be many other parts #speaker_1
- else: 
    Haha #speaker_self
    ~ chapter_2_ending = 2
    Let’s just say #speaker_self
    I don’t think I got the part. #speaker_self
    😔 #speaker_self
    Screw that part #speaker_1
    Seriously #speaker_1
    There will be other chances #speaker_1
}
+ [Not according to Jothi]
    My sister doesn’t think so. Lol #speaker_self
    She says my chances are poor, especially being Sikh. #speaker_self
    Is she right? Do you have a sense? #speaker_1
    Actually there ARE roles for minorities out there. But maybe not so many major ones? #speaker_self
    Tough to say for sure since I’m just starting out. #speaker_self
    There are a few roles that are open to minorities. Rare to find roles that are specifically for Sikhs #speaker_self
    That’s why I was quite excited about this one. #speaker_self
    Don’t give up. #speaker_1
+ [Maybe I should quit]
    I’m not sure I want to continue #speaker_self
    Hey what happened to the dream #speaker_1
    What if that’s the problem, it’s a dream #speaker_self
    🤯 #speaker_1
    Sorry, I got emo #speaker_self
    Hey no worries #speaker_1
    Don’t rush and decide now after one bad incident #speaker_1
- I support you ok? Man United #speaker_1
Haha what?? #speaker_self
Lukman and Aman #speaker_1
Man and Man #speaker_1
Man United #speaker_1
Why you make me explain 🤣🤣 #speaker_1
Hahaha #speaker_self
Thanks bro. #speaker_self
Gnight. #speaker_self

#ui:narrator
#background:bg_aman_bedroom.jpg
I know he’s the kind of bro who will always be supportive no matter what. 
I appreciate his constant positivity in my life. 
Even if I’m wrong, I know he’ll back me up.
But that’s a problem isn’t it? 
What if I’m wrong? What if Jothi is right? 
How will I know?



-> aman_2_reflection

=== aman_2_reflection ===
#knot:aman_2_reflection
#ui:chapter_reflection
#reflection_id:5
Reflection 5





-> aman_3_intro










// CHAPTER 3





=== aman_3_intro ===
#knot:aman_3_intro
#ui:narrator
#background:bg_aman_gurdwara.jpg
Four years later. 


~ chapter_id = 3
//reset chapter 2-5 variables
CHAPTER {chapter_id} #title
The Show Must Go On #title


-> aman_3_1_narration 


=== aman_3_1_narration ===
#knot:aman_3_1_narration
#ui:narrator
#background:bg_aman_gurdwara.jpg
Just outside the gurdwara (Sikh temple) my family has attended since I was born, after weekly prayers.
Where are Sel and her parents? I should say hi before we leave.
I wonder if Sel is still mad at me. We argued again last night.
It seems like we quarrel about the smallest things, lately.
How did it get to this point? 
We’ve been together seven years already.
Through school, NS, and the past four years of university...
Maybe she’s tired of me.
Oh - there they are! Sel’s parents, Uncle Pritam and Aunty Suvinder.
 
-> aman_3_1

=== aman_3_1 ===
#knot:aman_3_1
#ui:scene
#background:bg_aman_gurdwara.jpg
#speaker_left_image:cha_aman_auntysuvinder_normal.png
#speaker_left_name:Aunty Suvinder
#speaker_right_image:cha_aman_unclepritam_normal.png
#speaker_right_name:Uncle Pritam
Aman! How are you, young man? You haven’t visited us in a while. #speaker_right
Hi uncle, hi aunty! So sorry about that, I’ve been busy with rehearsals for our theatre club’s production. #speaker_self
Oh, but I thought you graduated already! #speaker_left
Yes aunty, this is the last production for our cohort, before we hand over the reins fully. #speaker_self
That’s good, you will be very busy once you start work. #speaker_left
Speaking of which, Aman, what are your plans now that you’ve graduated? #speaker_right

+ [I haven't decided yet...] Ah, I still haven’t really made up my mind… #speaker_self
    VAR aman_3_lietoselparents = true
    #speaker_right_image:cha_aman_unclepritam_confused.png
    Oh? Have you started applying for jobs? #speaker_right
    Uh… here and there, but I haven’t landed on anything yet... #speaker_self
    Let’s not put the boy in a tight spot, I’m sure he knows what he’s doing. #speaker_left
    Yes, of course. #speaker_right

+ [I've been applying to jobs] I’ve been applying to jobs, Uncle Pritam. But nothing is confirmed yet. #speaker_self
    ~ aman_3_lietoselparents = false
    Well, be patient! I am sure the companies will be lucky to have you. #speaker_right
    Thank you, uncle! #speaker_self
- We’d better get going, we’re expecting guests. When you see Selinder, tell her to take her time and we’ll see her at home. #speaker_right
#speaker_right_image:cha_aman_unclepritam_normal.png
Sure, I’ll do that. #speaker_self
Whew! That was a little stressful. #inner_monologue
#speaker_left_image:pixel.png
#speaker_right_image:pixel.png
I’m just glad they didn’t ask me when I’m going to propose to Selinder or anything like that. #inner_monologue
Speaking of… uh-oh. #inner_monologue
Here comes Sel, and she doesn’t look happy. #inner_monologue
#speaker_left_image:cha_aman_selinder2_annoyed.png
#speaker_left_name:Selinder
Hey, did you see my parents? #speaker_leftspeaker_righ
Hey. Yes, they left already, they said to take your time. #speaker_self
Darn, I needed a lift. #speaker_left
So what did you guys talk about? #speaker_left
Oh… job hunting. #speaker_self
I see. #speaker_left
What’s with her tone of voice? #inner_monologue
Something wrong? #speaker_self
I bet you didn’t tell them. #speaker_left
Tell them what? #speaker_self
That you have a job offer. #speaker_left
{aman_3_lietoselparents: 
Well, nothing is confirmed yet so I didn’t want to get anyone’s expectations up. #speaker_self
- else: 
I didn’t hide anything, they just didn’t ask. #speaker_self
Anyway, nothing is confirmed yet. #speaker_self
}
That’s a weird way to put it. #speaker_left
They’ve confirmed they want you already, right? So the hold-up is just you. #speaker_left

+ [Implying something?] Okay, and? #speaker_self
    You’re being a bit hostile. #speaker_self
    No one is attacking you. #speaker_left
    Sorry, I meant passive aggressive. #speaker_self
    Ah, crap. I shouldn’t have said that… #inner_monologue
    Wow. Okay. I’m passive aggressive. #speaker_left
    Not like you Aman, always the hero. #speaker_left
+ [Is something wrong?] Yes, you could say that. But is something going on? #speaker_self
    You seem like you’re not in a great mood. #speaker_self
    I’m fine. #speaker_left
    I just thought we should speak clearly, not in code language. #speaker_left
    But I was stating a fact - I haven’t decided, so nothing is confirmed. #speaker_self
    I wasn’t trying to upset you. #speaker_self
    Yes, you’re never *trying* to upset me. #speaker_left
   
    ++ [What do you mean?] What does that mean, Sel? I’m really trying to understand. #speaker_self
        You’re always the hero of your own story, right. #speaker_left
        You never do anything wrong and you’re never *trying* to hurt anyone. #speaker_left
        Even if you keep hurting them, and you can make it stop. #speaker_left
    ++ [Okay I'm out]  I think maybe we should have this conversation later, when we’ve… cooled down. #speaker_self
        Yup, just leave. Avoid. Again. #speaker_left
- Sel, what on earth is going on? #speaker_self

I know we didn’t end our conversation well last night… #speaker_self
#speaker_left_image:cha_aman_selinder2_angry.png
No KIDDING, Aman. You FELL ASLEEP! #speaker_left
#speaker_left_image:cha_aman_selinder2_sad.png
While I was waiting for you to reply, like an idiot. CRYING! #speaker_left

+ [I didn't mean to!]    I didn’t mean to! #speaker_self
    Next thing I knew, it was morning and my phone was lying next to me. #speaker_self
    I was just so tired. #speaker_self
+ [I'm so sorry]    I’m sorry, I’m so sorry! #speaker_self  
    I was just so tired and I couldn’t stay awake on the phone. #speaker_self
- You’re always tired, because you’re always off doing things that don’t involve me! #speaker_left

Rehearsals have been - #speaker_self
#speaker_left_image:cha_aman_selinder2_angry.png
Aman, this is NOT the time to be talking about your STUPID ACTING! #speaker_left
NO ONE CARES! #speaker_left
Grow UP! #speaker_left
… #inner_monologue
Wow. #inner_monologue
I’m literally speechless. #inner_monologue
What happened to the girl who loved me? #inner_monologue
Did she ever even - for one moment - understand me? #inner_monologue
Nothing she or I can say right now could make this right. #inner_monologue
I can only walk away. #inner_monologue




-> aman_3_2_narration 


=== aman_3_2_narration ===
#knot:aman_3_2_narration
#ui:narrator
#background:bg_aman_bedroom_day.jpg
I’m feeling numb when I return home.
Could this be how a 7 year relationship ends?
Has it already ended?
But I have to put my brave face on.
I don’t want mum to guess anything is wrong.
Jothi is visiting today, and she’ll be quick to pick up on it if I seem off.

-> aman_3_2

=== aman_3_2 ===
#knot:aman_3_2
#ui:scene
#background:bg_aman_home.jpg
#speaker_left_image:cha_aman_mama_happy.png
#speaker_left_name:Mum
#speaker_right_image:cha_aman_jothi_normal.png
#speaker_right_name:Jothi
Ah, it’s Aman! #speaker_left
Come sit with us, beta. We’re watching TV together. #speaker_left
Mum’s favourite soap opera. Will Tina finally elope with Mukesh?! Dng dng dnggg. Better than anything on Netflix. #speaker_right
Hi mum, hi Jothi. Okay, sure. #speaker_self
You look tired beta, have you not been getting enough sleep? #speaker_left
Just worn out from rehearsals. #speaker_self
When is opening night again? #speaker_right
This Friday. Actually that reminds me, your tickets. Wait, I have them here somewhere… #speaker_self
Here you go, one each. #speaker_self
How exciting! I’ll keep them safely. #speaker_left
Neat! Who else is going? #speaker_right
I have five tickets to give away, so there’s you two, Selinder... #speaker_self

+ Papa-ji and Lukman.[] #speaker_self
    Oh, is that your army friend you always talk about? He sounds like a very nice boy. #speaker_left
    // VAR aman_3_tickets = "Papa-ji and Lukman"
    VAR aman_3_tickets = 1
    Glad it’s the beefcake and not the clown. #speaker_right
    -> aman_3_2a
+ Papa-ji and Zhihao.[] #speaker_self
    Oh, Zhihao!  #speaker_left
    // ~  aman_3_tickets = "Papa-ji and Zhihao"
    ~ aman_3_tickets = 2
    Eee, Zhihao. #speaker_right
    -> aman_3_2a
+ Lukman and Zhihao.[] #speaker_self
    Eee, Zhihao. Why not Papa-ji? #speaker_right
    #speaker_right_image:cha_aman_jothi_eyeroll.png
    // ~  aman_3_tickets = "Lukman and Zhihao"
    ~ aman_3_tickets = 3
    Exactly my question, Jothi. I tried to get him to invite Papa-ji, but this stubborn boy would not listen. #speaker_left
    #speaker_right_image:cha_aman_jothi_normal.png
    It’s not like Papa-ji doesn’t know about the show, but he’s never said he wants to turn up... #speaker_self
    Maybe he is waiting for you to ask him! #speaker_left
    He always seems so busy. Anyway, my tickets are given out already. Maybe next time. #speaker_self
    What am I going to do with this boy? #speaker_left
    -> aman_3_2b
    
= aman_3_2a
Zhihao isn’t so bad, if you’d give him a chance… #speaker_self
Mm, okay. Actually, the more exciting thing is that you’re inviting Papa-ji. #speaker_right
Isn’t this the first time in many years he’ll be seeing you on stage? #
Yes, mum made me invite him. #speaker_self
Hai Rabba (oh god). He’s your father, of course you must invite him! #speaker_left
He’s always so busy, I don’t like to even ask him. #speaker_self
Well it’s a good thing that you asked him, and he said yes! #speaker_left
-> aman_3_2b

= aman_3_2b
I need to prepare dinner, the both of you carry on. #speaker_left
Need help, mummy? #speaker_right
No, no. You two rarely get to see each other, make good use of it. Just tell me later if Tina and Mukesh decide to elope. #speaker_left
They never, ever do. Thanks mummy! #speaker_right
#speaker_left_image:pixel.png
#speaker_right_image:cha_aman_jothi_diva.png
Okay, we’re alone. Now you can tell me what’s going on. #speaker_right

+ [Nothing] Huh? Nothing lah. #speaker_self
    Don’t bluff, you looked miserable from the moment you stepped inside the house. #speaker_right
+ [What do you mean?] Huh? #speaker_self
    Don’t act blur, you look miserable. #speaker_right
- What’s going on? #speaker_right
#speaker_right_image:cha_aman_jothi_sad.png
Uh… fine, Sel and I had a big fight. #speaker_self
What happened? #speaker_right
I don’t know, we were fighting last night on the phone, and then this morning again… #speaker_self
She called my acting stupid. #speaker_self
Whoa. I wouldn’t have seen that coming from Sel. #speaker_right
But rewind, what started the fight last night? #speaker_right
Okay so, I have this job offer. #speaker_self
Oooh. #speaker_right
Yes, but don’t tell anyone. I only told Sel. #speaker_self
It’s a consultancy job, I would go in as an associate. #speaker_self
The pay is good, and it’s one of the big companies… so Sel doesn’t understand why I haven’t accepted, when the offer is about to expire. #speaker_self
Wow, you’ve sat on it that long? #speaker_right
Um, yes. #speaker_self
What am I missing, what’s the alternative? #speaker_right
I’ve also been offered a big part in a new play… #speaker_self
Like an actual paying professional production, at the Esplanade and everything. And the rehearsal schedule is going to be exhausting. #speaker_self
Whoa! Congrats, chote veer! #speaker_right
But what now? You’ll turn your back on corporate life and ride off into the arts? Oh god, what a cliche. #speaker_right
I haven’t decided! #speaker_self
That’s an even bigger cliche. #speaker_right
Okay, you might hate me for this, but I can see why Sel is pissed. #speaker_right

+ [Me too] She’s been really patient with me, I know. #speaker_self
    She works so hard, for less pay than I’m being offered. #speaker_self
    And she’s never said anything about it, but I know she’s been quietly hoping that after I graduate, we could both work, and afford to get married… #speaker_self
    She has certain dreams about how she wants to be a full-time mom and do volunteer work on the side, one day. #speaker_self
    She’s even been saving up for a BTO flat. #speaker_self
    
+ [What right does she have?] But it’s my life, right? #speaker_self
    It’s not like I’m being a slacker in either option, I have valid choices to make. It’s not an easy decision. #speaker_self
    Yes, but think about it from Sel’s perspective. #speaker_right
    She’s been working a crappy job for years, for much less pay than what you’re being offered. #speaker_right
    Has she ever said anything about getting married? #speaker_right
    Not explicitly… but we’ve talked about the future, like how we’d both like to have kids. #speaker_self
    She has certain dreams about how she wants to be a full-time mom and do volunteer work on the side, one day. #speaker_self
    I know she’s been saving up for a BTO flat. #speaker_self

- Not surprised. I know this girl by now lah, she’s been waiting for you to graduate. Get a job. Make babies. #speaker_right
#speaker_right_image:cha_aman_jothi_normal.png
It’s not easy slogging away while your boyfriend is in university, you know. #speaker_right
And then when he finally graduates from business, he decides to go build an acting career, and compete with all the actual theatre graduates. #speaker_right
Of course that’s going to be stressful, especially for a girl like Sel. #speaker_right
What do you mean? #speaker_self
A bit more traditional, maybe. Seems like the super faithful and devoted type. #speaker_right
How much time do you spend with her really? First NS, then with uni, and your theatre club. #speaker_right
I wouldn’t be surprised if she’s been worried about you going off and partying with friends, or meeting Chinese girls. #speaker_right
I hate parties! I never drink. And what’s the issue with the Chinese girls? #speaker_self
I don’t fool around, but in any case, inter-racial dating is totally okay. It’s the 21st century. #speaker_self
Let me think about how to say this. #speaker_right
Yes, there’s absolutely nothing wrong with dating outside of your race. Love is love. #speaker_right
Lots of Indian guys date Chinese girls nowadays, and they should do whatever brings them happiness. #speaker_right
But... have you noticed that it’s not as common for Chinese guys to date Indian girls? #speaker_right
I guess I never thought about it. #speaker_self
Right. So I can’t read minds and I can’t say for sure what’s their reason. #speaker_right
But growing up, I always felt like I was different from the typical girl that Singaporean guys find attractive. #speaker_right
And it’s not just about having a different skin tone. #speaker_right
For someone like Sel especially, who would never dream of going clubbing or drinking, or using one of those dodgy dating apps… #speaker_right
It can be harder to meet people. #speaker_right
#speaker_right_image:cha_aman_jothi_diva.png
You look surprised. Did you think it was easy being a Sikh girl? #speaker_right

+ [No]  No, of course not. #speaker_self
    I guess I just never thought hard about it from that perspective. #speaker_self
    Right. I think it’s easy for people to overlook, because the guys wear turbans and the girls, maybe we don’t stick out as much. #speaker_right
+ [I thought Sikh guys had it harder]
    No, of course not. #speaker_self
    I guess I always assumed it was harder for the guys, since we all follow the same faith and the same rules, but the girls can leave their hair long without the turban. #speaker_self
    Right. Maybe we don’t stick out quite as much. #speaker_right
- But that doesn’t mean we have an easy time. #speaker_right
#speaker_right_image:cha_aman_jothi_hairflip.png
Remember when I kept my hair long as a kid? #speaker_right
Yes, you kept it long until you entered JC. #speaker_self
#speaker_right_image:cha_aman_jothi_sad.png
Well, when I was in school, the kids used to make a big deal about my hair. #speaker_right
One girl especially, she really had it out for me. #speaker_right
When we were in Sec Three, she wrote a letter to the teacher, and she made a copy of the letter just for me. #speaker_right
Huh? What did it say? #speaker_self
That she had a sensitive sense of smell, and allergies. So she said my hair was very ‘pungent’. Because of the oils I used. #speaker_right
She said that she couldn’t stand the smell and it made her sick. #speaker_right
She gave the letter to our form teacher and she dropped a copy on my desk in an envelope labelled “FYI”. #speaker_right
Oh my god, that is twisted. #speaker_self
Right. The teacher didn’t do anything, I guess she saw through what was happening. #speaker_right
But the girl never got off my case. And she even said to me once that since she sits behind me, it would be so easy for her to cut off the end of my braid. #speaker_right
You know how traumatised I was? I couldn’t concentrate in class at all, I was constantly terrified. #speaker_right
+ [That's awful] That’s awful. #speaker_self
    Well, it was a long time ago. #speaker_right
    You know who was really supportive about it though? #speaker_right
    Who? #speaker_self
+ [You should have told someone!] Why didn’t you tell the teacher? Or any of us at home? #speaker_self
    I did tell someone. #speaker_right
    Who? #speaker_self
- Papa-ji. #speaker_right
What?! #speaker_self
Yup. I told him what was going on because he found me crying at the dining table in the dark one night. #speaker_right
I’m not sure what he did, but the teacher got the whole class to re-shuffle our seating arrangements the next week. #speaker_right
And she never assigned me to work with that girl for any school projects again. #speaker_right
Is that why, when you decided to keep your hair short in JC, he never yelled at you? #speaker_self
#speaker_right_image:cha_aman_jothi_normal.png
I always found it surprising that he took it so calmly. #speaker_self
He said he would wait for me to be ready to return, and make the right decision in the future. #speaker_right
That was actually when I first truly realised that Papa-ji is compassionate inside. #speaker_right
I think he just doesn’t know how to express it. #speaker_right
You know, Papa-ji and you are the same in some ways. #speaker_right
What do you mean? We’re like night and day. #speaker_self
Yes, but there are similarities. You can both be very absorbed in whatever it is you’re pursuing. #speaker_right
For Papa-ji, it’s his business. For you, it’s your acting. #speaker_right
Both of you give everything to what you’re doing. #speaker_right
And sometimes, along the way, you can both come across as a bit… unaware of what other people are going through. #speaker_right
But you both have marshmallow hearts. Papa-ji just hides it better. #speaker_right

#speaker_left_image:cha_aman_mama_happy.png
Wow, you two look like you’re having a serious conversation! #speaker_left
Dinner is ready! Can you go call your Papa-ji? He’s in his study. #speaker_left
You mean my bedroom, that he now calls his study? #speaker_right
Well, now it’s his study. #speaker_left
When you and Kirpal are rich, you can buy us a big home, and he can have his own study, and you can have your bedroom back, okay? #speaker_left
Erm. Okay, let me go call Papa-ji from his study. #speaker_right




-> aman_3_3_narration 


=== aman_3_3_narration ===
#knot:aman_3_3_narration
#ui:narrator
#background:bg_aman_bedroom.jpg
Later that night, back in my room.
My talk with Jothi left me with a lot to think about.
The more I think about it, the more I see how hard things must have been for Sel.
...And how my choices don’t just affect my own dreams.
It must have really hurt her when I just fell asleep halfway last night.
I need to talk to her.
I need to tell her what I’ve decided for my future.

-> aman_3_3

=== aman_3_3 ===
#knot:aman_3_3
#ui:whatsapp
#background:whatsapp.png
#chat_group_title:Sel 😍😍 
#chat_group_image:ico_aman_selinder.png
#speaker_1_name:Selinder
#timestamp:22.53
Hey #speaker_self
...hey #speaker_1

+ [Apologise] I’m sorry I fell asleep while we were fighting last night #speaker_self
    I didn’t know you were crying on the other end. I wasn’t thinking about how much you were affected #speaker_self
    No, I’m sorry. #speaker_1
+ [Let her continue]  I was going to msg you too. #speaker_1
    I’m sorry #speaker_1
- I said some really awful things #speaker_1

I didn’t mean them #speaker_1
I shouldn’t have said them #speaker_1
I don’t know why they came out of my mouth. #speaker_1
It’s okay #speaker_self
I mean honestly it hurts. #speaker_self
But you needed to get it off your chest #speaker_self
I had a talk with Jothi and she helped me see some things more clearly. I know that all of this hasn’t been easy for you either. #speaker_self
...And that sometimes, I can be a little self absorbed. #speaker_self
Thank you for acknowledging that, it actually means a lot. #speaker_1
We’ve been through so much #speaker_self
We should know better than to hurt each other like this… #speaker_self
Hmm sometimes I think #speaker_1
The longer you know someone, the more you know how to hurt them #speaker_1
But you’re right, that makes it more important not to misuse what we know #speaker_1
I shouldn’t have said any of that stuff about your acting. #speaker_1
You are honestly amazing. #speaker_1
You always have been… #speaker_1
Haha… seven years babe. #speaker_self
More than that #speaker_1
Lol #speaker_1
Remember when we met in Punjabi school?? #speaker_1
We were like how old?? kids!! #speaker_1
You looked so cute in your patka (headwear for Sikh boys) #speaker_1
And so chubby #speaker_1
You were cuter la #speaker_self
I was such a nerd, and you offered to help me with my math #speaker_self
Your math hopeless la #speaker_1
Hahaha #speaker_1
I miss those days… #speaker_1
Rmb when you asked me to be your girlfriend? #speaker_1
Um yes. #speaker_self
Haha and you got down on one knee. So cringe #speaker_1
Omg. I was being sincere! #speaker_self
I knowwwwww and it melted my heart #speaker_1
I actually had a crush on you for so many years already #speaker_1
Even though we went to different schools, we always had that weekend Punjabi school connection #speaker_1
I would look for your family at the gurdwara every week and come up and say hello to your parents, they thought I was such a good kid #speaker_1
I just wanted to see you 🤣🤣 #speaker_1

+ [Do you still feel the same way?] And now?  #speaker_self
    How do you feel about me? #speaker_self
    About us #speaker_self

+ [It’s been an amazing journey] You were always my best friend Sel #speaker_self
    Past tense?  #speaker_1
    ++ [It’s still the same] Present tense #speaker_self
        Unless you feel differently? #speaker_self

    ++ [We’ve drifted] I don’t mean it that way, but it’s true that things have not been the same #speaker_self
        For a while now #speaker_self
        I didn’t know to talk about it with you #speaker_self
        How do you feel?? #speaker_self
- Ah… now #speaker_1
The hard part #speaker_1

#ui:scene
#background:bg_aman_bedroom.jpg
Why does my stomach feel hollow? #inner_monologue
Like my heart is clenching. #inner_monologue
#ui:whatsapp
#background:whatsapp.png
#chat_group_title:Sel 😍😍 
#chat_group_image:ico_aman_selinder.png
#speaker_1_name:Selinder
Last night and today were tough for me jaan #speaker_1
I cried last night #speaker_1
I cried all afternoon #speaker_1
I know that your dreams are important to you, and I always told myself we shared the same dreams. #speaker_1
Or if not, then I would follow yours. #speaker_1
But now I know, my dreams are important too #speaker_1
And I’m really sorry, I can’t bear the uncertainty anymore… the waiting, and worrying #speaker_1
I think I’m in a time of life when I need a bit more stability. #speaker_1
I love you so much, you have no idea. #speaker_1
But if we are going to stay together, I need to know if you want the same thing… #speaker_1
or if you are still exploring and trying things with the acting route #speaker_1
And if you are, then I’m so happy for you!! but #speaker_1
that life is not for me #speaker_1
not anymore. #speaker_1
I hear you Sel #speaker_self
I know where you’re coming from now. #speaker_self

VAR aman_3_career = ""
I thought about it for a long time. #speaker_self
and....
+ [I will take the consulting job, and be with you] -> aman_3_3a
+ [I cannot take the consulting job. Sorry, I want to try acting]  -> aman_3_3b

= aman_3_3a
I’ll take the job. Acting can wait. #speaker_self
~ aman_3_career = "consulting"
VAR aman_3_consulting = true
Our future together is more important #speaker_self
Oh jaan… #speaker_1
Are you sure?? #speaker_1
I feel so bad like I’ve pressured you into this #speaker_1
No, don’t think that at all!! #speaker_self
You know, biz school wasn’t all that bad, I actually enjoyed myself #speaker_self
Might actually be good at it 😬 #speaker_self
The job offer actually sounds really exciting. I was on the fence either way #speaker_self
So this isn’t about choosing between you and acting or anything like that #speaker_self
But it helps me make my choice more peacefully bc the way forward for us will be clearer #speaker_self
And if you are willing to walk that path with me.... Then that will make me the happiest idiot in the world #speaker_self
Jaaaaaaan #speaker_1
I promised myself I was done crying for the day 🤣🤣 #speaker_1
I was bracing myself to get ditched #speaker_1
I love you Amandeep Singh Sahota #speaker_1
Love you more, Selinder Kaur #speaker_self
I have this big smile on my face #speaker_1
But jaan, acting #speaker_1
Don’t close the door on it, ok? I know it will be more difficult with your job #speaker_1
But maybe you can still do some community theatre on the side, idk #speaker_1

+ [Definitely] Sure bb, don’t worry about it. I will find some way 💪 #speaker_self
+ [No, I think I’m done] Ah… I think it’s probably best that I close the door on that for now. #speaker_self
    I don’t want to split my time  #speaker_self
- Right now I just want to focus on starting the next part of our lives together #speaker_self

Like saving for BTO #speaker_self
Omg don’t start #speaker_1
I’m dreaming already #speaker_1
Hahahah #speaker_1
I love you so much bb. I’m gonna sleep happily tonight #speaker_1
Better go rest, what a big day #speaker_self
😘😘 #speaker_self
See you at opening night ok? #speaker_self
I’ll be front row can’t wait #speaker_1
Sleep tight bb and get enough rest otherwise can see your panda eyes from the stage #speaker_1
Goodnight ❤️   #speaker_1
🥰😘️ Night! #speaker_self
-> aman_3_4_narration


= aman_3_3b
I can’t take the job. I’m sorry. #speaker_self
~ aman_3_career = "acting"
~ aman_3_consulting = false
I think I would never forgive myself for turning my back on the chance to act in a professional play #speaker_self
I would always question myself, and regret things #speaker_self
And over time that might become resentment #speaker_self
That can’t be healthy for either of us #speaker_self
I love you. So much #speaker_self
Can’t we make it work? #speaker_self
I wish that with all my heart #speaker_1
But I can’t keep kidding myself. #speaker_1
I guess this is the last time I’ll ever say it #speaker_1
I love you, Aman. #speaker_1
Loved you for a decade #speaker_1
Always will. #speaker_1
Thank you for everything #speaker_1
Goodbye. #speaker_1

#ui:scene
#background:bg_aman_bedroom.jpg
Wait, this can’t be it… just like that? #inner_monologue

#ui:whatsapp
#background:whatsapp.png
#chat_group_title:Sel 😍😍 
#chat_group_image:ico_aman_selinder.png
#speaker_1_name:Selinder
Wait, Sel #speaker_self
Sel?? #speaker_self

+ [Leave it be]
#ui:scene
#background:bg_aman_bedroom.jpg
    It’s no use. #inner_monologue
    We’ve both made our choices. #inner_monologue
    My best friend is gone. #inner_monologue
    -> aman_3_4_narration
+ [Write your last goodbye]
    I guess that’s it then. I am sorry I couldn’t be what you need in the end. #speaker_self
    I love you too. I respect your decision. #speaker_self
    If you ever need me… I’ll be out there. #speaker_self
    Goodbye Sel. #speaker_self
    -> aman_3_4_narration


=== aman_3_4_narration ===
#knot:aman_3_4_narration
#ui:narrator
#background:bg_aman_bedroom.jpg
{aman_3_consulting:
- true:
    Two weeks later.
    Opening night was a success. We got a standing ovation!
    I knew it would be my last time acting on stage for a long while - if ever again.
    So I gave everything I had to my performance.
    A swan song…
    I saw Sel in the front row, standing and cheering, at the end. 
    She even ran up to hand me flowers, which the audience loved. 
    She was radiant.
- false:
    Two weeks later.
    After Sel and I broke up, I felt numb and empty.
    But I still had a job to do.
    I threw all my energy into my performance for opening night.
    It was a big success. We even got a standing ovation.
    As everyone stood and cheered, I scanned the front row for Sel’s face.
    But of course, she wasn’t there.
}

-> aman_3_4

=== aman_3_4 ===
#knot:aman_3_4
#ui:whatsapp
#background:whatsapp.png
#chat_group_title:Extended Family Chat
#chat_group_image:ico_aman_extendedfamily.png
#speaker_1_name:Papa
#speaker_2_name:Uncle Ranjit
#speaker_3_name:Cousin Harpreet
#speaker_4_name:Jothi
#speaker_5_name:Mum
#timestamp:0931
WELL DONE BABY BRO!! 🥳🥳 #speaker_4
bg_aman_reviewscreenshot.jpg #speaker_4 #image
“Turns out The Loser is a winner, thanks to a superb effort by this student theatre club. Especially memorable is lead actor and antihero Aman Singh as Jay: the mysterious new boy in school, with shrouded motives.  #speaker_4
At first shy and unassuming, Jay reveals his darker shades as he orchestrates a series of escalating antics: from psychological manipulation, to a cynical social media campaign, and finally a rage-fuelled campus protest where all hell breaks loose.  #speaker_4
Singh delivers a masterful transformation, from awkward newcomer to anarchist-crusader. His physical theatre is remarkable, from the subtlest tics to his slow, prowling swagger. There is nothing pretentious, ever, in his delivery; we are allowed to forget he is acting. He is definitely one to watch.”  #speaker_4
Whoa! Good job Aman! #speaker_3
{ aman_3_tickets != 3:  
    It was a strong performance. #speaker_1 
}
My talented boy 🥰 #speaker_5
{ aman_3_tickets: 
- 1:
    Everyone cheered the loudest for our Aman. #speaker_5
    Especially that tall boy with the huge banner that said Man United’. Very strange. #speaker_5
    😅 That was Lukman, mum #speaker_self
    Thanks everyone 🙏🏽🙏🏽 Really grateful for the support #speaker_self
- 2:
    Everyone cheered loudly for our Aman. #speaker_5
    I saw that boy Zhihao nodding off during the performance, but at the end, he shouted and clapped the loudest! #speaker_5
    😅 Not really Zhihao’s scene #speaker_self
    But really, thanks everyone 🙏🏽🙏🏽 I’m grateful for the support #speaker_self
- 3:
    Everyone cheered loudly for our Aman. #speaker_5
    There was even a tall boy with a huge banner that said ‘Man and Man United’. I don’t see how it was relevant to the play but he was certainly very enthusiastic. #speaker_5
    I also saw the neighbour’s boy Zhihao. He was dozing off during the performance, but at the end, he cheered the loudest! #speaker_5
    Aman, you have a real fan club. #speaker_5
    😅 Just very enthu friends #speaker_self
    Thanks everyone 🙏🏽🙏🏽 Really grateful for the support #speaker_self
}
Congratulations, Aman. Sounds like you were acting as a real troublemaker, eh! #speaker_2
What comes next? How is your job hunt going? #speaker_2
+ [Break the news] -> aman_3_4a
+ [Drop a hint] -> aman_3_4b


= aman_3_4a
{aman_3_consulting:
- true:
    So I’m actually starting a new job soon :) in business consulting #speaker_self
    Sorry Papa-ji and Mummy-ji, I didn’t have the chance to tell yet... #speaker_self
    I got the job offer some weeks ago and I’ve replied them to accept #speaker_self
    That’s good, son. #speaker_1
    Wonderful 😍 We will find a time to celebrate #speaker_5
    Congratulations! #speaker_2
    Our Harpreet is in banking, I’m sure you will have a lot to talk about. #speaker_2
- false:
    So I will actually be acting in an upcoming play :) Rehearsals start very soon. #speaker_self
    It will open at the Esplanade and I would love to invite all of you to see it #speaker_self
    🙌🏽 AMAZING #speaker_4
    Whoa, that’s awesome! #speaker_3
    Banking hours are brutal but would love to see it if I can #speaker_3
    😍 We will find a time to celebrate #speaker_5
    Thanks everyone! #speaker_self
}
-> aman_3_4c

= aman_3_4b

{aman_3_consulting:
- true:
    It’s going well :) I expect to go into consulting soon #speaker_self
    Good choice. #speaker_2
    Our Harpreet is in banking, I’m sure you will have a lot to talk about. #speaker_2
- false:
    So I might try my hand at professional acting :) #speaker_self
    I do have an opportunity lined up and hope to share more soon #speaker_self
    Awaiting the good news, beta! #speaker_5
    Acting, hmm? Your work life balance should be good. #speaker_2
    Not like our Harpreet, he is in banking and always meeting with bigshots, so we never get to see him. #speaker_2
    #ui:scene
    #background:bg_aman_bedroom.jpg
    Oh, Uncle Ranjit…… always trying to humblebrag about your Harpreet. #inner_monologue
    #ui:whatsapp
    #background:whatsapp.png
    #chat_group_title:Extended Family Chat
    #chat_group_image:ico_aman_extendedfamily.png
    #speaker_1_name:Papa
    #speaker_2_name:Uncle Ranjit
    #speaker_3_name:Cousin Harpreet
    #speaker_4_name:Jothi
    #speaker_5_name:Mum
}

-> aman_3_4c

=== aman_3_4c ===
#knot:aman_3_4c
#ui:notification
#background:ui_nadia_message.jpg
Jothi: hey # message
#ui:whatsapp
#background:whatsapp.png
#chat_group_title:Jothi Penji
#chat_group_image:ico_aman_jothi.png
#speaker_1_name:Jothi
{aman_3_consulting:
- true: -> aman_3_4c1
- false: -> aman_3_4c2
}

= aman_3_4c1
What happened to acting? #speaker_1
+ [I'm giving it up]  I said no to the production #speaker_self
    I guess I’m done with acting. #speaker_self
    I just have to be pragmatic #speaker_self
+ [I'm putting it on hold] I said no to the production ☹️  #speaker_self
    Maybe when work is more stable, I can look for chances on the side #speaker_self
    But for now I just have to be pragmatic #speaker_self
- Acting is my first love but it’s not the only thing that matters in my life #speaker_self
    Hm. #speaker_1
    That sucks, not gonna lie. #speaker_1
    But you’ll do well. #speaker_1
    Buy Sel some nice things. #speaker_1
    She’s not a materialistic girl #speaker_self
    Never asks for anything #speaker_self
    That’s cool #speaker_1
    But do it anyway ;) free advice from your penji. #speaker_1
    Haha. Got it. #speaker_self
-> aman_3_4d

= aman_3_4c2
So you said no to being a wage slave? #speaker_1
Yup. #speaker_self
How did Sel take it? #speaker_1
Not sure… since we broke up. #speaker_self
Oh shit. No wonder she wasn’t at your play. #speaker_1
I’m sorry. #speaker_1
It’s ok. Keep it to yourself first ok? #speaker_self
I’ll tell mum next. But not the rest yet #speaker_self
Still processing. #speaker_self
Yes. #speaker_1
You okay? #speaker_1
+ [No] Not really #speaker_self
+ [I will be]  Taking it day by day. I’ll get there #speaker_self
- You know my address, use it anytime. Here for you #speaker_1
Thanks penji #speaker_self
🥰 #speaker_1

-> aman_3_4d

=== aman_3_4d ===
#knot:aman_3_4d
#ui:scene
#background:bg_aman_bedroom_day.jpg
#speaker_left_image:cha_aman_mama_happy.png
#speaker_left_name:Mum
Lunch is ready, beta. Come and eat with me. #speaker_left
Sure, mum. #speaker_self
#speaker_left_image:cha_aman_mama_concerned.png
Is everything alright? You look a bit pensive. #speaker_left
{aman_3_consulting:
- true: -> aman_3_4d1
- false: -> aman_3_4d2
}

= aman_3_4d1
Just thinking about the future. Once I start work, I won’t have time for acting. #speaker_self
How do you feel about that? #speaker_left

+ [At peace] I think I’ll be okay.  #speaker_self
    It’s hard to give up something you love, but I also have to think about Sel and our future together. #speaker_self
+ [Conflicted] I’m not sure.  #speaker_self
    I made my choice, and I think it will allow Sel and I to have a better future together. #speaker_self
    But I still go back and forth in my head. #speaker_self
    I’m afraid I’ll live my life thinking about the what-ifs. #speaker_self
- Oh beta... #speaker_left

-> aman_3_4e

= aman_3_4d2
I noticed Papa-ji didn’t say anything when I talked about going into acting. #speaker_self
Maybe he disapproves. #speaker_self
Would you change your decision if he did? #speaker_left

+ [Maybe] I don’t know. I don’t know if I’m doing the right thing. #speaker_self
+ [No] I guess not. But I don’t want him to be disappointed. #speaker_self
- And mum, I have to tell you... #speaker_self

I’m sorry, but Sel and I broke up over this. #speaker_self
Oh, beta… #speaker_left
Come and give me a hug. #speaker_left
It hurts. #speaker_self
It’s all my fault… #speaker_self
Don’t cry, beta. It’s not your fault. #speaker_left
I’m proud of you for being so talented, and following your passion. #speaker_left

-> aman_3_4e

= aman_3_4e
Let me tell you something I have learned in this life. #speaker_left
There are no perfect endings. No perfect choices. #speaker_left
No matter what you decide, nothing will always be rosy. #speaker_left
What matters is that you don’t spend your life looking over one shoulder, and building up regrets. #speaker_left
If you can move forward with your eyes open, knowing that any path you take has its sacrifices… #speaker_left
You can face the future with serenity. With chardikala. #speaker_left
Do you know that your Papa-ji has faced such choices too? #speaker_left

+ [Like what?] Like what choices? #speaker_self
+ [I don’t believe it] I can’t imagine that. He never hesitates in anything.  #speaker_self
    He’s always been all about his work. #speaker_self
- Well don’t tell him I told you this, but he is quite a fine writer. #speaker_left

That’s how he stole my heart. With poetry! #speaker_left
#speaker_left_image:cha_aman_mama_happy.png
What?! Papa-ji… and poetry?! #speaker_self
It’s true! He likes to write more fiction, but he wrote poems just for me. #speaker_left
He considered switching careers to journalism, but with Jothi on the way, he decided not to. #speaker_left
But when he locks himself up in his study late at night, sometimes he is working on his short stories. #speaker_left
The closer he gets to retirement, the more he writes. #speaker_left
But he never talks about it. Why wouldn’t he share this with his family? #speaker_self
You know, he was not always such a stern-looking man. #speaker_left
Sometimes, I do think, he might have regrets in his heart. #speaker_left
He deals with them quietly, on his own. Maybe that is why he has become so reserved. #speaker_left
You should talk to him, Aman. #speaker_left
You two are more alike than you think. #speaker_left
That’s weird. Jothi said the same thing. #inner_monologue

-> aman_3_5_narration

=== aman_3_5_narration ===
#knot:aman_3_5_narration
#ui:narrator
#background:bg_aman_papastudy.jpg
Later that night.
I can’t stop thinking about what mum and Jothi said.
Could it be true?
Do we have more in common than I ever imagined?
I should talk to him... if I can remember how.
I knock on the door of Jothi’s old bedroom, which Papa-ji uses as a study now.

-> aman_3_5


=== aman_3_5 ===
#knot:aman_3_5
#ui:scene
#background:bg_aman_papastudy.jpg
#speaker_right_image:cha_aman_papa_normal.png
#speaker_right_name:Papa
Yes? #speaker_right
Hi Papa-ji. I just wanted to… #speaker_self

+ [Say goodnight] Say goodnight. #speaker_self
    Ah. Goodnight, son. #speaker_right
+ [See what you're up to] See what you’re up to. #speaker_self
    I.. er.. Just curious. #speaker_self
    Just my own matters. #speaker_right
    Ah… cool. #speaker_self
- Crap. Think hard… #inner_monologue
What is he typing? Could it be one of his short stories? #inner_monologue

+ [What are you working on?]
    Are you working on - work stuff? #speaker_self
    #speaker_right_image:cha_aman_papa_kind.png
    Why do I always sound like such an idiot in front of him? #inner_monologue
    Actually, I’m working on some personal things. #speaker_right
    ...A bit of fiction. Just a hobby. #speaker_right
    Really! #speaker_self

    ++ [What's it about?] What’s it about? #speaker_self
        Well, it’s not in any state to show anyone. #speaker_right
        When I’m done, I might let you have a look. #speaker_right
        You would probably have a better eye than me, since you are active in the arts. #speaker_right
    ++ [That sounds cool]
        That sounds really interesting. #speaker_self
        I’m glad you think so. #speaker_right
        There is a young chap in the story. Maybe when it is drafted, I’ll let you have a look. #speaker_right
        You would know better than me what young people are like these days. #speaker_right
    -- Yes, that sounds great. #speaker_self
        I never knew you liked to write. #speaker_self
        Well, you never asked. #speaker_right
        Ouch. #inner_monologue
        But fair. #inner_monologue
    
+ [Don’t sleep too late]
    Don’t sleep too late, Papa-ji. #speaker_self
    #speaker_right_image:cha_aman_papa_kind.png
    Well, thank you for checking in on me. #speaker_right
    
- Since you’re here, Aman. #speaker_right

{aman_3_tickets == 3:
    I’m glad to hear your performance went well the other night. #speaker_right
    I should have invited him. #inner_monologue
- else: 
    You did a very good job in your play the other night. #speaker_right
    I was proud. #speaker_right
    He says he’s proud… of me! #inner_monologue
}

{aman_3_consulting:
- true:
    It’s too bad, there might never be another chance for him to see me on the stage. #inner_monologue
- false:
    Would you like to come and see the next play I’ll be in? #speaker_self
    Certainly. I would like that. #speaker_right
}
Thanks, Papa-ji. #speaker_self

+ [Goodnight, then] -> aman_3_5a
+ [Ever have regrets?] -> aman_3_5b

= aman_3_5a
#speaker_right_image:cha_aman_papa_kind.png
Goodnight. #speaker_self
VAR aman_3_paparegrets = false
Goodnight, son. #speaker_right
-> aman_3_6

= aman_3_5b
May I ask you a personal question? #speaker_self
~ aman_3_paparegrets = true
You may. #speaker_right
Do you ever regret anything? #speaker_self
#speaker_right_image:cha_aman_papa_sad.png
Like, your life choices… or in your career? #speaker_self
... #speaker_right
There are some things that I think would have been interesting to explore, if circumstances were different. #speaker_right
But had I done any of those things, then life would have turned out quite differently. #speaker_right
But what if that life would have been better? #speaker_self
Honestly speaking, there was a time - a short period of time, when your sister was still young, and you were a few months from being born - that I was in a dark place. #speaker_right
We were not doing well financially, and I felt a heavy responsibility on my shoulders to make sure that all of you would be provided for. #speaker_right
I never wanted to walk away. But I did wonder what life would be like if I didn’t have all of these… responsibilities. #speaker_right
I did have dreams of my own and I would have liked to pursue them. #speaker_right
#speaker_right_image:cha_aman_papa_kind.png
Then you were born, Aman. And over time, as I saw how you and your sister were growing, these thoughts faded. #speaker_right
Because of my past choices, I now have your mother. Your sister. And I have you. #speaker_right
If I had made different choices, perhaps I would still have a good life. Even a wonderful life. #speaker_right
But I would not have this life. #speaker_right
And this is the life I want. #speaker_right
Mum and Jothi were right. #inner_monologue
We do have more in common than I thought. #inner_monologue
Goodnight, Papa-ji. I love you. #speaker_self
Goodnight, son. I love you too. #speaker_right
-> aman_3_6

= aman_3_6
{aman_3_consulting == true && aman_3_paparegrets == false: -> aman_3_6_ending_1}
{aman_3_consulting == false && aman_3_paparegrets == false: -> aman_3_6_ending_2}
{aman_3_consulting == true && aman_3_paparegrets == true: -> aman_3_6_ending_3}
{aman_3_consulting == false && aman_3_paparegrets == true: -> aman_3_6_ending_4}

=== aman_3_6_ending_1 ===
#knot:aman_3_6_ending_1
#ui:narrator
#background:bg_aman_intro.jpg
My talk with Papa-ji left my heart feeling lighter.
But I never summoned up the courage to ask him if he had any regrets.
Maybe one day.
Putting acting aside was the hardest thing I’ve ever done. 
But I think it’s the right choice.
With Sel by my side, I’ll work hard every day to make it so.
For so long, acting was the only way I knew how to show my true self.
Not just as a Sikh with a turban, but as me. 
But I know there are other ways out there that I can live a joyful and meaningful life.
There are many ways in the world... to be me.
-> chapter_3_ending_1

=== aman_3_6_ending_2 ===
#knot:aman_3_6_ending_2
#ui:narrator
#background:bg_aman_intro.jpg
My talk with Papa-ji left my heart feeling lighter.
But I never summoned up the courage to ask him if he had any regrets.
Maybe one day.
Sel and I could have had a life together… something like what Papa-ji and mum have.
I wonder what that life would have looked like.
But as mum would remind me, we can only move forward.
I don’t know if I can succeed in the world of acting.
If there are enough roles out there for a guy like me.
But even if there aren’t, I’ll write new roles.
I will make my own script.
I won’t give up on being me.
-> chapter_3_ending_2



=== aman_3_6_ending_3 ===
#knot:aman_3_6_ending_3
#ui:narrator
#background:bg_aman_intro.jpg
That night in Papa-ji’s study was the most he’d ever opened up to me.
It left my heart feeling lighter, and helped me feel braver and better about my choice.
Like me, Papa-ji chose to leave something behind… or at least postpone it for a while.
He did that out of love, and hopes and dreams.
Talking to him made me realise that when you give up some dreams, you don’t do it for anybody else.
You do it for yourself. Because you have a different dream.
I’m ready to move forward, for a new dream.
I am more than my acting. I am full of possibilities.
I’m ready to just be me.
-> chapter_3_ending_3


=== aman_3_6_ending_4 ===
#knot:aman_3_6_ending_4
#ui:narrator
#background:bg_aman_intro.jpg
That night in Papa-ji’s study was the most he’d ever opened up to me.
It left my heart feeling lighter, but I also had a flicker of doubt.
By choosing acting, was I shutting the door on a different life?
A life like Papa-ji came to have with mum, and Jothi and me?
But as mum would remind me, we can only move forward.
My heart remains open to start a family one day.
But right now, I have a different dream to run after.
I know it won’t be easy - reality won’t change overnight.
But I believe I can help that change happen faster. 
If I need to, I’ll write my own roles. I’ll make my own script.
By staying true to my art.
True... to being me.
-> chapter_3_ending_4




=== chapter_3_ending_1 === // for debug only
#knot:chapter_3_ending_1
#ui:story_end
#reflection_id:6
the end = 1    
VAR chapter_3_ending = 0 
~ chapter_3_ending = 1 
VAR story_finished = true
.

    -> END
 
=== chapter_3_ending_2 === // for debug only
#knot:chapter_3_ending_2
#ui:story_end
#reflection_id:6
the end = 2
~ chapter_3_ending = 2
~ story_finished = true
.
      -> END

=== chapter_3_ending_3 === // for debug only
#knot:chapter_3_ending_3
#ui:story_end
#reflection_id:6
the end = 3
~ chapter_3_ending = 3
~ story_finished = true
.
    -> END

=== chapter_3_ending_4 === // for debug only
#knot:chapter_3_ending_4
#ui:story_end
#reflection_id:6
the end = 4
~ chapter_3_ending = 4
~ story_finished = true
.
      -> END

=== story_end_browser ===
#ui:story_end_browser
#reflection_id:6
reflection browser

    -> END