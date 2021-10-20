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


-> aman_holding_line

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
#speaker_left_image:cha_aman_mum.png
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
+ [From you] People say I take after you, don’t they?
    Nonsense, you look just like your Papa-ji. #speaker_left
    I mean in character, you know. #speaker_self
    You and he are more alike than you think. #speaker_left
    But Papa-ji is always so serious. #speaker_self
    Yes, but you have the same stubbornness inside. #speaker_left
    I’m not stubborn! #speaker_self
    (laughing) Well, if you insist. #speaker_left

+ [From Jothi] Jothi has corrupted me with her bad influence. #speaker_self
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
+ [I'll do my best] Thanks everyone 🙏🏽🙏🏽 very touched by the support #speaker_self
    Will do my best 😅 #speaker_self
+ [I'll make you proud] Thank you so much everyone #speaker_self
    Won’t let you down 🙏🏽 #speaker_self
- I know you will do well, son. #speaker_1

 -> aman_1_1c
 
 === aman_1_1c ===
 #knot:aman_1_1c
#ui:scene
#background:bg_aman_bedroom.jpg
#speaker_left_image:cha_aman_mum.png
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
    
        + [I guess not] ...No, I guess not.  #speaker_self
        Then? #speaker_left
        But Papa-ji and Uncle Ranjit both did so well. Uncle Ranjit expects me to -   #speaker_self
        + [But it matters] No, but people do care about that kind of thing. #speaker_self
        Papa-ji and Uncle Ranjit both did so well in their time, and Uncle Ranjit especially - #speaker_self
        
    - Uncle Ranjit, Uncle Ranjit. Is Uncle Ranjit going with you to NS? Will you be taking him to Tekong in your backpack? #speaker_left
    (Laughs.) Okay mum, okay. You’re right. #speaker_self
    I know I am. #speaker_left
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
        
        + [Lie low]
        Honestly, I just want to survive NS, mum. #speaker_self
        Then you do that, beta.  #speaker_left
        It’s all I want for you as well. To come home safe and sound. #speaker_left
        
        + [Do well]
        I’d like to do well, if I can. #speaker_self
        I know NS is a big deal, and means a lot to Papa-ji… #speaker_self
        But I am not asking what Papa-ji wants. #speaker_left
        Never mind Aman, you think about it. #speaker_left
        Just make sure you come home to me safely. #speaker_left

        + [I don’t know]
        I haven’t figured that out yet. #speaker_self
        Well, if you don’t know what you want. #speaker_left
        (Laughs) You can’t fail, eh? #speaker_left
        
   
   
   
   
 
 -> END