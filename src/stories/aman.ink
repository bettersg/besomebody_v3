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
#chat_group_image:ico_aman_family.png
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

+ [I'm just worried about not doing well]  I just don’t want to disappoint you all. #speaker_self
    VAR aman_1_nsworries = "not doing well"
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
    (Laughs.) Okay mum, okay. You’re right. #speaker_self
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
        
        ++ [Lie low]
        VAR aman_1_nsgoals = "lie low"
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
    Oh please, you believe? Refer them to me for what? 
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
#speaker_left_image:cha_aman_lukman_hurt.png
#speaker_left_name:Lukman
#speaker_right_image:pixel.png
Hey man, what was that about? #speaker_left
Oh, they were being fools. #speaker_self
You okay? #speaker_left
Yeah, I’m used to it. Same story since young, being teased. Happens all the time. I just thought people would be more mature in NS. #speaker_self
#speaker_left_image:cha_aman_lukman_normal.png
I’m also not used to being around other people with my hair not covered. But my hair is wet, so what to do, right. #speaker_self
Screw them. They don’t matter. #speaker_left
-> aman_1_3_lukmanchat

= aman_1_3c
#background:bg_aman_bmtmirrorgrin.jpg
Oh, are they looking for a pontianak? I’ll give them something to remember. #inner_monologue
Let my eyes glaze over, slowly turn around… #inner_monologue
Advance on them, step by step... #inner_monologue
#background:bg_aman_bmtpotianak.jpg
Waaaaaahaha! Ouuaahhkeke! #speaker_self
#speaker_left_image:cha_aman_bunkmate2_afraid.png
What the --  #speaker_left
Ha! That was brilliant, dey. I was legit freaked out. #speaker_right
#background:bg_aman_bmtbunk.jpg
Well, that seems to have settled them. Glad they’re turning their attention to something else now. #inner_monologue
#speaker_left_image:cha_aman_lukman_curious.png
#speaker_left_name:Lukman
Wow, what was that about! #speaker_left
#speaker_left_image:cha_aman_lukman_normal.png
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
#speaker_left_image:cha_aman_lukman_normal.png
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
When I told you I wanted to try for OCS, you didn’t laugh or accuse me of trying to be wayang, but you said you thought I had potential. #speaker_left
But you do! #speaker_self
See? #speaker_left
I don’t want to tell the rest about the OCS thing, they’d make fun of me for trying. Plus, my grades are okay but they’re not that high. And people also say it’s harder to get into some positions as a Malay-Muslim. #speaker_left
Really? But I thought there are Malay fighter pilots and Generals? #speaker_self
Yeah, there are some. It’s just... rare. #speaker_left
To be fair, I think things are slowly getting better. At least now we can go on ships. #speaker_left
Huh? Why couldn’t you go before? #speaker_self
No Halal kitchens, supposedly. #speaker_left
#speaker_left_image:cha_aman_lukman_sad.png
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

#speaker_left_image:cha_aman_lukman_normal.png
Eh for you how? You haven’t said what you want - command school or slack? #speaker_left
I haven’t decided yet. I mean, I’ll do what I can. #speaker_self
Still early days. How about after NS? #speaker_left
After? Er, I’m going into business school. #speaker_self
You don’t sound so happy about that. #speaker_left
Er, it’s okay lah. Honestly, if I could do something else, I might consider it. #speaker_self
Like what? #speaker_left

+ [Confide in him about your dream] I’ve actually been thinking about trying… acting? #speaker_self
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
    
+ [Hesitate to share]
    Top secret. #speaker_self
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
And a couple of grant admin jobs in govt agencies #speaker_1
You’re gonna be a career woman huh, way ahead of me… #speaker_self
Don’t be silly jaan. Well, maybe at first #speaker_1
But you are going to university remember, and doing business #speaker_1
So you will be the big dollars man. 🤪 #speaker_1

+ [Maybe] Gotta work for my bb, I know #speaker_self
    VAR aman_1_selinderchat = "maybe"
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
#background:bg_aman_indianrestaurant.jpg
Two years later.
Full-time NS is finally behind me!
I may not have made it into OCS, but I think it worked out for the best. My role feels right to me.
Lukman didn’t get into OCS either. But he worked hard as a Transport Operator and eventually got his 3SG rank, same as me.
Jothi is blissfully married to Kirpal by now. I weirdly miss having her around.
But we still see each other often, and she joins us for dinner sometimes, like tonight.

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
VAR aman_1_familydinner = "acting"
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


 
 -> END