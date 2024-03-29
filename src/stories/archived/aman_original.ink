/*
For cut-and-paste ease
#knot:nadia_1_intro
#ui:narrator
#background:aman_school.jpg
#music:aman_intro.mp3

#knot:aman_2_haircut_no
#ui:scene
#background:aman_school.jpg
#speaker_left_image:zhihao_smiling.png -> can be left blank
#speaker_left_name:Zhihao -> can be left blank
#speaker_right_image:eric_angry.png -> can be left blank
#speaker_right_name:Eric  -> can be left blank

#knot:aman_2_haircut_no
#ui:whatsapp
#background:whatsapp.png
#chat_group_title:Gavin Wong
#chat_group_image:gavin_profile.jpg
#speaker1_name:Gavin
#speaker2_name:Eric -> can be left blank
#timestamp:21.34

#knot:aman_2_haircut_no
#ui:email
#to:Jeffrey Tan <jeffrey@hotmail.com>
#subject:Job Application for Ravi


FOR MINIGAMES:
-> aman_2_minigame
=== aman_2_minigame ===
#knot:Aman_Chapter2_minigame
#ui:swipe or mcq
#game_id:2
Minigame // must add some text
-> aman_2_3 // point to next section of story


*/


-> aman_1_intro

// CHARACTER INTRODUCTION
 

=== aman_1_intro ===
#knot:aman_1_intro
#ui:narrator
#background:bg_aman_intro.jpg
#music:aman_intro.mp3
// DECLARE GLOBAL VARIABLES
VAR character_id = 2
VAR chapter_id = 1
VAR aman_mood = 10
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
// Sat Sri Akaal (God is Truth)!  I am Aman Singh. 
// As a Sikh, I keep my turban and beard, and wear the steel bangle, or kara. 
// Now, I'm not a perfect Sikh by any means, but I am still figuring out who I am... what faith means to me, and how I want to live my life.
// I’ve recently completed my diploma in accountancy, and NS is just around the corner. That’s going to be ‘fun’...
// I’m also interested in media, and I’ve been told I’m good looking. I don’t mind exploring acting and modelling jobs.
// My parents and my older sister Prabhjot (we call her Jothi) have always been important in my life.
// They’ve been nicer to me than usual, lately. I think it’s because I’m about to enlist. And after NS, I plan to pursue an accountancy degree in Melbourne. 
// They sometimes joke about losing the baby in the family. I think they genuinely feel a little sad.
// I’ll miss them, and my girlfriend Selinder. Sel and I met in poly, and people tease us because we're inseparable. It helps that she’s really smart and really pretty.
// I should mention one more thing. One of my best friends is Zhihao -- we’ve lived in neighbouring HDB blocks since childhood, so we grew up together in a way.
// Zhihao’s great! But he can also be... a lot, sometimes. You’ll see.
// So that’s me -- Aman. 
// And this is what it’s like, to be me.
// CHAPTER 1 #title
// Duty Calls #title

-> aman_holding_line

=== aman_holding_line ===
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


-> END


// -> aman_1_1_narration 

// START STORY


=== aman_1_1_narration ===
#knot:aman_1_1_narration
#ui:narrator
#background:bg_aman_sikheventhall.jpg
Zhihao and I are at a Sikh community event early on a Saturday morning.
-> aman_1_1


=== aman_1_1 ===
#knot:aman_1_1
#ui:scene
#background:bg_aman_sikheventhall.jpg
#speaker_left_image:cha_aman_zhihao_joking.png
#speaker_left_name:Zhihao
Oi! Focus la. You’re double-packing the fruits. #speaker_left
Crap. Thanks. #speaker_self
You okay? You’ve been so quiet this morning. PMS ah? #speaker_left
+ [I'm just nervous] Stop it lah. I'm just nervous about enlistment. When are you going in? #speaker_self
    Two months more. You? #speaker_left
    Next month. Quite nervous sia. #speaker_self
    Why ah? Oh - because you posted army right? #speaker_left
+ Haha must be lah.[] Anyway, thanks for doing this ya. I know volunteering is not the most exciting way to spend your weekend.  #speaker_self
    It’s ok, good karma. Anyway, I know you’re enlisting soon, so can’t hang out already. Next month going in already right? #speaker_left
    Uh - yeah. #speaker_self
    You sound like you got handed death sentence. Why? Because going army right? #speaker_left
- Ya. I thought I would get police. All my cousins got police. Dunno why I kena army. I heard BMT training is from morning to night. How to find time to wash my hair, dry my turban cloth... #speaker_self
You keeping your turban? Die la. The cloth is never-ending. Can reach JB! #speaker_left
+ [Oi, not funny] You gotta stop those ‘jokes’ man. Just cos I’m your friend and I give you a free pass, all the time...  #speaker_self
+ Funny ... ha-ha.[] Some of us have real problems on our hands you know.  #speaker_self
- I don’t get it though. If you’re so worried about your turban, why keep it? Can't you cut hair? #speaker_left
+ I can’t do that.[] That’s insane!  #speaker_self
    You know that is completely not allowed for Sikhs, right? And my parents would be so disappointed. #speaker_self
    And it’s not like I can’t wear my turban in NS. #speaker_self
    Uh, but you’ve been stressing about BMT for months.  #speaker_left
    Every time we meet you talk about the same thing. Can’t tell me you never thought about it. #speaker_left
    Sigh.  #speaker_self
+ I don't know how to explain this to you.[]  #speaker_self
    Keeping my hair is important to my family, and it's part of Sikh faith. #speaker_self
    But sometimes... I mean, I don't know if it's who I am. #speaker_self
    I don't know how to explain this to Zhihao. Heck, I don't know how to explain it to myself. #inner_monologue
    So maybe NS is just the excuse, but when I look in the mirror, I don't always feel like me with this. #inner_monologue
    This isn't an easy decision bro. I don't want to suffer in NS, but I also don't want to disappoint my family. #speaker_self
- You want to kena tekan  (be given a hard time) by your parents, or kena tekan by the sergeant major? #speaker_left
Is tekan by nobody an option? #speaker_self
This is NS, sure tekan.   #speaker_left
Wah thanks for the pep talk huh. Anyway, focus la! We still have to deliver all of these bags to the rental block. #speaker_self
Ok, whatever. I don't pretend to understand but all I know is BMT sounds damn siong (difficult) - and I think even tougher if every night you need to wash hair! #speaker_left
Don’t make things harder for yourself la.  #speaker_left

-> aman_1_2_narration


=== aman_1_2_narration ===
#knot:aman_1_2_narration
#ui:narrator
#background:bg_aman_mirrorinroom.jpg
Later that night in my room...

-> aman_1_2


=== aman_1_2 ===
#knot:aman_1_2
#ui:scene
#background:bg_aman_bedroom.jpg
#speaker_right_image:cha_aman_jothi_normal.png
#speaker_right_name:Jothi
Oh my god, can you like, KNOCK? #speaker_self
If you need privacy, lock the door. Anyway, what are you doing? Examining your forehead lines? #speaker_right
Told you to do your yoga face exercises before bed. It will keep you youthful and glowing, like moi. #speaker_right 
What do you want? #speaker_self
Can I borrow your airpods? I sent mine for servicing. #speaker_right 
Ya, it’s in the second drawer. Take and get out. #speaker_self
#background:bg_aman_drawerscissors.jpg
What is this? #speaker_right #speaker_right_image:cha_aman_jothi_sad.png
Nothing -- #speaker_self
Don’t lie to me, what is this? #speaker_right
Just take the airpods and go please, I have a lot of stuff to do -- #speaker_self
Have you been cutting your hair? Aman... #speaker_right
+ [Maybe, and?] Maybe I have, and maybe I haven't. My life, my choices.  #speaker_self
    Are you KIDDING me? Papa will kick you out. #speaker_right
+ None of your business.[]   #speaker_self
    You better not do anything stupid. Papa will kick you out. #speaker_right
- If he does, I can stay in camp. #speaker_self
How could you even say that! How can you take this so lightly? #speaker_right
Sis, until and unless you keep a turban yourself, or even keep your hair longer than your shoulders, or have to do bloody NS, for God’s sake, you are not in a position to comment on or judge my life choices.  #speaker_self
Don’t pretend to be so perfect. Neither of us are role models. #speaker_self
Don't you even go there Aman. I am not having that conversation with you right now. #speaker_right
Now, will you please take the airpods, and leave me alone? #speaker_self
Sigh. Aman, I... #speaker_right
... I ...  #speaker_right

-> aman_1_3_narration


=== aman_1_3_narration ===
#knot:aman_1_minigame
#ui:mcq
#game_id:1
Minigame 1 // must add some text

#knot:aman_1_3_narration
#ui:narrator
#background:ui_aman_message.jpg
One month later, Selinder and I are chatting at night.
My doubts and questions haven't gone away. In fact, they've gotten more intense.
With just days before NS, it's time to make a difficult choice.

-> aman_1_3


=== aman_1_3 ===
#knot:aman_1_3
#ui:whatsapp
#background:whatsapp.png
#chat_group_title:Selinder
#chat_group_image:ico_aman_selinder.png
#speaker_1_name:Selinder
23.34 #timestamp
Babe, I’m sorry... I know this isn't what you want to hear but I am honestly considering it. #speaker_self
Jaan (dear), don’t do anything rash. #speaker_1
This is really serious... our hair is important to us. Remember what we’ve been taught about being a good Sikh and honoring our Gurus? #speaker_1
About following the Sikhi way of life, no matter how challenging? Don’t do anything that will hurt your parents...  #speaker_1
And if it helps, I think you're handsome already! #speaker_1
+ Sel, I know what we've been taught[]... and I want to be a good person, I really do.. #speaker_self
+ I've just... been lost in my doubts lately.[]   #speaker_self
- I know I've been talking about NS with you and Zhihao as the reason why I think keeping a turban will be hard .. but..  #speaker_self
I also think it's more than that, if I'm being honest with myself.  #speaker_self
Sometimes I look in the mirror and I think.. #speaker_self
Must I always look like this? #speaker_self
Sticking out wherever I go #speaker_self
Having to tolerate dumb jokes about the colour of my turban #speaker_self
Having my bags searched twice whenever I'm overseas in the airport #speaker_self
Feeling like people see me as a Sikh before they see me as a person #speaker_self
Then I ask myself. Is it my choice to keep my turban? Or just my responsibility? #speaker_self
But jaan… #speaker_1
It can be BOTH #speaker_1
That is what FAITH is about #speaker_1
And pride in our way of life. #speaker_1
I am so sorry you have been going through this. I didn’t know you were keeping all of this bottled up inside #speaker_1
But you can do the right thing here, jaan #speaker_1
... #speaker_1
... hello? #speaker_1
09.15 #timestamp
Hi babe. I’m so sorry about last night. I was thinking about what you said and I just passed out on my bed. #speaker_self
It’s okay. #speaker_1
I’m sorry if I came down too hard on you. #speaker_1
I know this is your decision in the end. #speaker_1
I mean, I know what I wish you would choose. #speaker_1
But I will love you, no matter what. #speaker_1
Awww... 😍 #speaker_self
You’re the best.  #speaker_self
So - did you decide...?  #speaker_1
// I wasn’t sure up till this very moment, but I’ve decided now.  #speaker_self
+ [I thought about it.] 
    I really thought hard about this Sel.  #speaker_self
    Part of me feels like this is something I want to do, and expresses who I am.  #speaker_self
    But I know that this will not be received well by many in the community.  #speaker_self
    So I will be keeping my turban.
     -> aman_1_9_narration  
    // -> aman_1_5_narration 
+ [I'll keep my hair.] 
    You're right dear, I will keep my hair.  #speaker_self
    But what you said last night really made sense. I am Sikh, and I should do what is right, even if it is hard.  #speaker_self
    -> aman_1_9_narration  

=== aman_1_4_narration ===
#knot:aman_1_4_narration
#ui:narrator
#background:bg_aman_barbershopoutside.jpg
The next morning, I went to the barber while my family was asleep.

-> aman_1_4


=== aman_1_4 ===
#knot:aman_1_4
#ui:scene
#background:bg_aman_barbershopinside.jpg
#speaker_right_image:cha_aman_barber.png
#speaker_right_name:Barber
Yes, boy?  #speaker_right
Not crowded. Thank goodness. #inner_monologue
I want to cut my hair. #speaker_self
Cut beard or cut hair?   #speaker_right
#background:bg_aman_barbermirror.jpg
Don’t think. Just say it. Just say it.  #inner_monologue
Cut everything.  #speaker_self
#background:bg_aman_barbershopinside.jpg
Ok. Sit. #speaker_right
You sure ah, boy. #speaker_right
+ [No] I uh ... ummm   #speaker_self
    Well?  #speaker_right
    This is just wrong. I can't go through with this. #inner_monologue
    Sorry, can refund?	  #speaker_self	
    Refund what? Haven't pay yet boy.   #speaker_right
	Sorry. Sorry, I’ve changed my mind. Bye! #speaker_self	
    -> aman_1_9
+ Yes[]. I'm sure. #speaker_self
    What style you want? Medium, or fade, or --   #speaker_right
    I’m going NS tomorrow, so just cut very short.   #speaker_self	
    Here goes. Take a deeeeeep breath. #inner_monologue
    #background:bg_aman_barbershophairfloor1.jpg
    Oh my god, are passers-by glancing in and gawking at me? And is that boy taking a video of my haircut!? #inner_monologue
    Ok.  #speaker_right
    #background:bg_aman_barbershophairfloor2.jpg
    You want to keep? #speaker_right
    Huh? #speaker_self	
    #background:bg_aman_barbershophairfloor3.jpg
    Some Singh customer ask to keep their hair. I can put in plastic bag for you.  #speaker_right
    #speaker_right_image:pixel.png
    Er… no, it’s okay. Thank you.  #speaker_self	

    -> aman_1_5_narration

=== aman_1_5_narration ===
#knot:aman_1_5_narration
#ui:narrator
#background:bg_aman_barbershopoutside.jpg
I went to the barber the next morning, when my family were all asleep.
It was all a blur. 
I was emotional, even though I thought it wouldn't affect me.
Suddenly, I was standing outside, and it was done. 
#background:bg_aman_haircutselfiephoto.jpg
This is the new me. 
This is the start of a new chapter in my life.
This is what I wanted... right?

-> aman_1_5 


=== aman_1_5 ===
#knot:aman_1_5
#ui:whatsapp
#background:whatsapp.png
#chat_group_title:Family
#chat_group_image:ico_aman_family.png
#speaker_1_name:Papa
#speaker_2_name:Ma
#speaker_3_name:Jothi
09.45 #timestamp
Eh ma can we order something different for dinner tonight? #speaker_3 
Why? What's wrong with my cooking? #speaker_2 
It's Aman's last meal as a free man! We should get something nice tonight! #speaker_3
He is going to NS, not to the moon. And anyway he likes my cooking. #speaker_2
Speaking of whom, where is he? Went out for breakfast and hasn't come back yet! #speaker_3
Aman - please tell ma you want to order something for dinner! Side with me! #speaker_3
Let the boy make up his own mind Jothi! He's going to be a real man soon! #speaker_1
Aman? #speaker_1
+ [Send them a selfie of your haircut]
    This is what I look like after my haircut #speaker_self
    bg_aman_haircutselfiephoto.jpg #speaker_self #image
+ [Tell your family that you cut your hair]
- I cut my hair to prepare NS today. It's very short now.    #speaker_self 

#ui:scene
#background:bg_aman_haircutselfie.jpg
Why isn’t anyone saying anything? #inner_monologue
They've all seen the message. Why don't they reply? #inner_monologue
I don’t care what they think. Do I care what they think? #inner_monologue

#ui:whatsapp
#background:whatsapp.png
#chat_group_title:Family
#chat_group_image:ico_aman_family.png
#speaker_1_name:Papa
#speaker_2_name:Ma
#speaker_3_name:Jothi
09.50 #timestamp
You will regret it, son. #speaker_1

#ui:scene
#background:bg_aman_barbershopoutside.jpg
Damnit. Aaaaargh.  #inner_monologue

#ui:whatsapp
#background:whatsapp.png
#chat_group_title:Family
#chat_group_image:ico_aman_family.png
#speaker_1_name:Papa
#speaker_2_name:Ma
#speaker_3_name:Jothi
I... #speaker_self
+ [I'm going to NS so I had to cut it.] Papa you don't understand what Army BMT is like! #speaker_self
   ~aman_mood -= 1
    Nobody else in our family had to do Army BMT, and they all went to policy or SCDF so they didn't have to deal with this. #speaker_self
   I had to cut it otherwise NS will be miserable for me - even more miserable than for the chinese boys. #speaker_self
    If I didn't cut it, there's no time to wash my hair or turban in BMT! Even though SAF would let me keep my hair, it would be exhausting to manage papa. #speaker_self
    Papa?  #speaker_self
    These are ridiculous excuses! You think you are the first Sikh in the military? #speaker_1
    Sikhs have always done our part and more. We are respected in uniform. We are a brave and valiant people. Our forefathers fought to preserve our faith, even at the expense of their lives! How can you use NS of all things as an excuse? #speaker_1
    And now you go and do this. What message will it send? How will people see us? #speaker_1
+ I knew you wouldn't understand![] 
    ~aman_mood -= 2
    This wasn't easy for me either but none of you even bothered to ask me about how I was preparing for Army BMT. #speaker_self
    All the chinese boys already complain about how hard it is and how little sleep they have. #speaker_self
    And they don't even have to wash their hair or turban every night. Even though SAF would let me keep my hair, it would be exhausting to manage papa.  #speaker_self
    All the cousins went to police or SCDF so they have no idea how hard it is outfield. #speaker_self
    And you didn't care to ask me. #speaker_self
    I had to do this for myself, I knew you wouldn't understand. #speaker_self
    Papa? #speaker_self
    These are ridiculous excuses! You think you are the first Sikh in the military? #speaker_1
     Sikhs have always done our part and more. We are respected in uniform for being a brave and valiant people. How can you use NS of all things as an excuse? #speaker_1
    Our forefathers have fought for the right to practise our faith, keep our turbans, even at the expense of their LIVES! #speaker_1
    You did this for yourself - it is disrespectful! What message will this send? How will people see us? #speaker_1
+ I really struggled with this Papa[]
    I wanted to talk to you or Jothi about this but I knew you would judge me. #speaker_self
    Papa Army BMT is not like police or SCDF, so your experience and the cousins don't have to deal with mud and helmets. #speaker_self
    I didn't know what to do. I had nobody to talk to about this.  #speaker_self
    I heard all these horror stories about how little sleep they get, and if I had to wash my hair and turban it would be even worse.  Even though SAF would let me keep my hair, it would be exhausting to manage papa. #speaker_self
    Papa I'm sorry. I really had to do this. #speaker_self
    Papa? #speaker_self
    Mud? Helmets? These are ridiculous excuses! You think you are the first Sikh in the military? #speaker_1
    Sikhs have always done our part and more. We are respected in uniform. We are respected in uniform for being a brave and valiant people. How can you use NS of all things as an excuse? #speaker_1
    Our forefathers have fought for the right to practise our faith, keep our turbans, even at the expense of their LIVES!  #speaker_1
    And now you go and do this. What message will it send? How will people see us? #speaker_1
- Papa, I know how angry you are but let's talk about this at home. #speaker_3
What is there left to talk about. What's done is done. I have said my piece. It is in Waheguru's hands now. #speaker_1


-> aman_1_6_narration

=== aman_1_6_narration ===
#knot:aman_1_6_narration
#ui:narrator
#background:bg_aman_bmtparadesquare.jpg
Enlistment Day for NS. #title
Papa and I haven't had a proper talk since... well.
I don't want to think about that now.
-> aman_1_6 


=== aman_1_6 ===
#knot:aman_1_6
#ui:scene
#background:bg_aman_bmtparadesquare.jpg
#speaker_left_image:cha_aman_sergeant_normal.png
#speaker_left_name:Sergeant Wong
Recruit Singh? #speaker_left
Oh no.... #inner_monologue
Confirm you are Recruit Singh or not? Hello can answer? #speaker_left
Er, sorry sergeant. I cut my hair yesterday. So I need a helmet. #speaker_self
#speaker_left_image:cha_aman_sergeant_angry.png
Hah? Your 11B photo you wear turban. You register say got turban. CMPB tell me you got turban. #speaker_left
So I went to draw out turban for you. #speaker_left
Now you cut your hair? #speaker_left
Yes, sorry. #speaker_self
Wah lao eh! Now must procure helmet for you. Why you DAY ONE so troublesome? #speaker_left
Take this first and go sit down. Later I call you. #speaker_left
Arrrrrggggh Zhihao was right. First day after cutting my hair, I already kena tekan by my parents and by the sergeant. #inner_monologue
#speaker_left_image:cha_aman_lukman.png
#speaker_left_name:Lukman
Hey, I overheard! You cut your hair? #speaker_left
+ [Mind your own business] Why does everyone care so much about my hair?  #speaker_self
    ~aman_mood -= 1
    Whoa sorry. Didn't mean to kaypoh...  #speaker_left
    No, no. It's ok.. I guess I'm just on edge, man.  #speaker_self
+ [Yeah it's just easier]
    Yeah, I just cut yesterday. Thought it will be easier in army.  #speaker_self
    Sure or not? Turban better right? No need wear helmet.   #speaker_left
- Anyway - I’m Lukman.   #speaker_left
I’m Aman. Which section? #speaker_self
Section 2. You? #speaker_left
Eh. Same! #speaker_self
Cool! Hopefully can be buddies. #speaker_left

-> aman_1_7_narration


=== aman_1_7_narration ===
#knot:aman_1_7_narration
#ui:narrator
#background:bg_aman_bmtcookhouse.jpg
Two months later, in the Halal section of the cookhouse.

-> aman_1_7


=== aman_1_7 ===
#knot:aman_1_7
#ui:scene
#background:bg_aman_bmtcookhouse.jpg
#speaker_left_image:cha_aman_lukman.png
#speaker_left_name:Lukman

Can’t believe we’re passing out soon. Three months flew by, don’t you think? #speaker_left
Ya man, what an experience. We should be proud of ourselves.  #speaker_self
Where are you getting posted to? #speaker_left
Signals man, ok la. I think quite slack. You?  #speaker_self
#speaker_left_image:cha_aman_lukman_sad.png
Storeman. #speaker_left
So good! Every day can book out!  #speaker_self
... #speaker_left
Aren’t you happy?  #speaker_self
Not really. I wanted to join OCS to become an officer, or at least SISPEC la, become a sergeant. #speaker_left 
I thought I did really well in all my IPPT tests and training. But it’s still not enough, maybe. #speaker_left
Did you speak to your sergeant? Tell him how you feel? #speaker_self
Yes, I told him how badly I wanted to join and how others I think did less well than me got into OCS. #speaker_left
Then? #speaker_self
He said he knows I am a good soldier, but I lack certain qualities... sigh #speaker_left
+ [What does that mean?]
    Aiya forget it la. Maybe it's because I’m Malay. So I can only be a driver or a storeman. #speaker_left
    To become a leader as a minority cannot just be good, maybe must be exceptional?  #speaker_left
    Eh no la, that’s not true... #speaker_self
    It’s what everybody says bro. #speaker_left
+ [Oh. Well that's life.]
 - You know, it’s funny that some of us want to blend in with the others. And some of us want to stand out. #speaker_self
I’m not afraid of standing out.  #speaker_left
You know what the stereotypes are. I want to break them.  #speaker_left
I’m not lazy, I’m not laidback! I’ve been the most garang in the platoon.  #speaker_left
And I will continue to be that. #speaker_left
100 percent, bro. And I will always have your back.  #speaker_self
Thanks buddy. #speaker_left

-> aman_1_8_narration


=== aman_1_8_narration ===
#knot:aman_1_8_narration
#ui:narrator
#background:bg_aman_bmtparadesquare.jpg
BMT Passing Out Parade. #title
It's been quite tough between my papa and me. 
I think what I did really hurt him, and I could see the pain in both my parents' eyes.
Things are slowly improving between us, and I think he even teared up at the parade. 
He even hugged me, which I didn't expect. It meant so much to me.
Ma was just happy I survived, I think.
#background:bg_aman_ordberet.jpg
We took so many photos that my phone battery died.
Jothi made some snarky comments about my biceps being bigger than my brain now, but she seemed genuinely proud too. 
Sel came too. My parents finally met her. And liked her.
Lukman saw her and gave me a big wink, then he brought his mum over to say hi.
My family went out for dinner that night.

-> aman_1_8


=== aman_1_8 ===
#knot:aman_1_8
#ui:scene
#background:bg_aman_indianrestaurant.jpg
#speaker_left_image:cha_aman_papa.png
#speaker_left_name:Papa
#speaker_right_image:cha_aman_mama.png
#speaker_right_name:Mama
Our Aman looked so handsome at his passing out parade! #speaker_right
You did it, son. #speaker_left
Aman, you will always be my son and my hero. #speaker_right
Aman beta (dear), now that this part is over, you should start thinking about what you will do after NS.  #speaker_right
+ [I was thinking of trying my hand at theatre and short films, Ma.]
    #speaker_right_image:cha_aman_jothi2_hairflip.png
    #speaker_right_name:Jothi    
    A few biceps and suddenly you think you can be an action hero eh? #speaker_right
    Haha, I think it's cool! Our next Diljit Dosanjh in the making! #speaker_right
    That’s nice beta, now is the time to explore your interests and see what you like before school starts again.  #speaker_left
    But don’t forget to spend time with Selinder! She's quite a lovely girl.  #speaker_left

+ [Oh er, this and that!]
    #speaker_right_image:cha_aman_jothi2_normal.png
    #speaker_right_name:Jothi    
    You mean, “spend lots of time with Selinder”, right? #speaker_right
- I'm pretty sure that's what Aman is planning to do!. #speaker_right
If only I could freeze time here. #inner_monologue
With everything so simple, and pure... #inner_monologue

-> chapter_1_ending_1

=== chapter_1_ending_1 ===
#knot:chapter_1_ending_1
#ending:chapter_1_ending_1
// multiple ways to record the ending so that we can check in ink later if the player chose this ending or the other one. this knot is not presented to the user in the game.
VAR chapter_1_ending = 1

-> aman_1_reflection
 

=== aman_1_9_narration ===
#knot:aman_1_9_narration
#ui:narrator
#background:bg_aman_bmtparadesquare.jpg
BMT Enlistment Day. #title

-> aman_1_9


=== aman_1_9 ===
#knot:aman_1_9
#ui:scene
#background:bg_aman_bmtparadesquare.jpg
#speaker_left_image:cha_aman_sergeant_normal.png
#speaker_left_name:Sergeant Wong
RECRUIT SINGH! Ok, take this. Sit there with the rest. #speaker_left
Thank you, sergeant. #speaker_self
Ok, first interaction wasn't so bad #inner_monologue
#speaker_left_image:cha_aman_lukman.png
#speaker_left_name:Lukman
Hello! I’m Lukman. #speaker_left
Hey, I’m Aman. Which section are you in? #speaker_self
Section 2. You? #speaker_left
Eh - same! #speaker_self
Cool! Hopefully we can be buddies. #speaker_left
Nice! You can help me tie my turban. #speaker_self
Wait whut -- #speaker_left
Haha just joking man. Anyway, I show you later! #speaker_self

-> aman_1_10_narration


=== aman_1_10_narration ===
#knot:aman_1_10_narration
#ui:narrator
#background:bg_aman_bmtbunk.jpg
After a hard day's training...

-> aman_1_10


=== aman_1_10 ===
#knot:aman_1_10
#ui:scene
#background:bg_aman_bmtbunk.jpg
#speaker_left_image:cha_aman_lukman.png
#speaker_left_name:Lukman
Luk, you free ah? #speaker_self
What’s up?  #speaker_left
Help me can? I need to fold this turban to wear tomorrow. #speaker_self
Cannn. Uh, how ah? Just fold it round and round? #speaker_left
Ha, yes. Something like that. I have a neighbour who says it’s long enough to reach JB. #speaker_self
And you’re uh... okay with him saying that? #speaker_left
+ [Not really]
    Honestly? It doesn’t feel great. #speaker_self
    Then why do you put up with it?  #speaker_left
    I guess it’s just easier than making it a whole -- thing.  #speaker_self
    He doesn’t mean any harm la, and he’s one of my oldest friends.  #speaker_self
    He’s just always said crap like that because I guess I never told him I don't like it, and it would be kind of awkward to get mad about it now. #speaker_self
    Sounds like you’re making excuses for him, bro...  #speaker_left
+ [Sure]
    Yeah, I guess. I mean he says a lot of insensitive crap, but I’m just used to it by now. #speaker_self
    Anyway he's an old friend. He doesn't mean any harm, and he's a good guy deep down.  #speaker_self
    You shouldn’t have to get used to it. You should tell him it’s insensitive.  #speaker_left
    I think I have la. It’s in one ear and out the other.  #speaker_self
    Sounds like you should shout louder, eh? #speaker_left
- Anyway. This one how?  #speaker_left
Just follow me. You fold into half first... yes, correct.   #speaker_self
Then another half... yes, like that.   #speaker_self
Then one third.   #speaker_self
Now, hold tightly and I will fold towards you… Ok, done!  #speaker_self
Wah steady. I fold my first turban. Ok! Now what bro? #speaker_left
All good. I will tie by myself now. #speaker_self
Sure ah? Ok, I’m going to say prayers - maghrib now. See you at dinner.  #speaker_left

-> aman_1_11_narration


=== aman_1_11_narration ===
#knot:aman_1_11_narration
#ui:narrator
#background:bg_aman_bmtmirrorsad.jpg
Later that night, right after I wash my hair.

-> aman_1_11


=== aman_1_11 ===
#knot:aman_1_11
#ui:scene
#background:bg_aman_bmttoilet.jpg
#speaker_left_image:cha_aman_bunkmate1_mocking.png
#speaker_left_name:NSF Arun
#speaker_right_image:cha_aman_bunkmate2_mocking.png
#speaker_right_name:NSF Soh
Ah Man, don’t wash your hair at night leh. We all cannot sleep seeing your long hair in the dark. So scary! #speaker_left
Like hantu sia. #speaker_right
+ [Ignore]
    ~aman_mood -= 1
    Pontianak! #speaker_right
    Woooooooooo! #speaker_left
    It’s all good, it’s all good... #inner_monologue
    Don’t make a scene. #inner_monologue
+ [Joke back]
    Pontia-- #speaker_right
    #speaker_left_image:pixel.png
    #background:bg_aman_bmtpotianak.jpg
    They want scary? I'll give them scary. #inner_monologue
    #speaker_right_image:cha_aman_bunkmate2_afraid.png
    AaaaaahahahahAHAHAHAHA! Aahaha! WooooooahahahHAHAHAH! #speaker_self
    OuuuuuuuaahahahhAHHHAHA! WAHkakaKAKKAKA! #speaker_self
    @$*@$! -- What the -- #speaker_right
    #background:bg_aman_bmtmirrorgrin.jpg
    #speaker_left_image:cha_aman_bunkmate1_mocking.png
    HAHAHAHA Dei! That was brilliant la. #speaker_left
    #speaker_right_image:pixel.png
#background:bg_aman_bmtmirrorgrin.jpg
- Good night everybody.  #speaker_self


-> aman_1_12_narration


=== aman_1_12_narration ===
#knot:aman_1_12_narration
#ui:narrator
#background:bg_aman_bmtcamp.jpg
Tekong Field Camp, day 5.

-> aman_1_12


=== aman_1_12 ===
#knot:aman_1_12
#ui:scene
#background:bg_aman_bmtcamp.jpg
#speaker_left_image:cha_aman_lukman.png
#speaker_left_name:Lukman
You’ve been scratching your head all day. Must be very hot inside ah? #speaker_left
Very, bro. Super itchy and uncomfortable. All the heat and sweat trapped inside. I feel like my head is a furnace. #speaker_self
The powder baths don’t help? #speaker_left
No, just sticks to the scalp and becomes more grimy. Gross! #speaker_self
Just two more days. Endure. Then you can wash all you want.  #speaker_left
Can use my herbal essence shampoo and be like shampoo ad. Hair can fling back and forth. #speaker_left
Ha! Oh my god. Can’t wait. The others are gonna be like eeyer so dirty! #speaker_self
Screw them. Let them say what they want. They don’t matter. #speaker_left
You really are my buddy. I am so lucky to have you. #inner_monologue
Anyway, I can’t believe we’re passing out soon. Three months just flew by. #speaker_left
Ya man, what an experience. We should be proud of ourselves.  #speaker_self
Where are you getting posted to? #speaker_left
Signals man, ok la. I think quite slack. You?  #speaker_self
#speaker_left_image:cha_aman_lukman_sad.png
Storeman. #speaker_left
So good! Every day can book out!  #speaker_self
... #speaker_left
Aren’t you happy?  #speaker_self
Not really. I wanted to join OCS to become an officer, or at least SISPEC la, become a sergeant. #speaker_left 
I thought I did really well in all my IPPT tests and training. But it’s still not enough, maybe. #speaker_left
Did you speak to your sergeant? Tell him how you feel? #speaker_self
Yes, I told him how badly I wanted to join and how others I think did less well than me got into OCS. #speaker_left
Then? #speaker_self
He said he knows I am a good soldier, but I lack certain qualities... sigh #speaker_left
+ [What does that mean?]
    Aiya forget it la. Maybe it's because I’m Malay. So I can only be a driver or a storeman. #speaker_left
    To become a leader as a minority cannot just be good, maybe must be exceptional?  #speaker_left
    Eh no la, that’s not true... #speaker_self
    It’s what everybody says bro. #speaker_left
+ [Oh. Well that's life.]
 - You know, I actually wish I didn't stand out as the only guy with a turban.  #speaker_self
 It’s funny that some of us want to blend in with the others. And some of us want to stand out. #speaker_self
I’m not afraid of standing out.  #speaker_left
You know what the stereotypes are. I want to break them.  #speaker_left
I’m not lazy, I’m not laidback! I’ve been the most garang in the platoon.  #speaker_left
And I will continue to be that. #speaker_left
100 percent, bro. And I will always have your back.  #speaker_self
Thanks buddy. #speaker_left

 
-> aman_1_13_narration


=== aman_1_13_narration ===
#knot:aman_1_13_narration
#ui:narrator
#background:bg_aman_bmtcampoutside.jpg
BMT Passing Out Parade. #title
My dad cried at the parade. He claims he didn't but I could see his eyes were wet when we hugged.
Ma was just happy I survived, I think.
Jothi made some snarky comments about by biceps being bigger than my brain now, but she seemed genuinely proud too. 
#background:bg_aman_ordturban.jpg
We took so many photos that my phone battery died.
Sel came too. My parents finally met her. And liked her.
Lukman saw her and gave me a big wink, then he brought his mum over to say hi.
My family went out for dinner that night.

-> aman_1_13


=== aman_1_13 ===
#knot:aman_1_13
#ui:scene
#background:bg_aman_indianrestaurant.jpg
#speaker_left_image:cha_aman_papa.png
#speaker_left_name:Papa
#speaker_right_image:cha_aman_mama.png
#speaker_right_name:Mama
Our Aman looked so handsome at his passing out parade! #speaker_right
You did it, son. I am proud of you.  #speaker_left
Aman, you will always be my hero. #speaker_right
Aman beta, now that the hardest part is over, you should start thinking about what you will do after NS.  #speaker_right
+ [I was thinking of trying my hand at theatre and short films, Ma.]
#speaker_right_image:cha_aman_jothi2_normal.png
#speaker_right_name:Jothi    
    A few biceps and suddenly you think you can be an action hero eh? #speaker_right
    Haha, I think it's cool! Our next Diljit Dosanjh in the making! #speaker_right
    That’s nice beta, now is the time to explore your interests and see what you like before school starts again.  #speaker_left
    But don’t forget to spend time with Selinder! She's quite a lovely girl.  #speaker_left

+ [Oh er, this and that!]
#speaker_right_image:cha_aman_jothi2_hairflip.png
#speaker_right_name:Jothi    
    You mean, “spend lots of time with Selinder”, right? #speaker_right
- If only I could freeze time here. #inner_monologue
With everything so simple, and pure... #inner_monologue

-> chapter_1_ending_2

=== chapter_1_ending_2 ===
#knot:chapter_1_ending_2
#ending:chapter_1_ending_2
~ chapter_1_ending = 2
// mulitple ways to record the ending so that we can check in ink later if the player chose this ending or the other one. this knot is not presented to the user in the game.


-> aman_1_reflection


=== aman_1_reflection ===
#knot:aman_1_reflection
#ui:chapter_reflection
#reflection_id:1 
Reflection 1




-> aman_2_intro







// CHAPTER 2 INTRODUCTION










=== aman_2_intro ===
#knot:aman_2_intro
#ui:narrator
#background:bg_aman_2_intro.jpg
~ chapter_id = 2
// need to reset the globalvar for chapters 3-5
Chapter 2 #title
To Be or Not To Be #title
I am finally done with NS, what an adventure! 
{chapter_1_ending == 1 : Cutting my hair was a really difficult decision, and my father was furious with me... but I'm growing it back out now.}
{chapter_1_ending == 2: Keeping my hair made NS even harder, but I'm glad I went through it.}
So many varied experiences, and I have made some good friends too, like Lukman.
I got accepted into my first choice uni in Melbourne! 
I’ve got a couple of months off before I fly off. 
In the meantime, can't wait to binge on Netflix, spend quality time with Sel and start exploring some acting and modelling gigs. 
Maybe I’ll be famous by the time I leave for Oz...

-> aman_2_1_narration 



=== aman_2_1_narration ===
#knot:aman_2_1_narration
#ui:narrator
#background:bg_aman_bedroom.jpg
Two months after finishing NS.
-> aman_2_1

=== aman_2_1 ===
#knot:aman_2_1
#ui:scene
#background:bg_aman_bedroom.jpg
{chapter_1_ending == 1: -> aman_2_1_ending1 }
{chapter_1_ending == 2: -> aman_2_1_ending2 }


= aman_2_1_ending1 
#ui:scene
#background:bg_aman_bedroom.jpg
Hey, that picture of Selinder and me actually looks pretty good on the wall. #inner_monologue
Maybe Papa wasn’t entirely wrong about growing out my hair again.  #inner_monologue
I only did it to keep the peace, but it’s not a bad look. #inner_monologue
Being able to spend time with Sel has been great… but I wonder what will happen when I go to Australia? #inner_monologue
-> aman_2_1_choice

= aman_2_1_ending2
#ui:scene
#background:bg_aman_bedroom.jpg
I wonder if Selinder has left her house yet, for our date tonight.  #inner_monologue
I'm glad I didn't cut my hair - the turban looks pretty good and she likes the look!  #inner_monologue
I’ve been loving our time together since I got out of NS, but I wonder...  #inner_monologue
Will we last when I move to Australia?  #inner_monologue
-> aman_2_1_choice

= aman_2_1_choice
+ [Chat with Selinder about the future] -> aman_2_1a
+ [Check casting calls] -> aman_2_1b 

=== aman_2_1a ===
#knot:aman_2_1a
#ui:whatsapp
#background:whatsapp.png
#chat_group_title:Selinder
#chat_group_image:ico_aman_selinder.png
#speaker_1_name:Selinder
17.35 #timestamp
Heyyyy babe. #speaker_self
Hey yourself! What are you up to? #speaker_1
Hm same old. Surfing socials for casting calls.  #speaker_self
And thinking about you?  #speaker_self
Ha, that’s what I like to hear.  #speaker_1
Will you be thinking of me as much when you’re in Australia? #speaker_1
+ [Even more!]
    Absence makes the heart grow fonder, you know that right? #speaker_self
    I am so happy to hear you say that.  #speaker_1
    😘 😘 😘 #speaker_1 
    I know long distance is tough, but I’m committed to you babe. #speaker_self
    Same, jaan (dear).  #speaker_1

+ [Honestly, I don't know]
    I’ll definitely think of you. #speaker_self
    But, as much?? #speaker_1
    I want to give you the perfect answer, but the truth is that there are so many unknowns.  #speaker_self
    I’ve never been in a long distance relationship before. :( #speaker_self
    But I really care about you, and I feel like we are closer every day. #speaker_self
    ... #speaker_1
    Babe? #speaker_self
    It’s okay.  #speaker_1
    That is not what I would have liked to hear, but I appreciate that you are always honest with me. #speaker_1
    To be honest, I have been thinking and worrying along the same lines too.  #speaker_1
    But we can deal with things one step at a time. Right? #speaker_1
    Yes! ❤️  #speaker_1 

- Okay I’m leaving my place now, see you soon <3 #speaker_1

-> aman_2_1b

=== aman_2_1b ===
#knot:aman_2_1b
#ui:scene
#background:bg_aman_castingcalls1.jpg
Singapore Casting Calls Group eh? Let's see if there's any roles for me. #inner_monologue
Hey, I could do this one! #inner_monologue
#background:bg_aman_castingcalls2.jpg
It must be so cool to do this full time.  #inner_monologue
Maybe I’ll get discovered. Get rich. Be famous.  #inner_monologue
Riding along, with hot girls, in my red convertible along Palm Springs California, the wind in our hair... #inner_monologue
Oh, who am I kidding!  #inner_monologue
I’ve applied to dozens of casting calls in the past month, but nobody replies.  #inner_monologue

#ui:notification
#background:ui_aman_message.jpg
UNKNOWN NUMBER: Hi, this is Elsa # message

-> aman_2_1c


=== aman_2_1c ===
#knot:aman_2_1c
#ui:whatsapp
#background:whatsapp.png
#chat_group_title:Unknown Number
#chat_group_image:ico_unknown_profile.png
#speaker_1_name:Elsa
17.47 #timestamp
Hi, this is Elsa from Everyday Productions! We got your email. #speaker_1
Can you send me your unedited full body pic, close up shot and side shots pls. And also your per day rate. #speaker_1
Hi Elsa, thanks for getting back to me! Please see my photos attached.  #speaker_self  
📎 photo1.jpg 📎 photo2.jpg  #speaker_self  

#ui:scene
#background:bg_aman_bedroom.jpg
Yaaas! FINALLY. #inner_monologue
Wait, she asked for my rates. What are my rates? Oh good grief. Uh... #inner_monologue
+ [$500!] 
    #ui:whatsapp
    #background:whatsapp.png
    #chat_group_title:Unknown Number
    #chat_group_image:ico_unknown_profile.png
    #speaker_1_name:Unknown Number
    VAR aman_2_1c_overcharge = true
    For my daily rate, it’s $500. #speaker_self
    oic. #speaker_1
    
    #ui:scene
    #background:aman_1_intro.jpg
    oic? oic what? ah, crap. #inner_monologue

+ [$100?] 
    #ui:whatsapp
    #background:whatsapp.png
    #chat_group_title:Unknown Number
    #chat_group_image:ico_unknown_profile.png
    #speaker_1_name:Unknown Number
    ~ aman_2_1c_overcharge = false
    My daily rate is... $100? #speaker_self
    Thanks Aman. Will get back to you. #speaker_1
    Sure, thank you! #speaker_self

#ui:scene
#background:bg_aman_bedroom.jpg
- Waheguru, Waheguru, Waheguru, please help me get the part! #inner_monologue
ok, better get ready for date night! #inner_monologue
-> aman_2_2
 


=== aman_2_2 ===
#knot:aman_2_2
#ui:scene
#background:bg_aman_beachdate.jpg
#speaker_right_image:cha_aman_selinder.png
#speaker_right_name:Selinder
She’s beautiful... #inner_monologue
How is your acting coming along? #speaker_right
+ [Not much luck.] 
    VAR aman_2_2_confide = true
    Not much luck yet. I’ve been applying, but nobody responds.  #speaker_self
    Sometimes I check the email addresses again and again to make sure I didn’t make a mistake, and the email went through. #speaker_self
    Oh - I got an agent query today though! #speaker_self
    That’s great! What’s the part? #speaker_right
    It’s for this corporate video.  #speaker_self
    She asked for my pics and rates. Look, these are the pics I sent her. #speaker_self
    You used the ones I took of you at Chloe's party!  #speaker_right
    You look very handsome in them. Let me know when she responds, okay?  #speaker_right
    Of course! Maybe if I get a foothold in entertainment now, I can continue when I move to Australia. #speaker_self

+ [Oh, it's all good.] 
    ~ aman_2_2_confide = false
    Oh, it’s all good. I’m taking it easy, just trying my luck.  #speaker_self
    I’m not taking this seriously or anything. #speaker_self
    I can’t look like an idiot in front of her... #inner_monologue
    You’re not? I thought you’ve always been into acting, and the arts. #speaker_right
    Oh sure, but it’s just a hobby, you know.  #speaker_self
    Just killing time until I move to Australia. #speaker_self

- Move? Or just study? #speaker_right
Oh, you know what I mean. #speaker_self
You’ll come back, right?  #speaker_right
Of course, jaan (dear). Why wouldn’t I?  #speaker_self
If not, I’d take you with me! #speaker_self
You’d better! If not, I’ll cut you up into tiny pieces and make mutton keema (mince) out of you. #speaker_right
Cannot. You’re vegetarian. 😂  #speaker_self
Vegetarian mutton keema.  #speaker_right

-> aman_2_3_narration


=== aman_2_3_narration ===
#knot:aman_2_3_narration
#ui:narrator
#background:bg_aman_hometv.jpg
One week later, at home. #title

-> aman_2_3 

=== aman_2_3 ===
#knot:aman_2_3
#ui:scene
#background:bg_aman_hometv.jpg
#speaker_left_image:cha_aman_mother.png
#speaker_left_name:Ma
Ah, Ma’s favourite tv series. So dramatic. #inner_monologue
Speaking of dramatic... I haven’t heard from Elsa.  #inner_monologue
Or anyone else. Maybe I should text her? Where did I put my phone... #inner_monologue
Where are you going! You’re missing the best part! #speaker_left
Mukesh is going to confront Tina’s father! #speaker_left
Just going to grab my phone, ma. #speaker_self
Whole day tik tik tik on the phone. Don’t know what side business you have going on. #speaker_left
Sigh, still no reply from that casting agent Elsa. #inner_monologue
Do I sound desperate? Maybe I'll try a different tactic... #inner_monologue
-> aman_2_3_whatsapp1

=== aman_2_3_whatsapp1 ====
#knot:aman_2_3_a
#ui:whatsapp
#background:whatsapp.png
#chat_group_title:Elsa, Casting Agent
#chat_group_image:ico_aman_elsa.jpg
#speaker_1_name:Elsa
Hi Elsa, this is Aman! Just checking to see if you have any update on the role? #speaker_self
+ I’m nearly fully booked, you see.[] #speaker_self
    I’m planning my schedule for the next few weeks, and it’s looking packed! #speaker_self
+ I really want this part...[] #speaker_self
    I loved the creative brief you posted, so I’m really hoping I’m a fit for the role. #speaker_self
- Thanks again for reaching out to me! #speaker_self

#ui:scene
#background:bg_aman_hometv.jpg
#speaker_left_image:cha_aman_mama.png
#speaker_left_name:Ma
Nothing to do now but wait, I guess… #inner_monologue
What a good for nothing! #speaker_left
Wow, Ma, you too? #speaker_self
Not you! Mukesh! #speaker_left
#background:ui_aman_message.jpg
A new message! Maybe it's Elsa! Please let it be good news! #inner_monologue
-> aman_2_3_whatsapp2

=== aman_2_3_whatsapp2 ====
#knot:aman_2_3_whatsapp2
#ui:whatsapp
#background:whatsapp.png
#chat_group_title:Zhihao
#chat_group_image:ico_aman_zhihao.jpg
#speaker_1_name:Zhihao
Bro up for drinks next weekend? I’ll make the booking. #speaker_1
#ui:scene
#background:bg_aman_hometv.jpg
Drinks? He knows I’m not supposed to drink, right? #inner_monologue
Well, I can always order something non-alcoholic.  #inner_monologue
#ui:whatsapp
#background:whatsapp.png
#chat_group_title:Zhihao
#chat_group_image:ico_aman_zhihao.jpg
#speaker_1_name:Zhihao
Yes onz. See you. #speaker_self
What you doing anyway? #speaker_1
Thinking of you. 😍  #speaker_self
🤢 🤮 #speaker_1
#ui:scene
#background:bg_aman_hometv.jpg
#speaker_left_image:cha_aman_mama_worried.png
#speaker_left_name:Ma
Aman, hurry! Tina is threatening to throw away the wedding ring! #speaker_self
#background:ui_aman_message.jpg
Another message. Uh what does Zhihao want now? #inner_monologue
-> aman_2_3_whatsapp3

=== aman_2_3_whatsapp3 ===
#knot:aman_2_3_whatsapp3
#ui:whatsapp
#background:whatsapp.png
#chat_group_title:Elsa, Casting Agent
#chat_group_image:ico_aman_elsa.png
#speaker_1_name:Elsa
Hi Aman. Client decided to go with another talent. Thanks. #speaker_1
#ui:scene
#background:bg_aman_hometv.jpg
...Oh. Sigh. #inner_monologue
#ui:whatsapp
#background:whatsapp.png
#chat_group_title:Elsa, Casting Agent
#chat_group_image:ico_aman_elsa.png
#speaker_1_name:Elsa
Thanks Elsa, no worries. Can I just check if client gave any reason for not proceeding? #speaker_self
{aman_2_1c_overcharge: Oh, hmm frankly the rate you quoted is quite high for someone with no experience... but...} #speaker_1
Let me be honest with you... #speaker_1
{not aman_2_1c_overcharge: Your rates were actually surprisingly low... but...} #speaker_1
Look-wise, they prefer someone with more clean look.  #speaker_1
No offence yup. Just that more relatable without turban and long beard.  #speaker_1
😁 All the best ya. #speaker_1
+ I see. Fine. Bye.[] #speaker_self
+ Ah ok thanks[!] Hope you’ll keep me in mind if other roles come up! #speaker_self
- Bye! #speaker_1
-> aman_2_3_home

=== aman_2_3_home ===
#knot:aman_2_3_home
#ui:scene
#background:bg_aman_hometv.jpg
#speaker_left_image:cha_aman_mama_worried.png
#speaker_left_name:Ma
They prefer someone with a more clean look. #inner_monologue
What does that even mean? #inner_monologue
So I am dirty looking? #inner_monologue
Why is everything in my life such a challenge? #inner_monologue
Everything in my life is so much harder with a turban. Why?? #inner_monologue
$(@+* this. #inner_monologue
Aman? #speaker_left
What! #speaker_self
I love you, beta (son). #speaker_left
I... love you too, Ma. #speaker_self
Sorry, I’m really tired. I’m going to bed. #speaker_self

-> aman_2_4_narration


=== aman_2_4_narration ===
#knot:aman_2_4_narration
#ui:narrator
#background:bg_aman_bedroom.jpg
On a sleepless night. 

#ui:notification
#background:ui_aman_call.jpg
Selinder #call
-> aman_2_4

=== aman_2_4 ===
#knot:aman_2_4
#ui:scene
#background:ui_aman_call.jpg
#speaker_left_image:cha_aman_selinder.png
#speaker_left_name:Selinder
Hi jaan (dear), how are you? What are you doing? #speaker_left
Just turning in for the night. How about you? #speaker_self
Thinking of you. ❤️  #speaker_left
Weird, I told Zhihao the same thing just now, but he didn’t seem touched. #speaker_self
Ha! You boys are a riot. #speaker_left
+ [I had a bad day] -> aman_2_4_bad_day
+ [I'm tired, goodnight] -> aman_2_4_sleep
= aman_2_4_bad_day
You know, I’m glad you called. It was a rotten day. Got rejected from a casting call. #speaker_self
Oh? #speaker_left
And the thing is, when I asked her why I didn’t get the part?  #speaker_self
She said it’s because they wanted someone with a ‘clean look’. No turban, no beard. #speaker_self
Well, that’s to be expected. #speaker_left
What do you mean it's to be expected? #speaker_self
Tsk. I mean, you know la. For us, it’s harder.  #speaker_left
Turban and all. Not that many roles. #speaker_left
Is that how you’ve felt all along? Like I’ve been on a wild goose chase? #speaker_self
No jaan (dear), that’s not what I meant.  #speaker_left
#speaker_left_image:cha_aman_selinder_concerned.png
Just... that you need to manage your expectations. You can’t be so idealistic. #speaker_left
So I should give up on my dreams, become a boring accountant, and live a boring average Joe life.   #speaker_self
Oh wait! I’m not even an average Joe. So below-average Joe life.   #speaker_self
jaan (dear), now you’re just being silly. #speaker_left
{aman_2_2_confide: -> aman_2_4_confide }
{not aman_2_2_confide: -> aman_2_4_not_confide }
= aman_2_4_confide 
When you told me you were waiting to hear back from an agent, this is the reply I expected you to get all along! #speaker_left
Aman? #speaker_left
-> aman_2_5_narration

= aman_2_4_not_confide 
You told me you were just killing time, and now you’re acting like this is the biggest deal! #speaker_left
Okay. Yup. I am silly. My dreams are silly. Everything I do is silly.  #speaker_self
Go and find someone who is not silly then. #speaker_self
Aman? #speaker_left
-> aman_2_5_narration

= aman_2_4_sleep
Babe, thanks for calling, but I think I’ll call it a night. #speaker_self
Oh. Hmm...  #speaker_left
#speaker_left_image:cha_aman_selinder_concerned.png
Aman, you’d tell me if anything was bothering you, right?  #speaker_left
Lately, you’ve felt a little distant. Ever since NS?   #speaker_left
But maybe I’m just being paranoid.  #speaker_left
Sure. Don’t worry, everything is fine. #speaker_self
...Okay, then... #speaker_left
Goodnight. #speaker_left

#ui:scene
#background:bg_aman_bedroom.jpg
Selinder is wonderful. #inner_monologue
I’m the problem.  #inner_monologue
Why do I want things I can’t have? #inner_monologue
Why do I want to be someone I’m not? #inner_monologue
Why can’t I be happy, being me? #inner_monologue
Then again... #inner_monologue
What’s so great about being me? #inner_monologue
Not relatable.  #inner_monologue
Not ‘clean’. #inner_monologue
I wish I could be like Selinder, at peace with herself.  #inner_monologue
Some kind of role model, for somebody. #inner_monologue
But I’m just...me. #inner_monologue

-> aman_2_5_narration


=== aman_2_5_narration ===
#knot:aman_2_5_narration
#ui:narrator
#background:bg_aman_bedroom.jpg
Taunting Dreams #title
The dreams kept repeating. Taunting me. Rejecting me. 
Every night, it was the same dream. I pick up my phone, and there's a message.

#ui:notification
#background:ui_aman_message.jpg
Sorry, you were not selected. # message
Client wants a more pan-Asian look. # message
Can you shave your beard? # message
Would you consider cutting your hair? # message
Sorry, looking for a corporate look. # message
Actually you have nice features, but can’t really see them. # message
Sorry.  # message
Sorry. you are not what anybody is looking for in a model. # message
Sorry, nobody wants to be you, Aman. # message
#ui:narrator
#background:bg_aman_bedroom.jpg
I wish the dreams would stop. Maybe I just need one gig.

-> aman_2_5

=== aman_2_5 ===
#knot:aman_2_5
#ui:scene
#background:bg_aman_bedroom.jpg
This sucks. Only three more months before I leave for Melbourne, and I haven’t scored a single gig. Not even as an extra! #inner_monologue
Maybe - maybe if I changed my look? Slick my hair back, and wear it in a ponytail instead... #inner_monologue
+ [Change my look] -> aman_2_6_narration
+ [Keep my look] 
    {chapter_1_ending == 1: I cut my hair for NS, and it didn't make life easier. I won't change my look again. } #inner_monologue
    {chapter_1_ending == 2: I didn't even cut my hair to make life easy for NS - I'm not going to change my look now. } #inner_monologue
    I remember what Ma used to say, when I got bullied in school. #inner_monologue
    Sikhs are courageous, and face their challenges head on. Never giving up. Always remaining in chardikala (optimism). #inner_monologue
    I won’t give up. I’ll keep trying, just as I am. #inner_monologue
    #knot:chapter_2_ending_2
    #ending:chapter_2_ending_2
    VAR chapter_2_ending = 2
    VAR aman_2_5_change_look = false
    
    -> aman_2_7_narration


 


=== aman_2_6_narration ===
#knot:aman_2_6_narration
#ui:narrator
#background:bg_aman_homeplaystation.jpg
Hanging out with Zhihao. #title
Playing Playstation with Zhihao is like meditation. Clears my mind.
Nothing can distu...

#ui:notification
#background:ui_aman_message.jpg
Claire: Hey Aman! Thanks for sending those photos! # message
~ aman_2_5_change_look = true
#knot:chapter_2_ending_1
#ending:chapter_2_ending_1
~ chapter_2_ending = 1
-> aman_2_6

=== aman_2_6 ===
#knot:aman_2_6
#ui:whatsapp
#background:whatsapp.png
#chat_group_title:Claire, Casting Agent
#chat_group_image:ico_aman_claire.png
#speaker_1_name:Claire
Hey Aman, thanks for sending over those photos! Can you come down for an audition tomorrow? #speaker_1
Yes! #speaker_self
#ui:scene
#background:bg_aman_homeplaystation.jpg
#speaker_left_image:cha_aman_zhihao.png
#speaker_left_name:Zhihao
Wow, this new look actually works. How should I style myself for this audition...? #inner_monologue
Bro - can I borrow your Adidas cap tomorrow? #speaker_self
Har? Why you need my cap? You already have your own in-built cap what. #speaker_left
Oi stop being such an asshole. Just borrow me can. I got audition tomorrow.  #speaker_self
Wearing a cap instead of a turban. #speaker_self
They ask you take out your turban? #speaker_left
Not they ask. But it’s hard to get roles with a turban.   #speaker_self
So I’ve been sending out my pics with my hair tied back.  #speaker_self
{chapter_1_ending == 1: -> aman_2_6_cut_hair}
{chapter_1_ending == 2: -> aman_2_6_keep_hair}

= aman_2_6_cut_hair
Wah lau eh. Funny la you. That time before NS, you cut your hair, then you decide to keep long again.  #speaker_left
#speaker_left_image:cha_aman_zhihao_joking.png
Now doing all this disguise to pretend like short again.  #speaker_left
You are so confu-singh. Geddit? Geddit? #speaker_left
->aman_2_6_cap

= aman_2_6_keep_hair
#speaker_left_image:cha_aman_zhihao_jokingmean.png
Fake la you. That time ask you cut once and for all don’t want to cut.  #speaker_left
Now doing all this hidden disguise pretend like short hair. Funny sia you.  #speaker_left
->aman_2_6_cap

= aman_2_6_cap
VAR aman_2_6_secret = false
Eh, you gonna borrow me your cap, or you gonna give me a lecture?  #speaker_self
#speaker_left_image:cha_aman_zhihao_eyebrowsraised.png
Aiya take la take la.  #speaker_left
+ [Thanks]
    Thanks, man.  #speaker_self
    Ya whatever. #speaker_left
+ [Oh, don't tell Selinder]
    ~ aman_2_6_secret = true
    One more thing. Don’t tell Selinder, okay? #speaker_self
    I tell Selinder for what? Your girlfriend not my girlfriend.  #speaker_left
    Just don’t make your girlfriend problem my problem. #speaker_left
    Okay just don’t say anything, then no problem.  #speaker_self
- Oi, can we finish the game or not. talk too much la you.  #speaker_left
This is a great opportunity, right? I should be excited. #inner_monologue
Why do I feel so uneasy? Like I’m a fraud? #inner_monologue
Am I so desperate to be on TV, I’ll do anything...? #inner_monologue

-> aman_2_7_narration


=== aman_2_7_narration ===
#knot:aman_2_7_narration
#ui:narrator
#background:bg_aman_supermarket.jpg
A few weeks later, in the supermarket with Ma. 
-> aman_2_7

=== aman_2_7 ===
#knot:aman_2_7
#ui:scene
#background:bg_aman_supermarket.jpg
#speaker_right_image:cha_aman_mama.png
#speaker_right_name:Ma
Ma, enough la. Who’s gonna carry so many plastic bags? #speaker_self
I didn’t send you to the jungle for two years so you could complain about carrying my plastic bags. #speaker_right
Oh look! Ripe mangoes on sale!  #speaker_right
-> aman_2_7_whatsapp1

=== aman_2_7_whatsapp1 ===
#ui:whatsapp
#background:whatsapp.png
#chat_group_title:Claire, Casting Agent
#chat_group_image:ico_aman_claire.png
#speaker_1_name:Claire
Hi Aman, thanks for coming by last week for the audition. #speaker_1
Discussed with the client, and he really likes your facial features.  #speaker_1
Would you be open to cutting your hair? We are looking for a more clean-cut look. And no facial hair. #speaker_1
The client is keen on your looks, aside from that.  #speaker_1
#ui:scene
#background:bg_aman_supermarket.jpg
Here we go again... sigh #inner_monologue
#ui:whatsapp
#background:whatsapp.png
#chat_group_title:Claire, Casting Agent
#chat_group_image:ico_aman_claire.png
#speaker_1_name:Claire
No, I can’t cut. It’s ok, thank you. #speaker_self
#ui:scene
#background:bg_aman_supermarket.jpg
#speaker_right_image:cha_aman_mama.png
#speaker_right_name:Ma
What are you looking so down in the dumps about, beta (son) ? #speaker_right
Nothing, ma. #speaker_self
Oh...another message... Probably another rejection from another casting agent. #inner_monologue
#ui:notification
#background:ui_aman_message.jpg
UNKNOWN NUMBER # message

-> aman_2_7_whatsapp2

=== aman_2_7_whatsapp2 ===
#knot:aman_2_7_whatsapp2
#ui:whatsapp
#background:whatsapp.png
#chat_group_title:Kristine, Casting Agent
#chat_group_image:ico_aman_kristine.png
#speaker_1_name:Kristine
Hey, Aman! Kristine from TOP. We got your email and pics. Thanks for your interest in "A Trip in Time". #speaker_1

#ui:scene
#background:bg_aman_supermarket.jpg
A TRIP IN TIME! #inner_monologue
That’s the World War II drama that needs British Indian soldiers! Will this be my lucky break? #inner_monologue

#ui:whatsapp
#background:whatsapp.png
#chat_group_title:Kristine, Casting Agent
#chat_group_image:ico_aman_kristine.png
#speaker_1_name:Kristine
Can you come down for an audition next Tuesday at 10am? #speaker_1
+ [Play it cool]
    Sure, sounds good. #speaker_self
    Great! And just to check, if the audition goes smoothly, what’s your schedule like for the next few months? #speaker_1
    The next three months are clear for me, until I start school.  #speaker_1

+ [OMG YES]
    OMG YES! #speaker_self
    I like your enthusiasm! Hahaha.  #speaker_1
    Checking in advance, if the audition goes smoothly, what’s your schedule like for the next few months? #speaker_1
    I’m all good for the next 3 months until I start school. If I’m selected I’ll definitely make this my number one priority 😃😃 #speaker_self  
- Great!  #speaker_1
Oh and one more thing, we need our character to have a turban and a full beard.  #speaker_1
You’re okay not to cut your hair or trim your beard for a while, right? #speaker_1

{chapter_1_ending == 1: -> aman_2_7_cut_hair}
{chapter_1_ending == 2: -> aman_2_7_keep_hair}    // this should actually be chapter_1_ending_2 but it breaks unless you play the entire game in one sitting. need to pull from savegame?

= aman_2_7_cut_hair
#ui:scene
#background:bg_aman_supermarket.jpg
Good lord. The irony... #inner_monologue
#ui:whatsapp
#background:whatsapp.png
#chat_group_title:Kristine, Casting Agent
#chat_group_image:ico_aman_kristine.png
#speaker_1_name:Kristine
Yes sure, not a problem :) #speaker_self
#ui:scene
#background:bg_aman_supermarket.jpg
#speaker_right_image:cha_aman_mama.png
#speaker_right_name:Ma
What happened? Smiling so much. Must be a message from Selinder? #speaker_right
Even better! I’ll tell you later, Ma. #speaker_self
-> aman_2_8_narration

= aman_2_7_keep_hair
#ui:scene
#background:bg_aman_supermarket.jpg
PERFECT! #inner_monologue
#ui:whatsapp
#background:whatsapp.png
#chat_group_title:Kristine, Casting Agent
#chat_group_image:ico_aman_kristine.png
#speaker_1_name:Kristine
Yes sure, not a problem :) #speaker_self
#ui:scene
#background:bg_aman_supermarket.jpg
#speaker_right_image:cha_aman_mama.png
#speaker_right_name:Ma
What happened? Smiling so much. Must be a message from Selinder? #speaker_right
Even better! I’ll tell you later, Ma. #speaker_self
-> aman_2_8_narration


=== aman_2_8_narration ===
#knot:aman_2_8_narration
#ui:narrator
#background:jothi_bedroom.jpg
Another of Jothi’s meltdowns...

-> aman_2_8


=== aman_2_8 ===
#knot:aman_2_8
#ui:scene
#background:bg_aman_jothibedroom.jpg
#speaker_right_image:cha_aman_jothi.png
#speaker_right_name:Jothi
Definitely this red dress, right? Come on, Aman. Validate my choices. #speaker_right
Tell me my instincts are impeccable. #speaker_right
+ (aman_2_8_red) [Red dress]
    I like the red one. #speaker_self
    No way. It has to be the black one. #speaker_right
+ [Black dress]
    Actually, I think the black one. #speaker_self
    You’re so hilarious, I don’t know why you haven’t been cast for a comedy.  #speaker_right
    Nope, definitely the red one. #speaker_right
- Pfft. I don’t get it!  #speaker_self
You and Dev broke up, so why does it matter what you wear at tonight’s party? #speaker_self
Hello, are we related, how can you be this dense?  #speaker_right
#speaker_right_image:cha_aman_jothi_hairflip.png
It matters BECAUSE we broke up.  #speaker_right
I need to sear those eyeballs into the back of his brain, like fishballs melting into a barbeque pit. #speaker_right
Anyway, back to what I was saying.  #speaker_right
I feel Natasha is doing the whole Eat Pray Love thing right now with her trip to Cambodia.  #speaker_right
I mean seriously, who goes to find themself in CAMBODIA. All you’ll find is landmines -- #speaker_right
Sis, seriously? #speaker_self
Okay fine, I mean like, it’s dusty and all. #speaker_right
I mean, wouldn’t Venice be more charming? Getting lost in the bylanes. Saved by a tall, dark and handsome... #speaker_right
Mugger. #speaker_self
Gawd, you’re such a killjoy. Anyway, I’m going with this 
{aman_2_8_red: 
    <> black <>
- else: 
    <> red <>
} 
dress.  #speaker_right
Thank you for being so unhelpful. #speaker_right

#ui:notification
#background:ui_aman_message.jpg
Kristine, casting agent: Congratulations, Aman :) # message
-> aman_2_8_whatsapp1

=== aman_2_8_whatsapp1 ===
#knot:aman_2_8_whatsapp1
#ui:whatsapp
#background:whatsapp.png
#chat_group_title:Kristine, Casting Agent
#chat_group_image:ico_aman_kristine.png
#speaker_1_name:Kristine
Congratulations, Aman :) #speaker_1
You’ve been selected to play Sundar Singh in A Trip in Time. #speaker_1
We will be emailing you details of the script and call sheet soon. #speaker_1
In the meantime, please block 15 days of your calendar for next month. #speaker_1
Of course! Thank you! #speaker_self

#ui:scene
#background:bg_aman_jothibedroom.jpg
#speaker_right_image:cha_aman_jothi.png
#speaker_right_name:Jothi
Sis! Oi! #speaker_self
Oi oi! What! #speaker_right
I GOT THE PART! Shooting starts next month! I’m SO HAPPY!  #speaker_self
#speaker_right_image:cha_aman_jothi_happy.png
My baby bro! I’m so happy for you - well done! And I’m the first to know. So honoured. #speaker_right
Who are you going to tell next?! #speaker_right
+ [I will tell Selinder first!]
    Selinder, of course. My number one girl. #speaker_self
    You guys are adorable. Love it. #speaker_right
+ [I will tell papa and ma first!]
    Papa and Ma, so don’t say anything yet! I’ll tell them at dinner. #speaker_self
    You got it! #speaker_right
- CONGRATS again baby bro! #speaker_right

So this is happiness! #inner_monologue
Thank you God, for helping me get this part.  #inner_monologue
{chapter_1_ending == 1: 
    I am so glad I didn’t have to change anything about myself. #inner_monologue
    } 
{chapter_1_ending == 2: 
    This just reinforces that I can just be me and still succeed in life. #inner_monologue
    } 

-> aman_3_intro


=== chapter_2_ending_1 ===
#knot:chapter_2_ending_1
#ending:chapter_2_ending_1
~ chapter_2_ending = 1
// multiple ways to record the ending so that we can check in ink later if the player chose this ending or the other one. this knot is not presented to the user in the game. CHANGE MY LOOK
-> aman_3_intro

=== chapter_2_ending_2 ===
#knot:chapter_2_ending_2
#ending:chapter_2_ending_2
~ chapter_2_ending = 2
// multiple ways to record the ending so that we can check in ink later if the player chose this ending or the other one. this knot is not presented to the user in the game. KEEP MY LOOK


-> aman_3_intro









// CHAPTER 3 










=== aman_3_intro ===
#knot:aman_3_intro
#ui:narrator
#background:aman_1_intro.jpg
#music:aman_intro.mp3
~ chapter_id = 3
Chapter 3 #title
Fight or Flight  #title

I finally got an acting assignment! 
After months of sending out a million (ok fine, maybe fifty) applications. 
I am super stoked to be acting in a period drama, playing a WWII soldier! 
It’s gonna be epic. 
And the timing couldn't be better, by the time I'm done with the project I zip off to Oz. 
For now, it's party time with my favourite peeps!   

-> aman_3_1_narration 


=== aman_3_1_narration ===
#knot:aman_3_1_narration
#ui:narrator
#background:aman_bedroom.jpg
The celebration. #title
Selinder, Lukman (and his girlfriend Sammy, who is Chinese), and Zhihao are all having dessert with me at Resipi Alegri (a new cafe in our area) to celebrate.

-> aman_3_1


=== aman_3_1 ===
#knot:aman_3_1
#ui:scene
#background:restaurant.jpg
#speaker_left_image:zhihao.png 
#speaker_left_name:Zhihao 
#speaker_right_image:lukman.png 
#speaker_right_name:Lukman  

Man, I’m still so full after dinner. #speaker_self
The menu here looks good, but I don’t think I have room for dessert. #speaker_self
It’s just nice to be chilling with you guys. #speaker_self
For sure bro, you deserve it. #speaker_left
And Lukman, thanks for coming along for ‘Round 2’ even though this place is not Halal.  #speaker_self
Sorry, man. You sure it’s okay...? #speaker_self
Er... Special occasion la, make exception for you.  #speaker_right
As long as I just stick to coffee, I’m okay. #speaker_right
Anyway, our dinner just now was good, so I’m super full -- no need to eat anymore.  #speaker_right
#speaker_right_image:ravi.png 
#speaker_right_name:Ravi  
Hi everybody, my name is Ravi and I'll be your waiter. #speaker_right
What can I get you guys? #speaker_right
One Corona, and one shepherd’s pie. #speaker_left
Selinder - Lime juice for you? #speaker_self
#speaker_right_image:lukman.png 
#speaker_right_name:Lukman  
Two lattes for Sammy and me. #speaker_right
Wahlao, why no one drinking? Can’t be just me right? #speaker_left
Selinder and Lukman very holy I can understand, but Sammy surely can join me for drink??  #speaker_left
Just because you date Lukman doesn't mean you must become boring and holy la.  #speaker_left
Otherwise I'm drinking all alone tonight, macam like alcoholic! haha.  #speaker_left
+ [Hey, not cool]
    Hey, tone it down man. #speaker_self
    Let her order what she wants la. She order hers, you order yours.  #speaker_right
+ [Kick Zhihao under the table]
    @+$^ -- Ow! #speaker_left
	Eh, you’re like mister racial harmony today ah. #speaker_right
    Idiot Zhihao. #inner_monologue
    Should I say something? #inner_monologue
    No, moment over, it would just be awkward... #inner_monologue
- Okay, okay. But Aman, you MUST have a drink with me.  #speaker_left
It’s your night man! This is all to celebrate your acting debut! #speaker_left
Oh, no la bro. Actually not supposed to. #speaker_self
But I’ve seen you drink before leh. #speaker_left
Er, that was... erm. #speaker_self
Don’t look at Sel, don’t look at Sel... #inner_monologue
Just one la bro. So you don't forget me when you're famous! #speaker_left
Wah lau, last whole month I rush down to studio so many times when you forgot your script la your boots la whatever.. you owe me one man! #speaker_left
Tomorrow you can be holy again. #speaker_left
+ [Ok, just one drink]
    VAR aman_3_1_drink = true
    Okay, just one. Another Corona, please. #speaker_self
    Selinder doesn’t seem to be calling me out... #inner_monologue
    I know she doesn’t approve, but I guess she’s letting me make my own choices. #inner_monologue
    She’s such a cool girl. And she looks beautiful tonight, as always. #inner_monologue
+ [Sorry bro, but no thanks.]
    ~ aman_3_1_drink = false
    Nah, I’m really not supposed to. I’ll have an apple juice, please. #speaker_self
    Wahlao. Ok excuse me, can you make it two Coronas. I will drink more on his behalf. #speaker_left
#speaker_right_image:selinder_happy.png 
#speaker_right_name:Selinder  
- Everyone, shall we raise our glasses and celebrate Aman’s big win? #speaker_right
To Aman! *clink* #speaker_right #speaker_left
#background:drink_cheers.jpg
Aman, I must say, I’m actually very happy for you. Applied so many times. Finally got something! #speaker_left
// {aman_2_5_change_look: 
//     Now you don't need to borrow my cap anymore! #speaker_left
//     } 
// {aman_2_5_change_look and aman_2_6_secret:
//     Huh? #speaker_right
//     Nothing! Zhihao is talking in riddles, as usual. #speaker_self
// }
// {aman_2_5_change_look and not aman_2_6_secret:
//     Oh yes, didn’t you have a cap phase? I’m so glad that’s over. #speaker_right
//     + [Laugh it off]
//         Come on, you know I was irresistible! #speaker_self
//         -> aman_3_1_punch
//     + [Be defensive]
//         Hey, I wasn’t getting any callbacks! I had to do what I thought I had to do. #speaker_self
//         I know jaan (dear) , I’m just joking. #speaker_right
//         You looked very handsome, although I think you look best just the way you are. #speaker_right
//         -> aman_3_1_punch
// }
// {not aman_2_5_change_look: 
//     And the best part is that you didn’t have to change your look at all. #speaker_right
// } 
// I always knew that Aman had these amazing acting talents! #speaker_right
// {chapter_1_ending == 1: 
//     Haha! I remember once in BMT, he pushed his hair in front of his face and pretended to be a pontianak. 
//     Scared the crap out of all the bunkmates!
// }
// = aman_3_1_punch
Na, come and punch la. You do the honours. #speaker_left
Ain’t gonna veto that... #speaker_self
#ui:notification
#background:ui_aman_message.jpg
Jothi: COME HOME. NOW. # message

-> aman_3_1_whatsapp


=== aman_3_1_whatsapp ===
#knot:aman_3_1_whatsapp 
#ui:whatsapp
#background:whatsapp.png
#chat_group_title:Jothi
#chat_group_image:jothi.jpg
#speaker_1_name:Jothi
22.17 #timestamp
COME HOME. NOW. #speaker_1
I'm celebrating with my friends! What happened? #speaker_self
You’re in trouble is what happened. Come home and we talk. #speaker_1
Ok, I’ll walk Selinder home and head back. #speaker_self
No, come home NOW. Papa is angry. #speaker_1
Jeez. Ok. #speaker_self

#ui:scene
#background:restaurant.jpg
#speaker_left_image:zhihao_confused.png 
#speaker_left_name:Zhihao 
#speaker_right_image:selinder_shocked.png 
#speaker_right_name:Selinder  
Guys, sorry, I need to leave. Something urgent came up at home. #speaker_self
Whaaaat? I was looking forward to the sugee cake. Heard it’s super good. #speaker_left
Is everything okay? #speaker_right
Yeah, some family drama. #speaker_self
Yes, don’t worry babe, you stay here and enjoy. #speaker_self
It’s probably something minor, I’ll update you later. #speaker_self
Take care bro. Anything let us know. I call you later to check in can? #speaker_right
Thanks, see you. Sorry! #speaker_self
 
-> aman_3_2_narration

=== aman_3_2_narration ===
#knot:aman_3_2_narration
#ui:narrator
#background:aman_home.jpg
The Reckoning #title
I walked into my house and everybody was sitting there, waiting for me. 
Pa had his arms folded, and glaring daggers at me.
Mama looked anxious. Jothi looked a bit smug. 
It looked like the scene from one of my Ma's movies.
-> aman_3_2


=== aman_3_2 ===
#knot:aman_3_2
#ui:scene
#background:aman_home.jpg
#speaker_left_image:aman_dad_angry.png
#speaker_left_name:Pa
#speaker_right_image:aman_mum_sad.png
#speaker_right_name:Mama
What’s this? Now I know where I got my drama bug from. #inner_monologue
Sit down. #speaker_left
Okay, I’m sitting. Shoot. #speaker_self
Like a firing squad... #inner_monologue
Where were you, beta (son) ? #speaker_right
I already told you all, out with Selinder and friends. #speaker_self
Drinking! #speaker_left
{aman_3_1_drink: -> aman_3_2_drink }
{not aman_3_1_drink: -> aman_3_2_no_drink }

= aman_3_2_drink
I just had one drink! #speaker_self
Uncle Ranjit saw you! #speaker_left
With your friends. Drinking shamelessly! #speaker_left
Laughing and making so much noise, like drunkards. #speaker_left
Pa we were NOT drunk!  #speaker_self
If not, how did I manage to drive home?  #speaker_self
Only two of us were drinking, and just one drink each! What’s the big deal!  #speaker_self
The big deal is that Sikhs don’t drink, Aman. #speaker_right
Outside, you never know who is watching and will spread gossip. We must be careful. #speaker_right
People can spot your turban from a mile away. #speaker_right
You have to be responsible, and a good example for others. Always. #speaker_right

-> aman_3_2_scene 
 
= aman_3_2_no_drink
I wasn’t -- #speaker_self
Uncle Ranjit saw you! #speaker_left
With your friends. Drinking shamelessly! #speaker_left
Laughing and making so much noise, like drunkards. #speaker_left
Oh my god we were not drunk!  #speaker_self
Only Zhihao was drinking, and he was on his first beer!  #speaker_self
I was drinking JUICE! So what’s the big deal! #speaker_self
Oh! Well I’m glad you weren’t drinking, Aman.  #speaker_right
But still, you must be careful about appearances, and the company you keep.  #speaker_right
You never know who is watching. People can spot your turban from a mile away.  #speaker_right
You have to be a good example. #speaker_right
 -> aman_3_2_scene
 
 = aman_3_2_scene
You know how strict Selinder’s parents are.  #speaker_left
If they hear that you brought their daughter drinking, what will they think of you?  #speaker_left
Of us? That we are a bad influence on their daughter? #speaker_left
Papa, you make it sound like we were smoking or taking drugs.  #speaker_self
So many Punjabis drink.  #speaker_self
What about those uncles who drink at the coffee shop in the afternoon?  #speaker_self
Why doesn’t anyone stop them?  #speaker_self
And this Uncle Ranjit, it’s not like he is so perfect right? #speaker_self
We cannot look at bad examples to justify bad behaviour. #speaker_left
Drinking is not the Sikh way. Period. #speaker_left
+ [I didn't do anything wrong!] -> aman_3_2_fight
+ [I'm sorry Pa] -> aman_3_2_apologise
 
= aman_3_2_fight
If I am chilling with my friends, celebrating a small victory of my own, how is it a mistake! Explain to me! #speaker_self
#speaker_left_image:aman_dad_furious.png
Nowadays, you’ve learnt to talk back eh? One acting job and you think you’re some big shot? #speaker_left
No dad, I just know what you all want from me. When you asked me to keep my turban, I listened -- #speaker_self
{chapter_1_ending == 1: 
    Only AFTER you cut your hair in the first place! #speaker_left	
}
{chapter_1_ending == 2: 
    Of COURSE you should keep your turban, you are Sikh! #speaker_left	
}
I didn’t even ASK to keep a turban! It was put on me since young! #speaker_self
#speaker_left_image:aman_dad_shocked.png	
#speaker_right_image:aman_mum_shocked.png
Did I just go too far? #inner_monologue
Why are they cornering me like this? #inner_monologue
This was supposed to be a happy night for me! #inner_monologue
Is that really how you feel, beta (son) ? #speaker_lef
It’s just a lot of pressure, Ma. To be this good role model. #speaker_self
To always make sure I’m on my best behaviour. #speaker_self
In fact, why is all this pressure on me? #speaker_self
How come Prabjhot over here doesn’t face the same issues? #speaker_self
#speaker_right_image:jothi_angry.png
#speaker_right_name:Jothi
EXCUSE ME? #speaker_right
+ [It's true!]
    It’s true, right? You stay out late, go drinking with your friends, cut your hair, dye your hair, wear short clothes -- #speaker_self

+ [Ok, I won't drag you into this]
    Alright, fine, I won’t drag Jothi into it, but -- #speaker_self
    Noooo, please, by ALL means, PRABHJOT would like you to continue.  #speaker_right
    I’m just saying, you get to stay out late, go drinking with your friends, wear short clothes
- Aman! Have some respect #speaker_left
You all are just biased towards her! #speaker_self
All the pressure is on me just because I keep a turban. #speaker_self
IT’S NOT FAIR! #speaker_self
All that matters to you is what people think, what people will say -- #speaker_self
#speaker_right_image:aman_mum_sad.png
#speaker_right_name:Mama
We are saying this for your own good, beta (son)  -- #speaker_right
It would be really GOOD if you just let me live my life! #speaker_self
I can’t breathe. I’ve got to get out of here. #inner_monologue
-> aman_3_3_narration

= aman_3_2_apologise
#speaker_left_image:aman_dad_sad.png
#speaker_left_name:Pa
#speaker_right_image:aman_mum_sad.png
#speaker_right_name:Mama
Maybe it’s true. I should have asked to go someplace without alcohol.  #inner_monologue
Maybe I did let them down... #inner_monologue
I’m sorry. I didn’t mean to cause any problem or embarrassment. #speaker_self
It’s okay, beta (son). #speaker_right
Just be more careful, beta (son) . We love you. #speaker_left
I’m a little tired, I’ll go rest in my room. #speaker_self
-> aman_3_3_narration


 
=== aman_3_3_narration ===
#knot:aman_3_3_narration
#ui:narrator
#background:aman_bedroom.jpg
The doubts return. #title
-> aman_3_3


=== aman_3_3 ===
#knot:aman_3_3
#ui:scene
#background:aman_bedroom.jpg

 
 
 









// END STORY
-> END