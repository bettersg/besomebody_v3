/*


-> unaisah_1_1_narration 

=== unaisah_1_1_narration ===
#knot:unaisah_1_1_narration
#ui:narrator
#background:bg_unaisah_schooldrivewayatnight.jpg
Text

-> unaisah_1_1


=== unaisah_1_1 ===
#knot:unaisah_1_1
#ui:scene
#background:bg_unaisah_fathercaratnight.jpg
#speaker_right_image:cha_unaisah_rahman_normal.png
#speaker_right_name:Abah
Text



#knot:unaisah_1_intro
#ui:narrator
#background:unaisah_school.jpg
#music:unaisah_intro.mp3

#knot:unaisah_2_haircut_no
#ui:scene
#background:unaisah_school.jpg
#speaker_left_image:cha_unaisah_zhihaosmiling.png 
#speaker_left_name:Zhihao 
#speaker_right_image:cha_unaisah_ericangry.png 
#speaker_right_name:Eric   

#speaker_right_image:pixel.png 

#knot:unaisah_2_haircut_yes
#ui:whatsapp
#background:whatsapp.png
#chat_group_title:Gavin Wong
#chat_group_image:cha_unaisah_gavinprofileicon.jpg
#speaker_1_name:Gavin
#speaker_2_name:Eric
#speaker_3_name:Eric
#speaker_4_name:Eric
#timestamp:21.34

#ui:notification
#background:ui_unaisah_message.jpg
Gavin: help # message
 
FOR MINIGAMES DO NOT START A NEW KNOT
#knot:unaisah_2_minigame
#ui:mcq
#game_id:2
Minigame // must add some text
-> unaisah_2_3 // point to next section of story


*/

// DECLARE GLOBAL VARIABLES
VAR character_id = 5
// VAR chapter_2_ending = 0 
// VAR chapter_3_ending = 0 
// VAR chapter_4_ending = 0 

-> unaisah_1_intro

// CHARACTER INTRODUCTION


=== unaisah_1_intro ===
#knot:unaisah_1_intro
#ui:narrator
#background:bg_unaisah_intro.jpg
#music:unaisah_intro.mp3
Unaisah Begum #title
VAR chapter_id = 1
~ chapter_id = 1
~ character_id = 5
Hello! I am Unaisah Begum. To close friends, I’m simply “Unni”. 
My husband Basheer and I are part of a small community of non-Malay Muslims in Singapore—we are Indian, but practice Islam. We are called Indian Muslims and we speak Tamil.
I don’t speak Malay.  But I do know a bit of Japanese, due to my interest in anime!
This is an exciting time for me. After a year of training, I’m about to start my new job as a General Paper tutor in Singapore Junior College.
Did you know there are over 30,000 teachers in Singapore? A few of them are straight out of school. Some of them did a mid-career switch like me.    
I was previously in public relations, but that didn’t work out… Perhaps the less said about that, the better.
At least I’ve kept one friend from my previous job—Marie. She’s a ray of sunshine, that one. Helped me through some tough times.
Switching careers at 32 is daunting, but I really want to give it my best shot. It doesn’t help that my in-laws have been expecting a grandchild ever since I got married. 
If it were only up to me, I’d rather settle into a stable career before having a child.
So that’s me — Unaisah. And this is what it’s like to be me.
CHAPTER {chapter_id} #title
Teacher’s First Day #title


-> unaisah_1_1

// START STORY



=== unaisah_1_1 ===
#knot:unaisah_1_1
#ui:narrator
#background:bg_unaisah_CH2_Bedroom_Night.png
It’s 5:30am. My alarm goes off. 
+ [Snooze]
    Ugh no. I need to sleep... a bit longer... 
    My alarm goes off again.
    ++ [Snooze]
        A few snoozes later…
        The tap’s running. What time is it?  It's already 5:57 am!
        Oh great, what a late start. Basheer shouldn’t have let me sleep in.

    ++ [Wake up]
        It's 5:47 am.
        The tap’s running. Basheer. For once, he is up before me.
    
+ [Wake up]
    I can hear the tap running. Must be Basheer. 
    It feels strange that he, for once, is up before me. 
- 
#ui:scene
#background:bg_unaisah_CH2_Bedroom_Night.png
Basheer and I have not prayed together in a long time, since I used to wake up even earlier and leave before he’d wake up.  #inner_monologue
It’d be nice to seek God’s blessings together for my first day.  #inner_monologue
I lay out the prayer mats as Basheer steps out of the bathroom. #inner_monologue
#speaker_left_image:cha_Unaisah_Basheer_Neutral_HomeWear.png
#speaker_left_name:Basheer
Ennenga (dear), wait for me. Let’s pray together. #speaker_self
Okay chellam (dear). I will give the Azaan (prayer call) while you take your wudhu (ablution / ritual cleansing). #speaker_left
// Unaisah walks to the bathroom and turns on the faucet #
Bismillah. #speaker_self
The water is cold as I run my hands under it. I start washing each hand three times before moving on to my mouth.. my nose... #inner_monologue
The rhythm of my morning routine is... centering. #inner_monologue
#ui:narrator
#background:bg_unaisah_CH2_Bedroom_Night.png
Our heads rest on the floor in prostration together at the end of the prayer. Basheer’s mat is in front of mine. 
10 minutes of prayer pass in a blink.
#ui:scene
#background:bg_unaisah_CH2_Bedroom_Night.png
This was a nice start to my day. I feel ready now.#inner_monologue
Three outfits, twenty minutes, and a struggle with a tube of lipstick later, I’m smoothing my hijab down the back of my head, ready to embark on my first day as a teacher. #inner_monologue
Good luck today chellam! #speaker_left
It’s time to embark on my first day as a teacher #inner_monologue

-> unaisah_1_2

=== unaisah_1_2 ===
#knot:unaisah_1_2
#ui:narrator
#background:bg_unaisah_CH1_VoidDeck_Day.png
Ah, my taxi has arrived just in time.
#ui:scene
#background:bg_unaisah_CH1_GrabInterior_Day.png
#speaker_right_image:cha_unaisah_grabdriver_normal.png
#speaker_right_name:Driver
Saint Peter's Junior College? You teacher, ah?  #speaker_right
+ [Yes] Yes. #speaker_self
    VAR unaisah_1_silent = 0
    How long already? #speaker_right
    Actually it’s my first day. #speaker_self
    First day? I thought you look like you’ve been teaching a few years already. #speaker_right
    Don’t mind ah don’t mind. Hahaha! #speaker_right
+ [Keep silent]
    ~ unaisah_1_silent = 1
    ... #speaker_self
- Actually, I thought of becoming a teacher once. #speaker_right
You know when times are tough, they hire more teachers. I lost my job, you know? #speaker_right
+ [What happened?]
+ [Keep silent]
    ~ unaisah_1_silent += 1
    ... #speaker_self
- Company want to cut costs. What to do? Hire cheap labour. #speaker_right
Doesn’t matter how good you are. If there’s someone cheaper, they will hire. #speaker_right
So you see, I don’t want to discourage you, you’re a teacher, but this is the life out there. #speaker_right
Teach your students so much, sometimes it’s no use. #speaker_right
Especially now with all these, you know, Indians coming into the country.  #speaker_right
+ [I'm Indian]
    What’s wrong with being Indian? #speaker_self
    A lot of them coming in, taking our jobs. Last time it was the China people. Long ago, Malaysians. #speaker_right
    Actually, I’m Indian. #speaker_self
    Hah?? Oh! Sorry sorry, I thought you are Malay! Only Malay wear tudung. #speaker_right
    Muslims wear Tudung. I’m Indian, and I’m Muslim. #speaker_self
    Oh sorry sorry. Uncle don’t know ah! Must excuse. But you’re okay. You’re not *that* kind of Indian. #speaker_right
    What do you mean, “that kind”? #speaker_self
    You are Singaporean. I know you are Singaporean because you are teaching in a Junior College. They won’t let that kind teach here. #speaker_right
    
+ [Keep silent]
    ... #speaker_self
    ~ unaisah_1_silent += 1
    I tell you, they really should stop allowing so many foreigners here. #speaker_right
    Not fair to us. We pay our taxes, they take our jobs. #speaker_right
    Last time it was the China people. Long ago, Malaysians. Cannot win. #speaker_right
    At least those people, they just work for us. Now you see the Indians. Even our banks, we give them to run. #speaker_right
    The real citizens like us, me Chinese, you Malay, we are the ones that lose out. #speaker_right
    I didn’t even bother explaining to him that I’m not Malay. #inner_monologue
    Sometimes, it’s just not worth it. I’d rather get on with my day. #inner_monologue
- Anyway, reach already. Thank you! Have a good day! #speaker_right
{unaisah_1_silent == 3:
    Sitting in silence for that entire ride was painful. But I think engaging him would have been worse for me. #inner_monologue
    - else:
    Thank goodness this torture is over. Maybe remaining silent would have been better for my mental health this morning. #inner_monologue
    }

-> unaisah_1_3

=== unaisah_1_3 ===
#knot:unaisah_1_3
#ui:narrator
#background:bg_unaisah_driverrating.jpg
Hmmm... How should I rate this driver? 
VAR unaisah_1_driverrating = 0
I got here safe (and a little earlier than I expected). That conversation was awful though.
.
+ [⭐️]
    ~ unaisah_1_driverrating = 1
+ [⭐️⭐️]
    ~ unaisah_1_driverrating = 2
+ [⭐️⭐⭐️️]
    ~ unaisah_1_driverrating = 3
+ [⭐️⭐️⭐️⭐️]
    ~ unaisah_1_driverrating = 4
+ [⭐️⭐️⭐⭐️⭐️️]
    ~ unaisah_1_driverrating = 5
- Ok, I think I'll leave the rest blank though. Need to get to my staff room.
#ui:notification
#background:ui_unaisah_message.jpg
Marie: Babe!!! # message
#ui:whatsapp 
#background:whatsapp.png
#chat_group_title:Marie de Costa
#chat_group_image:ico_unaisah_marie.jpg
#speaker_1_name:Marie
#timestamp:07.32
Babe!!! Woke up early to send you love on your first day. See I remembered! 😉  #speaker_1
Haha thanks babe! #speaker_self
This is it Unni!! You waited so long to get out of there and here you are finally  #speaker_1
You are going to ROCK this! #speaker_1
❤️💪  #speaker_self
Hey have you told anyone? About, you know... #speaker_1
Are you kidding? I’m just starting here #speaker_self
People might ask. I think it’s important. We both left that dump together. Make our sacrifice count for something #speaker_1
Easy for you to say, you’re the one who’s going to be your own boss. You don’t need to worry what people will think #speaker_self
Anyway I gotta work ya? ttyl #speaker_self


-> unaisah_1_4

=== unaisah_1_4 ===
#knot:unaisah_1_4
#ui:narrator
#background:bg_unaisah_CH1_StaffRoom_Day.png
The staff room is a maze of decorated cubicle walls. 
#ui:scene
#speaker_right_image:cha_unaisah_veronica_laughing.png
#speaker_right_name:Veronica
Heyyy! Hello! #speaker_right
A fellow teacher! She seems to be around my age, but there’s a buoyancy that makes her feel younger. #inner_monologue
You must be Unasyah. #speaker_right
Ah, that wasn't quite right  #inner_monologue
+ [Ignore the mispronunciation] Hi… #speaker_self
    VAR unaisah_1_correctveronica = false
    ~ unaisah_1_correctveronica = false
    I’m Veronica. #speaker_right

+ [Correct her] It’s Unaisah. #speaker_self
    #speaker_right_image:cha_unaisah_veronica_concerned.png
    Hm? #speaker_right
    ~ unaisah_1_correctveronica = true
    Oh, right. #speaker_right
    #speaker_right_image:cha_unaisah_veronica_laughing.png
    Morning brain, you know how it is heh. #speaker_right
    I’m Veronica. Spelled and pronounced the usual way. #speaker_right
- Anyways, I missed your introduction to the team in December. Welcome! So glad you can join us. I heard you’re a beginning teacher? #speaker_right
Yup. First day! #speaker_self
Then we must take extra care of you. Have you met everyone? #speaker_right
Most of them, I think. But it’ll be a while before I remember all the names. #speaker_self
At least you don’t need to remember the students yet. Teaching J1 right? #speaker_right
Yup! #speaker_self
They won’t be in for another few weeks. Take your time to settle in. Anyway, department huddle later ya? #speaker_right
{unaisah_1_correctveronica == true: 
    That went... #inner_monologue
    Well, not the best. #inner_monologue
    But certainly not the worst either!#inner_monologue 
    - else:
    That went pretty well...	
    } 
#ui:narrator
#background:bg_unaisah_CH1_MeetingRoom.png
Later that afternoon, I met a few other teachers.
#ui:scene
#speaker_right_image:cha_unaisah_veronica_neutral.png
#speaker_right_name:Veronica
#speaker_left_image:cha_unaisah_jeremy_neutral.png
#speaker_left_name:Jeremy
So, Unisha-- #speaker_left
Here we go again... #inner_monologue
+ [Ignore the mispronunciation] Hi… #speaker_self

+ [Correct him] Unaisah. #speaker_self
    #speaker_left_image:cha_unaisah_jeremy_sympathetic.png
    Sorry, what did I say? #speaker_left
    You said Unisha. #speaker_self
    It’s Unaisah. #speaker_self
    Oh sorry sorry. Oo-nai-shia? #speaker_left
    Sah not Shia. #speaker_self
    Oo-nah-sah? #speaker_left
    Forget it… #inner_monologue
    #speaker_left_image:cha_unaisah_jeremy_neutral.png
    Can do! #speaker_self
    
- Quite an unusual name. I’ve never known an Unasah. #speaker_left
{unaisah_1_correctveronica == false:
    You do now! #speaker_right
    - else:
    Gonna take me a while to learn that one #speaker_left
    #speaker_right_image:cha_unaisah_veronica_laughing.png
    Don’t worry, she’ll remind you. #speaker_right
    How rude! #inner_monologue
}
Hey, I heard you’re a mid-career teacher. Where were you previously? #speaker_left
I was at Brown & Grey, doing public relations. #speaker_self
#speaker_left_image:cha_unaisah_jeremy_laughing.png
Wow that sounds like quite a good job. Why did you decide to...join the dark side? Haha #speaker_left
+ [I love teaching] -> unaisah_1_4a
+ [I wasn't happy there] -> unaisah_1_4b
+ [There was some harassment there] -> unaisah_1_4c

= unaisah_1_4a
#ui:scene
#speaker_right_image:cha_unaisah_veronica_neutral.png
#speaker_right_name:Veronica
#speaker_left_image:cha_unaisah_jeremy_neutral.png
#speaker_left_name:Jeremy
Well...I’ve always loved the idea of teaching, you know,  nurturing young minds and preparing them to seize opportunities... #speaker_self
VAR unaisah_1_teachingreason = ""
~ unaisah_1_teachingreason = "love teaching"
Haha! Is that what you told the interview panel? #speaker_left
I’m sorry? #speaker_self
Nah, it just sounded like an advertisement for teaching. I was more curious about what made you give up a good position in the private sector like that. #speaker_left
I guess...I figured I like teaching more? #speaker_self
But what made you figure? #speaker_left
Everyone says they want to nurture the next generation, or they’ve always loved kids. #speaker_left
Those of us in the teaching track from the beginning, we heard our calling and stayed there. #speaker_left
But you made a career switch. Something had to have happened. #speaker_left
Tamara--you’ll meet her later--also made a mid-career switch. Her trigger was becoming an aunt. For Alistair over there, it was turning 30. #speaker_left
Haiyoh can you not be such a busybody, she already answered you. It’s only her first day here, there’s still a lot of time to get to know her. #speaker_right
Sigh. There was obviously something more, and he senses it. #inner_monologue
But telling them about the harassment I faced there... I think it's too early. I don't know how they would respond, or if they would even believe me. #inner_monologue
#ui:narrator
#background:bg_unaisah_CH1_MeetingRoom.png
Today was a lot to take in, but I think I’m warming up to my colleagues, and I like the vibe of the school. It’s a good start! 

-> unaisah_1_5

= unaisah_1_4b
#ui:scene
#speaker_right_image:cha_unaisah_veronica_neutral.png
#speaker_right_name:Veronica
#speaker_left_image:cha_unaisah_jeremy_neutral.png
#speaker_left_name:Jeremy
It sounds nice, but honestly the work there was crazy. I was burning so many weekends. Then I realised that I didn’t have to. #speaker_self
~ unaisah_1_teachingreason = "not happy"
I could still be involved in the field of communications, by teaching it. #speaker_self
Haha! Like they say about us teachers. Those who can’t, teach right? #speaker_left
Hey! How can you say that. She can. She just chose to teach. #speaker_right
Joking, joking... #speaker_left
But it can get pretty crazy here too. Lesson plans, marking, CCAs, handling the students’ problems. Teenagers! #speaker_left
I’ll take teenage problems over boss and client problems! #speaker_self
Boss problems...? #speaker_left
Um... #speaker_self
Haiyoh can you not be such a busybody, she already answered you. It’s only her first day here, there’s still a lot of time to get to know her. #speaker_right
Sigh. He senses that there is more to the story than I'm letting on. #inner_monologue
But telling them about the harassment I faced there... I think it's too early. I don't know how they would respond, or if they would even believe me. #inner_monologue
#ui:narrator
#background:bg_unaisah_CH1_MeetingRoom.png
Today was a lot to take in, but I think I’m warming up to my colleagues, and I like the vibe of the school. It’s a good start! 

-> unaisah_1_5

= unaisah_1_4c
#ui:scene
#speaker_right_image:cha_unaisah_veronica_neutral.png
#speaker_right_name:Veronica
#speaker_left_image:cha_unaisah_jeremy_neutral.png
#speaker_left_name:Jeremy
Oh my goodness. Am I actually going to tell them? #inner_monologue
Will it make them uncomfortable? Will they think I’m a troublemaker? #inner_monologue
What if they judge me? Can I even trust them? #inner_monologue
+ [Tell them what your boss did]  It’s...a long story. #speaker_self
    #speaker_right_image:cha_unaisah_veronica_concerned.png
    #speaker_left_image:cha_unaisah_jeremy_sympathetic.png
    Take as long as you want. #speaker_right
    ~ unaisah_1_teachingreason = "harassment"
    I wasn’t expecting to tell anyone this early, but...some bad things happened at my previous workplace. #speaker_self
    Oh dear. #speaker_left
    We really didn’t mean to dig this up. You don’t have to say any more if you don’t want to. #speaker_right
    It’s okay. I want to. #speaker_self
    It could happen to anyone, anywhere. And if it happens or has happened to anybody here, I’m always here to listen, or help in any way I can. #speaker_self
    We can look out for one another. #speaker_self
    We may not have known each other long, but I can tell you’re very kind and nurturing, Unaisah. I’m glad you’ve joined us. #speaker_right
    So, what happened is… #speaker_self
    a former superior harassed a few of us. #speaker_self
    That’s terrible! #speaker_right
    I reported him, but nothing happened. And when nothing happens… I just couldn’t stand to be there anymore. I didn’t feel safe. #speaker_self
    I think I understand. #speaker_right
    I’m very sorry to hear that. Don’t worry you won’t see anything like that here. #speaker_left
    Thanks, Jeremy, but I hope you understand, it’s not of much comfort because I didn’t expect to experience it there, either. #speaker_self
    How do you feel about it now? #speaker_right
    One day at a time, one day at a time. #speaker_self
    Thank you so much for trusting us with this. We hardly know you. #speaker_right
    Yeah. About that. Could you not tell anyone for now? If others are to know about it, I’d prefer if it came out of my own mouth. #speaker_self
    You have our word. #speaker_right
    Is there anything we can do to support you? A few of our classes are down the hall from each other. I can keep an eye out for you. #speaker_left
    No, I don’t need bodyguards. Just having you two listening and asking me how I’m doing is enough. #speaker_self
    Thank you. #speaker_self
    #ui:narrator
    #background:bg_unaisah_CH1_MeetingRoom.png
    Today was a lot to take in, but I think I’m warming up to my colleagues, and I like the vibe of the school. It’s a good start! 

    -> unaisah_1_5

+ [Don't tell them]
    It could happen to anyone, anywhere.  #inner_monologue
    And if it happens or has happened to anybody here, I want them to know I’m always here to listen or help in any way I can. Maybe we can look out for one another. #inner_monologue
    And it would certainly make things more comfortable for me if I didn’t keep this bottled up... #inner_monologue
    But I’m just not ready to tell them yet. #inner_monologue
    There’s really not much to it. Long story short… #speaker_self
    ++ [I love teaching] -> unaisah_1_4a
    ++ [I wasn't happy there] -> unaisah_1_4b

=== unaisah_1_5 ===
#knot:unaisah_1_5
#ui:mcq
#game_id:14
Minigame 14 // must add some text
-> unaisah_1_5a

=== unaisah_1_5a ===
#knot:unaisah_1_5a
#ui:narrator
#background:bg_unaisah_intro.jpg
3 weeks later.
It’s been a crazy first few weeks as a teacher. It’s fun, but I also feel like I’m going to burst.
On the one hand, I do want to do well. To make up for leaving a promising career in public relations prematurely. To show my expertise still counts, even as a GP teacher.
On the other hand, to do well, I think I need to slow down and learn the ropes properly.
I thought moving from the private to the public sector would be easy, but it’s been tougher than I’d expected. 
Anyway, need to pick up groceries on the way home from school.

#ui:scene
#background:bg_unaisah_CH2_Supermarket_Day.png
#speaker_right_image:cha_unaisah_malayuncle.png
#speaker_right_name:Elderly Man
Let’s see, did I get everything...milk, eggs, coriander, dried mango....feels like I forgot something… #inner_monologue
Oh! Ginger! #inner_monologue
Wait--no, there it-- #inner_monologue
Maaf, bagaimana pergi stesen bas? (Excuse me, how do I get to the bus station?) #speaker_right
Oh... #speaker_self

+ [Reply in your limited Malay] Maaf, saya tak boleh cakap Melayu. (Sorry, I don’t speak Malay.) #speaker_self
    VAR unaisah_1_replyelderly = "malay"
    ~ unaisah_1_replyelderly = "malay"
    Kamu Melayu? (Aren’t you Malay?) #speaker_right
    Ahh, should’ve just gone with English. #inner_monologue
    I only know how to say “I don’t speak Malay” because I’ve had to say it so often. #inner_monologue
    Erh...sikit-sikit (a little). I’m Indian. #speaker_self
+ [Correct him] Sorry uncle, I don’t speak Malay.  #speaker_self
    ~ unaisah_1_replyelderly = "correct"
    How can I help? #speaker_self

+ [Reply in Tamil] Mannikkavum (sorry) #speaker_self
    ~ unaisah_1_replyelderly = "tamil"
    Apa...?? #speaker_right
    What was that about! Why did I do that? #inner_monologue
    Sorry, I don’t understand. I’m Indian. #speaker_self

- Oh sorry, I thought you Malay! Old already...eyes no good. Haha. Eh...how to go to the bus interchange? #speaker_right
Okay, see the two blocks over there? Walk between them until you reach the main road, turn right. #speaker_self
Orh, orh, thank you. #speaker_right
Walk carefully uncle! #speaker_self
If I had a dollar for every time...I gotta tell Marie about this. #inner_monologue

-> unaisah_1_6


 === unaisah_1_6 ===
#knot:unaisah_1_6 
#ui:narrator
#background:bg_unaisah_CH1_StaffRoom_Day.png
(Yawns) Wow, it’s been a tiring month. But I feel I’m getting a hang of things now. I’ve settled into a rhythm. 
#background:ui_emailinbox.png
First class starts in 20 minutes. Better get those emails out of the way. God knows how hectic it gets once that first bell goes…

#ui:emailinbox

#newemailfrom:NEO HWEE LING
#newemailprofileicon:ico_ravi_rebecca.png
#newemailsubject: Chat this afternoon?
#newemailpreview: Unaisah, haven't had the change to catch up...
.

#ui:narrator
#background:ui_emailinbox.png
That’s my supervisor. What does she want to talk about? Could this be my chance to tell her about my workload?
-> unaisah_1_6a

=== unaisah_1_6a ===
#knot:unaisah_1_6a
#ui:email
#emailheader:Read Email
#emailfrom:NEO Hwee Ling <NEO_Hwee_Ling@sjc.edu.sg>
#emailto:Unaisah BEGUM <Unaisah_BEGUM@sjc.edu.sg>
#emailfromicon:ico_zhihao_elite.png
#emailsubject:Chat this afternoon?

Unaisah, haven’t had the chance to catch up since you joined us. /n /n If you’re free after 3 this afternoon could you drop by my office for a short while? /n /n cheers, /n HL  #speaker_1

#ui:narrator
#background:bg_unaisah_CH1_StaffRoom_Day.png
The day trudges on as usual. At the end of my last class, I make my way to a small meeting room. It is quite plain, with a few plaques and motivational posters on the wall.
Hwee Ling is already there, nose buried in some papers. Her face is not unkind, but stern. Definitely not someone I’d want to mess with.

-> unaisah_1_6b

=== unaisah_1_6b ===
#knot:unaisah_1_6b
#ui:scene
#background:bg_unaisah_CH2_UnaisahDesk_WithWork.png
#speaker_left_image:cha_unaisah_hweeling_neutral.png
#speaker_left_name:Hwee Ling
So, how’ve your first few weeks here been? #speaker_left
+ [Hype it up]  Incredible! Such an eye-opening and energising experience. #speaker_self
    #speaker_left_image:cha_unaisah_hweeling_grinning.png
    Spoken like a true BT (beginning teacher). The real challenge is keeping it up. #speaker_left
+ [Slow it down]   To be honest, it’s a lot more than I expected. #speaker_self
    I’ve been taking on quite a lot of admin duties and was hoping to focus more on my students. #speaker_self
    Don’t worry too much, it’s early days, you’ll grow into it. #speaker_left
- Heh... #inner_monologue
In fact, I wanted to talk to you about CCAs. We’re aware we haven’t assigned you one yet. #speaker_left
#speaker_left_image:cha_unaisah_hweeling_neutral.png
Here it comes. More work. #inner_monologue
We did all the allocations before you joined us, but there’s a space for you in... #speaker_left
...Malay Dance. #speaker_left
VAR unaisah_1_cca = ""
Malay Dance? If the reason is what I think it is… #inner_monologue

+ [Accept Malay Dance]   Oh! Great. Great! So...cultural. #speaker_self
    My childhood bestie took Malay dance in school. I can sort of remember attending a few of her performances... #speaker_self
    ~ unaisah_1_cca = "malaydance"
    VAR chapter_1_ending = 0 
    ~ chapter_1_ending = 1
    That’s a plus, not a requisite. We’re not asking you to do this because you’re Malay. #speaker_left
    I’m not. #inner_monologue
    #speaker_left_image:cha_unaisah_hweeling_concerned.png
    Because you’re not. #speaker_left
    Okay, phew, she gets it. #inner_monologue
    Any teacher can be in charge of any CCA. Because what you’re doing is imparting values. Leadership. Teamwork. Care for the community. #speaker_left
    The technical parts, we can always get vendors in if necessary. Some CCAs, like the Uniformed Groups, practically run themselves, thanks to seniors. #speaker_left
    #speaker_left_image:cha_unaisah_hweeling_neutral.png
    So, how about it? #speaker_left

+ [Ask for something else]  ... #speaker_self
    Anything wrong? #speaker_left
    I was just wondering if you meant Indian Dance. I’m, well, Indian. #speaker_self
    #speaker_left_image:cha_unaisah_hweeling_concerned.png
    I know you are. We know you are. But we had to shut down Indian Dance two years ago because there weren’t enough students interested in it. Ever since the school moved, our student profile has been shifting. #speaker_left
    I understand. Sorry, it’s just that it happens so much that people assume I’m Malay because I’m Muslim so I thought-- #speaker_self
    Don’t worry about it. No harm, no foul. #speaker_left
    #speaker_left_image:cha_unaisah_hweeling_neutral.png
    So how about it? Try something new? #speaker_left
    So, how about it? #speaker_left

- Hmmm...
+ [Accept Malay Dance now]    Okay. I’ll do it. It will be a learning opportunity for me, too. #speaker_self
    That’s the spirit. Everything else good? #speaker_left
    ~ unaisah_1_cca = "malaydance"
    ~ chapter_1_ending = 1
    Yup, yup, still adjusting, but good. #speaker_self
    A mid-career shift can be tough. If anything pops up, let me know. #speaker_left
    
+ [Ask for something else still]    I understand, but honestly I'm not sure I'd be very inspiring to the students. I have two left feet and have little interest in dance. #speaker_self
    It’s good that you know your interests, Unaisah. I appreciate that. But we do really need a teacher to head Malay Dance. It’s not as if you’ll be doing any dancing yourself anyway. #speaker_left
    Are there any other CCAs that need someone? #speaker_self
    Well, the Robotics Club is growing and there’s a big tournament this year. I’m not sure Desmond can handle it on his own. #speaker_left
    Great. I’m even less into circuits than dance... #inner_monologue
    But I'm tired of always being in the minority box, even ones that don't really apply to me. #inner_monologue
    I’ve gotten Hwee Ling to think of other options so I probably shouldn't back out now. #inner_monologue
    
    ++ [Accept Robotics] That sounds good. It’s a growing field. Coding is the future! #speaker_self
        ~ unaisah_1_cca = "robotics"
        ~ chapter_1_ending = 2
        That’s the spirit. Everything else good? #speaker_left
    
    ++ [Choose Malay Dance] You know what, I think I should give myself a chance with dance. If I can get into something I’m not good at, then I can use that to motivate my students. #speaker_self
        ~ unaisah_1_cca = "malaydance"
        ~ chapter_1_ending = 1
        That’s the spirit. Everything else good? #speaker_left
    -- Yup, yup, still adjusting, but good. #speaker_self
    
- That's settled then. My door is usually open when I'm in, which means you can come in to talk anytime. #speaker_left


-> unaisah_1_7

=== unaisah_1_7 ===
#knot:unaisah_1_7
#ui:narrator
#background:black.jpg
Later that night.
#ui:scene
#background:bg_unaisah_CH2_LivingRoom_Night_wFood.png
#speaker_left_image:cha_Unaisah_Basheer_Laughing_HomeWear.png 
#speaker_left_name:Basheer

Oh wow, did you get these from the Old Airport Road stall? Haven’t had these in so long!  #speaker_left
The best thing about your new workplace, it’s near all the great hawker stalls haha.   #speaker_left
True! Oh - you’ll never guess what happened to me today!  Guess what CCA I’m now in charge of.  #speaker_self
...Debate?  #speaker_left
And what’s that supposed to mean? #speaker_self
Heh, that you are very sharp?  #speaker_left
Good save. But no. #speaker_self
…The Otaku Club? As president?  #speaker_left
Ha. Ha. #speaker_self
But okay, this is serious. #speaker_self

{unaisah_1_cca == "malaydance":
    It's Malay Dance. #speaker_self
    Dance! You? Hahaha, I can’t believe it. #speaker_left
    I don’t know if I’m more bothered by that, or the Malay thing. #speaker_self
    What Malay thing? #speaker_left
    You know, the fact that people often lump us together with Malays because we’re Muslim. #speaker_self
    It's like they have lived alongside Indian Muslims for so long but they assume that all Muslims must be Malay. #speaker_self
    So? #speaker_left
    So? We’re not, and I’m tired of others thinking we’re interchangeable. #speaker_self
    #speaker_left_image:cha_Unaisah_Basheer_Neutral_HomeWear.png 
    They just don’t know better. It’s usually quite innocent. Don’t waste your energy bothering about them, alright? #speaker_left
    Well, it isn’t for me. #speaker_self
    Seriously Basheer, is it really too much to ask for people to recognise that Indians can be Muslim too? #speaker_self
    And I wish you weren’t so dismissive about it. It’s not funny. #speaker_self
    Alright alright, it’s not a joke. And may I also add that there’s only room for one smart, strong, independent, and brave partner in this relationship... and it definitely isn’t me. #speaker_left
    You got that right. #speaker_self
    - else :
    It's Robotics. #speaker_self
    Robotics! You? Hahaha, I can’t believe it. #speaker_left
    Time to take a crash course through YouTube videos... #speaker_self
    Don’t they give you something you’re good at? Oh wait! Now I can see it! Must be all the Gundam fighters you watch. #speaker_left
    Hey! #speaker_self
    Bhew blew bhew bhew! Target destroyed! #speaker_left
    Hahaha! Oh my god Bash, stop joking.  #speaker_self 
    Okay, you’re not wrong. But who knows, give me a couple months, I could be a tech whiz. #speaker_self
    I always thought teachers get to pick their CCAs. #speaker_left
    I think they do, but I joined later so they’d all been taken. Trust me, it could’ve been worse. It could’ve been Malay dance. #speaker_self
    I, for one, would have loved to see you dance. #speaker_left
    Anyways, I don’t actually have to know anything about the subject. #speaker_self
    #speaker_left_image:cha_Unaisah_Basheer_Neutral_HomeWear.png 
    Really? #speaker_left
    I’m just there to [mimicking Hwee Ling] "Impart values. Care for the Community." #speaker_self
    Sure, but shouldn’t CCA teachers at least be interested in the activities? #speaker_left
    Well, what was your CCA back in the day Bash? #speaker_self
    #speaker_left_image:cha_Unaisah_Basheer_Laughing_HomeWear.png 
    You’re looking at Staff Sergeant Basheer, of the National Police Cadet Corps. #speaker_left
    Your CCA teachers, were they the police type? #speaker_self
    Yah. Of course. #speaker_left
    Okay, whatever. It’s not important. #speaker_self
}

You know what’s important to me though? #speaker_left
Us? #speaker_self
Well yes, but also my parents want to drop by next week. #speaker_left
Fine. I can’t say no, right? #speaker_self
#speaker_left_image:cha_Unaisah_Basheer_Concerned_HomeWear.png
I guess not...and I hope this visit goes better than the last one. #speaker_left
I don’t like where this is going. #inner_monologue

+ [Avoid conflict] Alright. I get it, she’s your mother. It’s natural that she’s eager to have a grandchild. #speaker_self
    Thank you dear. #speaker_left
    We need to have a proper talk about this soon though. #speaker_self
    It's a choice that affects me greatly. #speaker_self
    I know what I want...I think. But it feels lonely. #speaker_self
    I’m sorry. #speaker_left
    Don't leave me hanging too long ya? #speaker_self

+ [Confront Basheer] That’s up to you. #speaker_self
    Come on, don’t make a man choose between his mother and his wife. It never ends well, alright? #speaker_left
    So you’re asking me to side with your mother when she asks me about having a baby again. Shall I just pop one for her now? #speaker_self
    That’s not what I said, alright? #speaker_left
    #speaker_left_image:cha_Unaisah_Basheer_Defeated_HomeWear.png
    Well what will you say then? What do YOU actually feel about having a child? #speaker_self
    Unni, we’ve talked about this. #speaker_left
    Wrong. I’ve talked about it. I’ve made it clear that I’m not ready yet. #speaker_self
    You’ve talked around it. You change the subject. Or you say a lot of things without actually saying anything at all. It feels like you’ve been avoiding this discussion. #speaker_self
    Not now, alright? #speaker_left
    
    ++ [Then when?] See what I mean! Then when? #speaker_self
        How much longer do you want to drag this out? This is my life too, my body. #speaker_self
        Just...not now. I have a lot on my mind. #speaker_left
        Weren’t you the one who said this is important? #speaker_self
        I meant telling you my mother is coming was important. This… can wait. #speaker_left
        Maybe you should tell her that then. #speaker_self
        Unni...please. #speaker_left
        I feel so alone in this. I just want to know if you’ll stand by me. #speaker_self
        I’m sorry. #speaker_left
        
    ++ [Alright] Alright. I get it, she’s your mother. It’s natural that she’s eager to have a grandchild. #speaker_self
        Thank you dear. #speaker_left
        #speaker_left_image:cha_Unaisah_Basheer_Concerned_HomeWear.png
        We need to have a proper talk about this soon though. #speaker_self
        It's a choice that affects me greatly. #speaker_self
        I know what I want...I think. But it feels lonely. #speaker_self
        I’m sorry. #speaker_left
        Don't leave me hanging too long ya? #speaker_self

- I can...do the dishes tonight. #speaker_left
Oh, when you feel bad then you offer to do is it? #speaker_self
Don’t put it that way, alright... #speaker_left
It’s fine. It’s my turn today anyway. #speaker_self
#ui:narrator
Lately, I find myself taking my frustrations out on Basheer. I don’t yet know what I want for my future, and I’m already torn up about this without my mum-in-law adding to the pressure. 
Sometimes, I wonder what Basheer would do if his mum and I were drowning in open water – would he go get me, or her? Every time I think about it, I have to stop the answer from crystallising.  

    
-> unaisah_1_8


=== unaisah_1_8 ===
#knot:unaisah_1_8
#ui:narrator
{unaisah_1_cca == "malaydance":
    #background:bg_unaisah_CH2_MalayDanceCCARoom.png
    Four months later.
    - else:
    #background:bg_unaisah_CH2_RoboticsCCARoom.png
    Four months later.
}

#ui:scene
#speaker_left_image:cha_unaisah_roslan.png
#speaker_left_name:Roslan
#speaker_right_image:cha_unaisah_chitra.png
#speaker_right_name:Chitra
{unaisah_1_cca == "malaydance":
    #background:bg_unaisah_CH2_MalayDanceCCARoom.png
    I was skeptical about taking on the Malay Dance CCA, but I’ve really started to enjoy it. #inner_monologue
    The students are passionate, and they always left practice with smiles on their faces. #inner_monologue
    - else:
    #background:bg_unaisah_CH2_RoboticsCCARoom.png
    I was skeptical about taking on the Robotics CCA, but I’ve really started to enjoy it. #inner_monologue
    The students are passionate, and Desmond is very capable of guiding through the technical aspects. #inner_monologue
}
Okay, that’s it for today. #speaker_self
Thank you Madam Unaisah! #speaker_left
Hehehe... #speaker_right
Hehehe... #speaker_left
What are you all looking at on your phones? #speaker_self
Nothing, nothing! #speaker_right
Come on, it seems to be quite entertaining to all of you. #speaker_self
Ma’am, we’re looking at Zhihao’s IG stories! #speaker_left
Oi! Ros! #speaker_right
He’s saying Nad and Gavin-- #speaker_left
Eh, enough ah! #speaker_right
Is this something I should know? #speaker_self
No no no. Just our own jokes. #speaker_left
If you say so. #speaker_self
Eh Mdm Una...you got IG or not? #speaker_left
I do, but it’s private. #speaker_self
Can add or not? You know us. #speaker_left
You can always talk to me in person. We’re in school all the time. Why go online? #speaker_self
I can also talk to Zhihao anytime. But because I’m on IG with him, I can see that Nad-- #speaker_left
Last warning ah! #speaker_right
Eh eh Madam Una. Is this one you? #speaker_left
// [We see an IG account, which is private. The handle is @otakunaisah and the profile pic is an anime-style character of Unaisah.] #
How did they..?? #inner_monologue
Maybe I shouldn’t have used my real name as part of my handle… #inner_monologue

+ [Confess] Wow, you are really a resourceful lot. How did you know? #speaker_self
    Looks like you what. And your name is right there. #speaker_left
    Eh, you like anime? #speaker_left
    As a matter of fact, I do. #speaker_self
    Which ones? #speaker_left
    Recently I’ve been re-watching Mob Psychic 300. #speaker_self
    So how, can we add you on IG? #speaker_left
    Like I said, you can just talk to me in school if you need anything. #speaker_self

+ [Deny] No it’s not. #speaker_self
    Don’t bluff, Mdm Una! Your name is right there. #speaker_left
    How do you know. It could be another Unaisah, anywhere in the world. #speaker_self
    Never mind...challenge accepted. If we find your account, will you add us? #speaker_left
    We’ll see about that. #speaker_self

- -> unaisah_1_9

=== unaisah_1_9 ===
#knot:unaisah_1_9
#ui:scene
#background:bg_unaisah_CH1_UnaisahDesk.png
#speaker_left_image:cha_unaisah_veronica_neutral.png
#speaker_left_name:Veronica
Heyyy! Hey Unaisah. #speaker_left
What’s up? #speaker_self
What are you going to wear for Racial Harmony Day? #speaker_left
Yeeaah that’s coming up right? #speaker_self
A few of us are thinking of coordinating and going with a theme. Like same colour. #speaker_left
You know, like how some Malay families wear the same colour during Hari Raya? #speaker_left
My family doesn’t do that though. #speaker_self
Also isn’t it harder to get the same colour for different ethnic costumes? #speaker_self
#speaker_left_image:cha_unaisah_veronica_laughing.png
Just try lah. Are you in or not? #speaker_left

+ [Agree] Why not? Could be fun. #speaker_self
    Okay okay! I’ll let the others know. We’ll figure something out. #speaker_left
+ [Decline] See first? I’m having enough trouble as it is figuring out what to wear. #speaker_self
    Okay sure. Let me know if you change your mind ya. Still got time. #speaker_left
- Hey Veron...? While you’re here, can I ask you something? #speaker_self
#speaker_left_image:cha_unaisah_veronica_neutral.png
Sure, what is it? #speaker_left
Are you friends with any of your students on social media? #speaker_self
#speaker_left_image:cha_unaisah_veronica_disgusted.png
Oh no no no, no no. #speaker_left
That’s emphatic! #speaker_self
There’s a code of conduct. We can’t. #speaker_left
I know that, but that’s just on paper. Wouldn’t it really help to bond with students? #speaker_self
I mean, they already have our phone numbers for class chat groups. #speaker_self
I just think it could be useful to build that teacher-student relationship that our colleagues are always talking about. #speaker_self
Unaisah, I know you mean well, but this is really not a good idea. It’s a slippery slope. #speaker_left
You may think it’s okay now, but it can lead to a lot of problems later. #speaker_left
Okay, okay. #speaker_self
#speaker_left_image:cha_unaisah_veronica_neutral.png
One more thing. #speaker_self
Yes? #speaker_left
Are any of your students in BGRs? #speaker_self
Boy-girl relationships? Sure. #speaker_left
How do you deal with that? #speaker_self
I don’t. #speaker_left
Not unless it affects their schoolwork. Usually it doesn’t. #speaker_left
I see. #speaker_self
Are you suspecting any of your students are...? #speaker_left
Oh, oh not really. Just heard the kids talking. #speaker_self
#speaker_left_image:cha_unaisah_veronica_laughing.png
Just let them be. You want to hear about BGR? I even have BBR, GGR. Haha. I can give you all kinds. #speaker_left
And that’s … okay? #speaker_self
Why shouldn’t it be? #speaker_left
Oh I just thought...you know, given the religious affiliation for the school... #speaker_self
#speaker_left_image:cha_unaisah_veronica_neutral.png
Honestly, I'm here to teach. Dealing with all the other headaches that students cause is just … extra work, which I'd much rather avoid. #speaker_left
So take my advice - just ignore it and don't get involved. #speaker_left
Of course. #speaker_self

-> unaisah_1_10

=== unaisah_1_10 ===
#knot:unaisah_1_10
#ui:narrator
#background:ui_unaisah_instagram.png
Later that night. 
A new IG request from @roslando_calrissian.
I should...
+ [Accept] I'll accept it.
    VAR unaisah_1_instagram = true
    ~ unaisah_1_instagram = true
    I hope I don't regret this.
+ [Decline] I'll decline it.
    ~ unaisah_1_instagram = false
    No thanks.
+ [Ignore] Hmm.
    ~ unaisah_1_instagram = false
    I think best to just ignore it.
- Ok, that's settled, for now.
#background:black.jpg
Navigating all these social dynamics as a teacher is just as difficult as it was in my previous job. 
Who should I make friends with? How close should I get to them? How should I let them treat me? 
Should I speak up for myself, or stay silent? Should I be open about my issues with my boss, or keep my troubles to myself?
And not to mention my in-laws and their demands for a grandchild. 
Ok, deep breath. I can do this.

// the unaisah_1_instagram was added later, so for subsequent conditionals must do "if true, else" (to catch the null / undefined options) rather than specify "if true" and "if false". 

-> unaisah_1_reflection

=== unaisah_1_reflection ===
#knot:unaisah_1_reflection
#ui:chapter_reflection
#reflection_id:14
Reflection 14  // change this to 14




-> unaisah_2_intro










// CHAPTER 2





=== unaisah_2_intro ===
#knot:unaisah_2_intro
#ui:narrator
#background:bg_unaisah_CH2_UnaisahDesk_WithWork.png
I can’t believe it’s already a new school term.  The work is hard but I have a good rhythm. I’m on top of things. I have colleagues who are considerate. 
I really feel I have a shot at doing well, and finally putting the troubles of my previous job behind me.
The timing is awkward though. I’m 35 now and my in-laws have been putting more and more pressure on me to have a child. They do it with a smile, but it adds up.
I haven’t made up my mind. Putting everything I have into this job is so important to me. 
But my experiences with my students have also gotten me thinking how nice it would be to care for and raise a child of my own, with all the God-given potential.
I wish I knew where Bash stands on this. I think Bash might want a child more than me, but I don’t know whether it’s him, or his parents. 
Somehow we’ve managed to skirt around this difficult conversation for so long...

~ chapter_id = 2
#background:black.jpg
CHAPTER {chapter_id} #title
The Mother of All Expectations #title


-> unaisah_2_1


=== unaisah_2_1 ===
#knot:unaisah_2_1
#ui:scene
#background:bg_unaisah_CH2_UnaisahDesk_WithWork.png
#speaker_left_image:cha_unaisah_hweeling_neutral.png
#speaker_left_name:Hwee Ling
...and that’s all the feedback I have for you. Well done, Unaisah. You’re doing great. Keep this up. #speaker_left
Thank you, Hwee Ling. I’m trying my best. #speaker_self
It feels like a lifetime ago that I met Hwee Ling for the first time in this room. I’ve grown a lot in just a few months #inner_monologue
Do you have any other questions about your performance? Anything you want to raise? Or disagree with? #speaker_left
+ [About my progression...] I think I’ve done well, and I’m thinking about my progression. #speaker_self
    VAR unaisah_2_progression = ""
    ~  unaisah_2_progression = "ask"
    I want to know what I need to do to become a Subject Head some day. #speaker_self
    That’s direct. #speaker_left
    Did I just mess this up? #inner_monologue
    It’s perfectly fine to ask. In the service, promotions don’t come until several years in. #speaker_left
    But you do come with a lot of relevant experience from the private sector. And you’ve been using it. #speaker_left
    Mid-career teachers like you can and do progress faster than fresh graduates. #speaker_left
    Thanks, Hwee Ling. Good to know that. #speaker_self
    Is it important to you, though? #speaker_left
    I just want to be able to make the most impact, with my abilities. #speaker_self

+ [We covered everything] I just wanted to thank you, for all the tips and guidance.  #speaker_self
    I’ve learned a lot from you, not just about teaching, but also about being a community leader. Instilling values. How to inspire students, get them excited about {unaisah_1_cca}, even when I’m not sure about it myself. #speaker_self
    That’s very sweet of you, Unaisah. I appreciate #speaker_left
    Are you sure there’s nothing else you wanted to talk about? #speaker_left
    
    ++ [My progression...] Well… #speaker_self
    I think I’ve done well, and I’m thinking about my progression. I want to know what I need to do to become a Subject Head some day . #speaker_self
    ~  unaisah_2_progression = "ask"
    I just want to be able to make the most impact, with my abilities. #speaker_self
    It’s perfectly fine to ask. In the service, it's a bit early to be thinking about this. #speaker_left
    But you do come with a lot of relevant experience from the private sector. And you’ve been using it. #speaker_left
    Mid-career teachers like you can and do progress faster than fresh graduates. #speaker_left
    Thanks, Hwee Ling. Good to know that. #speaker_self
    I can see this is important to you. #speaker_left
    And I must admit, you’ve improved a lot since you first arrived here. You’re a natural teacher and I see how much you care for the students. #speaker_left
    So you think I have a shot? #speaker_self
    To be honest, there’s a little more to it than just ability. It depends on vacancies, supply and demand, that sort of thing. #speaker_left
    I see. #speaker_self
    But I will say, I see a lot of potential for you here… with more time. When the opportunity arises, I’d be happy to recommend you. #speaker_left
    
    ++ [No, that's all...] Nope, that’s it. I think we covered everything. #speaker_self
        ~  unaisah_2_progression = "nothing"
        Thanks so much. #speaker_self

- You know, there is one more thing you can work on. #speaker_left
Yes? #speaker_self
You’ve been sharing a lot of your expertise in communications with your students. Which is great. #speaker_left
How about going one step further? Could you use your connections with your former colleagues to set up opportunities for students? #speaker_left
Internships, learning journeys, that sort of thing. #speaker_left
Oh. I’ll see what I can do. #speaker_self
It would be such a great help. #speaker_left
How do I tell her that I really, really want nothing to do with my former colleagues or company. #inner_monologue
There are some memories that I just want to bury forever. #inner_monologue
But.. if this helps my new career… #inner_monologue

-> unaisah_2_2


=== unaisah_2_2 ===
#knot:unaisah_2_2
#ui:narrator
#background:bg_unaisah_CH3_Kitchen_Night.png

They don’t understand. I didn’t leave my previous company just to go running back to them for help.
But if I don’t, will I be a disappointment to Hwee Ling and the school management?
I need to talk this through with someone.
...wait, what’s that smell? 
I have more pressing things to think about though...
+ [Ignore smell] I'll get to that another day.
     VAR unaisah_2_smell = ""
    ~ unaisah_2_smell = "ignore"
    -> unaisah_2_3
+ [Investigate smell] It seems to be coming from the kitchen. But the dishes are done.
    ~ unaisah_2_smell = "investigate"
#background:bg_unaisah_CH3_Kitchen_Night.png
It seems to be coming from the kitchen. But the dishes are done.
- UGH! Rotting food in the trash! It was Basheer's turn to take care of this! How long has it been here? 
There better not be any cockroaches!	

+ [Throw the trash] I want to show him this, but I also cannot take the smell. 
    VAR unaisah_2_trash = ""
    ~ unaisah_2_trash = "throw"
    How many times have I had to do this for him? Urghhhh! Men!

+ [Leave it for Basheer] It’s been here two days, I think it can wait another hour or two. 
    ~ unaisah_2_trash = "leave"
    I’ll show him!

- -> unaisah_2_3 

=== unaisah_2_3 ===
#knot:unaisah_2_3
#ui:whatsapp
#background:whatsapp.png
#chat_group_title:Marie de Costa
#chat_group_image:ico_unaisah_marie.jpg
#speaker_1_name:Marie
#timestamp:21.34
Hey Marie, just wanted to get something off my chest, maybe know what you think. #speaker_self
Hey hey! What’s up #speaker_1
My RO did my work appraisal today, and it’s good. #speaker_self
But she also said one thing. #speaker_self
She asked me to see if I could use my former contacts to set up internships and stuff for the students. #speaker_self
I mean, you of all people know. I can’t bring myself to do that. #speaker_self
But this could also be my chance to prove myself. Do something the other teachers can’t. You know? #speaker_self
Why would your RO even ask that if she knows what happened? #speaker_1
{unaisah_1_teachingreason == "harassment": 
    -> unaisah_2_3a

- else:
    -> unaisah_2_3b
}

= unaisah_2_3a
+ [Maybe she forgot] I have, but it was a long time ago, maybe she forgot. #speaker_self
+ [I told my colleagues] I  def told my colleageus and I think I mentioned it to her too. #speaker_self
- Look, if it’s important enough, just remind her. And find other ways to prove yourself. #speaker_1
You could send some interns to me! HAHAHA #speaker_1
HAHA Marie!! #speaker_self
I’m not a food & nutrition teacher ya. My students are not going to get an A for their essays by learning how to do latte art. #speaker_self
Life skills yo! Dealing with real people and all. #speaker_1
-> unaisah_2_3c


= unaisah_2_3b
Marie... I haven't told anyone. #speaker_self
HUH #speaker_1
People can be judgemental #
And they always remember first impressions #
I didn’t want to start off on the wrong foot. It took me so long to find another job, I couldn’t risk it… #
Ok but hello that was months ago! #speaker_1
You’ve not had the chance to tell anyone in all this time? But we agreed that this was something that we should not be ashamed about. #speaker_1
    + [It got harder as time passed] I dunno, I thought it would get easier, but it actually got harder to tell them as time went by. #speaker_self
    Because things went so smoothly, it just never came up, and I was afraid that if I brought it up for no reason, it would affect things #speaker_self
    This is why so few women speak up about these things, and this is why we agreed to #speaker_1
    
    + [My mother-in-law’s reaction scared me] Yah, but remember how my mother-in-law reacted?? #speaker_self
    Oh #speaker_1
    Every time I thought about telling them… #speaker_self
    Her words would ring in my head. Shameful. Better not tell anyone. #speaker_self
    As if it was somehow my fault!! #speaker_self
    Sorry… I didn’t mean to dredge that up. #speaker_1

- I really tried to Marie, I just couldn’t do it. #speaker_self
No no. It’s your choice, after all. #speaker_1
I’m sorry for pressuring you to do something before you’re even ready. #speaker_1
I’m sorry too. I should just have been upfront about this from the start. #speaker_self
So... what are you gonna do about the internships then? #speaker_1
UGHHH #speaker_self
I don’t know… 😭  #speaker_self
    
-> unaisah_2_3c

=== unaisah_2_3c ===
#knot:unaisah_2_3c
#ui:notification
#background:ui_unaisah_message.jpg
WEIWEN MOTHER: Hi Mdm Unaisah, sorry to bother you. # message

#ui:whatsapp
#background:whatsapp.png
#chat_group_title:CLASS 3A PARENTS
#chat_group_image:profile_blank.png
#speaker_1_name:Weiwen Mother
#timestamp:21.52
Hi Mdm Unaisah, sorry to bother you. Is there a consent form for this Friday’s event? ##speaker_1
Alamak! I got so worked up with my own issues I forgot to send this out. #wa_inner_monologue
Hi parents, here is the link to the consent form for this Friday’s event. Kindly fill it up tomorrow. Thank you! #speaker_self

-> unaisah_2_4    
    
=== unaisah_2_4 ===
#knot:unaisah_2_2
#ui:narrator
#background:bg_unaisah_CH2_LivingRoom_Night_wFood.png
Finally, at 8.27pm, Bash is home. Blissfully ignorant of his sloppiness. By choice. 
#ui:scene
#background:bg_unaisah_CH2_LivingRoom_Night_wFood.png
#speaker_left_name:Basheer
#speaker_left_image:cha_Unaisah_Basheer_Neutral_HomeWear.png
How did my favourite teacher’s day go? I bought us Thai green curry from the better stall near my office. Good thing I got there on time because they closed the kitchen after my order. #speaker_left
Hey. You look angry. Is everything ok? #speaker_left
sigh... #speaker_self
#speaker_left_image:cha_Unaisah_Basheer_Defeated_HomeWear.png
Alright. What did I do wrong this time? #speaker_left

{unaisah_2_smell == "ignore": 
    I just have a lot on my mind. #speaker_self
    Phew, so it’s not me. Work? #speaker_left
    Work, students, everything. #speaker_self
    What happened? #speaker_left
    It’s just everything. It’s okay, I’ll manage. #speaker_self
    You’re still okay with my parents coming over this weekend, right? #speaker_left
    Do I have a choice? I’ll be fine. Thanks for getting dinner. #speaker_self
    -> unaisah_2_5

- else:
    -> unaisah_2_4a
}

= unaisah_2_4a

{unaisah_2_trash == "throw": 
    -> unaisah_2_4b
- else:
    -> unaisah_2_4c
}

= unaisah_2_4b
I just have a lot on my mind. #speaker_self
Phew. So it’s not me. Work? #speaker_left
Work, students, everything. #speaker_self
By the way, I emptied the bin for you. Next time, if you know we’re not cooking for a few days, can you please empty it, instead of letting it rot and attract cockroaches. #speaker_self
#speaker_left_image:cha_Unaisah_Basheer_Defeated_HomeWear.png
Were there cockroaches? #speaker_left

+ [That’s not the point]  No. #speaker_self
    Then it’s fine, either of us can do it, alright? #speaker_left
    Either of us can, but somehow that means it’s always me. #speaker_self
    Not always! #speaker_left

+ [You need to be more responsible] How am I supposed to seriously consider having a kid when I have to be responsible for most things? #speaker_self
    #speaker_left_image:cha_Unaisah_Basheer_Frustrated_HomeWear.png
    Look, Unni. It’s not like I don’t have my own problems. I do, and yet I bring dinner home and try to tell you something funny the moment I come in the door. And this is what I get. #speaker_left


- That’s not what I meant. Look...let’s both do better. We can make sure everything goes smoothly when your parents come over this weekend. #speaker_self
#speaker_left_image:cha_Unaisah_Basheer_Neutral_HomeWear.png
You’re still on for that? #speaker_left
We’ll be fine. Thanks for getting dinner. #speaker_self

-> unaisah_2_5

= unaisah_2_4c
Can you please empty the bin. #speaker_self
What? #speaker_left
Empty the bin. The food has been rotting there for two days. #speaker_self
You were home two hours earlier, alright? You could’ve done it. #speaker_left
I always do it. You were the last one who cooked. #speaker_self
#speaker_left_image:cha_Unaisah_Basheer_Frustrated_HomeWear.png
Yes I cooked, isn’t that enough? And what about all the times I did clear the bin? #speaker_left

    + [That’s not the point] That’s not the point! Don’t take credit for something you’re supposed to do! #speaker_self
    Then I can’t take credit for anything? #speaker_left
    This isn't about credit, it is about taking responsibility for the things we say we will do. #speaker_self
    Fine, I’ll clear it. A bin is such a small thing. Why make it into something big? Are you stressed out from work? #speaker_left
    Don’t make this about me! Don’t blame my problems. This is about you not doing your bit. Not enough, anyway. #speaker_self
    #speaker_left_image:cha_Unaisah_Basheer_Frustrated_HomeWear.png
    I’ll do better, alright? #speaker_left
    Thanks. #speaker_self
    
    + [I have a lot on my mind] I just need you to be more responsible. I have a lot on my mind. #speaker_self
    It’s not like I don’t have my own problems. I do, and yet I bring dinner home and try to tell you something funny the moment I come in the door. And this is what I get. #speaker_left
    Look, I want to hear your problems too. I just want to be able to come home and focus on what I need to do, instead of being greeted by a disgusting bin. #speaker_self
    I guess my problems will have to wait then, since your main concern is the bin. #speaker_left

- Enough about that. Look. Let’s both do better. We can make sure everything goes smoothly when your parents come over this weekend. #speaker_self
#speaker_left_image:cha_Unaisah_Basheer_Neutral_HomeWear.png
You’re still on for that? #speaker_left
Do I have a choice? I’ll be fine. Thanks for getting dinner. #speaker_self

-> unaisah_2_5


= unaisah_2_5
#knot:unaisah_2_5
#ui:narrator
#background:bg_unaisah_CH2_Bedroom_Night.png
We ate while bantering uneasily about the food, about our colleagues. Superficial things to avoid the real problem between us... 
{unaisah_2_trash =="leave": 
When we were done, Basheer emptied the trash immediately, no further reminder needed. When he glanced at me, I forced a smile.
}
That night, as he lay snoring next to me, I found the space to cry.
I’m fed-up with this cycle we’re in: Skirting round the topic of his mum, pretending small amendments and accommodations would resolve things.
The hardest part of a relationship is not about apologising, or compromising - It’s about hashing out difficult truths that we often don’t want to hear.  
And frankly, Basheer and I still can’t have an honest conversation about children.  Because we can’t have an honest conversation about his mum. 
Sometimes I feel like we’re kids ourselves when it comes to this issue. Imagine if we were to really raise kids. The irony.  


// minigame
#knot:unaisah_2_minigame
#ui:mcq
#game_id:15
Minigame 15 // must add some text


-> unaisah_2_6


=== unaisah_2_6 ===
#knot:unaisah_2_6
#ui:narrator
{unaisah_1_cca == "malaydance":
    #background:bg_unaisah_CH2_MalayDanceCCARoom.png
    The next afternoon, after CCA
    - else:
    #background:bg_unaisah_CH2_RoboticsCCARoom.png
    The next afternoon, after CCA
}

#ui:scene
#speaker_right_image:cha_unaisah_chitra.png
#speaker_right_name:Chitra
Okay students, that’s it for this week. Go home quickly! It looks like it’s going to rain soon. #speaker_self
Madam Unaisah..? Do you have a moment to talk? #speaker_right
Of course! How are things with you? #speaker_self
All good, ma’am. Struggling with Maths, but my ma signed me up for extra tuition and it’s improving… #speaker_right
That’s good. Keep at it, it will get easier. #speaker_self
You seem... upset though? #speaker_self
Actually, ma’am, it’s not me… #speaker_right
Can you promise not to tell anyone? #speaker_right
Chitra, I... I want you to be able to have full trust in me. #speaker_self
But in order to do that, I have to tell you, depending what the situation is, there are circumstances - like if someone is in danger - where I’d have to report it. #speaker_self
Oh… #speaker_right
But I won’t tell anyone more than who needs to know. I can promise you that. #speaker_self
Whatever it is though, let me help you? #speaker_self
But what if.. this thing… what if it gets my friend in trouble? Her parents are already mad because her grades have been dropping and-- #speaker_right
If a friend is in trouble--and this sounds quite serious--getting them in trouble with their parents may be a lesser evil than whatever is going on. #speaker_self
And if her parents do have to know about it, I will be there to mediate the conversation okay? #speaker_self
Okay… #speaker_right
It’s about Wan Ling actually. #speaker_right
Oh, Wan Ling. Yes, she’s been absent… A fever, I heard. Is she doing ok? #speaker_self
That’s the thing. She’s not sick. #speaker_right
She called the school using her mum’s phone. I don’t know how, but I guess it was convincing enough. Maybe I should take up drama too, heh. #speaker_right
Sorry, sorry, just joking. #speaker_right
+ [Thank her for sharing this] Well, thanks for telling me this Chitra, it must not have been easy. I'll handle this issue delicately. #speaker_self
    Wait, I’m not done. #speaker_right
    It’s not her fault. Really! #speaker_right
+ [Probe further] Thank you Chitra. It sounds like there's more though.
    
- She doesn’t want to go to school because there’s… a guy. He keeps bothering her. #speaker_right
Oh dear. #speaker_self
She hasn’t reported it because… well, it’s not, like, mean, or anything. #speaker_right
It’s hard to explain… He thinks he’s being nice. Like, always offering to carry her things or buying her snacks. #speaker_right
He texts her. Like, all the time.. Sending her these cheesy mandopop songs he says make him think of hers, or asking her out after school. #speaker_right
And Wan Ling ALWAYS replies. I keep telling her not to, but she says she feels bad if she doesn’t reply. So she just makes excuses about being busy. Or her parents want her home. #speaker_right
I get it. It’s not malicious. But definitely unwanted. #speaker_self
Exactly! So that’s why she’s been absent. She’s avoiding him. #speaker_right
And he’s always there! Like, he’s found out all her breaks and he’ll wait for her between classes. Even after CCA – he’s always waiting for her... trying to, like, play with her hair, or he’s poking her, all the excuses to touch her. #speaker_right
I think it’s kind of creepy, actually. #speaker_right
It’s definitely creepy. #speaker_self
Maybe he thinks Wan Ling is playing hard to get, but I know her. She’s scared to hurt his feelings so she doesn’t tell him outright that she doesn’t like him. #speaker_right
Because one time she tried to turn him down by saying he should find someone who really clicks with him, but he went into this rant – like, how much of a filial and loyal guy he is and how he knows so many guys who are dicks and that he’ll never treat her like that. #speaker_right
He talks like he knows her, but he can’t even read her and everything is just fantasy. #speaker_right
He really takes it like some drama series where he’s the good guy who wins the girl after persisting. As if she’s an exam he eventually passes after studying hard. Or a doll. #speaker_right
(Rolls eyes) I mean, like, dudeeee. If she doesn’t like you now, she will never like you. Just deal with it. #speaker_right
Anyway, sorry for unloading. #speaker_right
No no, don’t apologise. I’m here to listen. I can’t imagine the stress you and Wan Ling have been under. #speaker_self
Yah. And I couldn’t tell anyone either. Because he’s not doing anything wrong. #speaker_right
+ [Why do you think this is not wrong?] Why do you think this isn't harassment?

+ [This is a type of harassment] Just because he doesn't intend to hurt Wan Ling, doesn’t mean he’s not. Often, especially this kind of harassment, people don’t realise what they’re doing is wrong. #speaker_self
- But isn’t harassment, like, when you attack someone? #speaker_right
Yes, that is a form of harassment, but there are other forms of it too. It can be subtle, especially when you’re not looking for it. #speaker_self
If Wan Ling’s not at school, and her parents don’t know she’s been skipping, where is Wan Ling? #speaker_right
.... #speaker_right
I just want to make sure she’s safe. If something happens while she’s roaming around with no supervision… #speaker_self
Okay, okay, she usually just hangs out at the playground two blocks away. #speaker_right

+ [Probe further for the guy's name] And one more thing, who is this guy? #speaker_right
    …. #speaker_right
    You’re scared to tell me. #speaker_self
    I feel bad too even though we all can’t stand him. #speaker_right
+ [Leave it at this] Okay. #speaker_self
- Listen, I’m going to have to report this to the Vice Principal. I will do my best to not mention you or Wan Ling. Again, no promises, because Wan Ling did skip school, but I will at least explain the circumstances and that she felt unsafe. #speaker_self
Hopefully, we can talk to this person, get him to understand, maybe have a discussion about boundaries, and, with luck, we can settle this quietly. #speaker_self
But there’s not much I can do if I don’t know who we’re dealing with. #speaker_self
Okay… #speaker_right
Thank you, Chitra, for trusting me. #speaker_self



-> unaisah_2_7


=== unaisah_2_7 ===
#knot:unaisah_2_7
#ui:narrator
#background:bg_unaisah_CH2_Bedroom_Night.png
That weekend...
I couldn't stop thinking about the parent-teacher meeting. It was really hard, but maybe I made a difference?
Am I ready to have my own children? It's such a huge responsibility to raise them right. 
+ [I'm not ready to become a parent] I’m so disturbed by the whole thing. The world can be so cruel, and so unsafe for young people.
    VAR unaisah_2_feeling = ""
    ~ unaisah_2_feeling = "discouraged"
    Maybe parenthood blinds people to things they don’t wish to see in their kids – because it reminds them of their own lesser traits. Or maybe it surfaces their own trauma in childhood, when they felt small and humiliated, and so everyone else becomes an enemy. 
    Maybe Allah’s plan is for me to ease the suffering of others, rather than to bring one more child into the world to suffer.
    Will I end up like that, too? Devolving into my worst attributes and shedding the good? And what if Bash regrets it?
    We’re happy where we are. The greatest tragedy is to lose something good in a gamble. The risk is too great. 
    I don’t want a child. 

+ [I think I could raise my child well] I’m exhausted, but I’m glad we managed to sort things out in the end.
    ~ unaisah_2_feeling = "hopeful"
    In the past week I’ve seen both the worst, as well as the best in my students - and their parents.
    Young people may be misguided sometimes, but they are still full of promise with the right care and support.
    It’s hard to believe it myself, but the hard knocks from teaching have prepared me for parenthood. 
- What a difficult week it has been.

#ui:scene
#background:bg_unaisah_CH2_Bedroom_Night.png
#speaker_left_name:Basheer
#speaker_left_image:cha_Unaisah_Basheer_Neutral_HomeWear.png
You look like you've had a rough week. #speaker_left
You read my mind #speaker_self
Do you want to talk about it? #speaker_left
+ [Yes] Yeah, and it's a long story.  #speaker_self
    It's ok, I'm plenty comfortable. Why don't you start at the start?  #speaker_left
    #ui:narrator    
    #background:bg_unaisah_CH2_Bedroom_Night.png
    I explained everything that had happened at school that week to him.
+ [Let's talk in the living room] Yeah. But it’s a long story.  #speaker_self
    Let’s go to the living room. I’ll make tea. #speaker_self
    #ui:narrator    
    #background:bg_unaisah_CH1_LivingRoom_Night.png
    I explained everything that had happened at school that week to him.
- 
#ui:scene
#speaker_left_image:cha_Unaisah_Basheer_Concerned_HomeWear.png
So what happened to the girl, in the end? #speaker_left
Well, we had to tell Wan Ling’s parents and, needless to say, they were furious. #speaker_self
At the boy? #speaker_left
At everyone. At the boy, at the school, at their daughter. #speaker_self
They even blamed Chitra for not reporting it sooner. #speaker_self
Poor kid, caught in the crossfires. #speaker_left
And the boy who was harassing her, Joseph, his parents... It’s even worse. #speaker_self
Oh no. #speaker_left
We were hoping that we could just talk to him calmly. Get him to understand why he was making her uncomfortable. #speaker_self
And he might’ve too, if his parents didn't barge in. #speaker_self
Barge in? #speaker_left
+ [The father was being unreasonable]
+ [It was so hard to get through to them]
- It was mostly the father. The boy was at the counsellor’s office, they were having a talk about boundaries. When we explained the situation to his parents, the father went ballistic. #speaker_self
“How dare you accuse my son?” #speaker_self
“He want to help the girl carry her bag, you say harassment?” #speaker_self
“You talk as if he beat her up or what.” #speaker_self
That kind of thing. They didn’t get it. #speaker_self
That’s awful. #speaker_left
Yeah. There’s a saying amongst the teachers, that to make sense of why a child is the way they are, you just have to see their parents. #speaker_self
I’m worried for Joseph. I hope he’s learnt his lesson, but having a father like that doesn’t do him any favours. #speaker_self
No kidding. #speaker_left

{unaisah_2_feeling == "discouraged":
    -> unaisah_2_7a
    - else:
    -> unaisah_2_7b
}   

= unaisah_2_7a
Scary isn’t it? No one wants to be a bad parent but we all have our = blindspots, emotional triggers, bad coping mechanisms… things we may not even be aware of. #speaker_self
...This isn’t just about Joseph and his father, isn’t it? #speaker_left
Before, when we would talk about having children, I wasn’t absolutely sure where I stood. #speaker_self
I know. #speaker_left
Is that why you put off the conversation and stayed passive when your mother kept pressuring me? #speaker_self
Deep down, I agreed with her too. Not the stuff about women’s duty, or the relatives’ gossip. #speaker_left
But about having children, yes. #speaker_left
I was hoping that, with some time, you’d come around to starting a family. Especially since you started teaching and working with kids. #speaker_left

+ [Discuss the issue directly] What does raising a child mean to you, Bash? What is your idea of parenthood? #speaker_self
    Unni, I know you have your fears about about the impact on your career. But you’re tough as nails. And you should trust yourself like I trust you. #speaker_left
    It’s not even about my career. It’s about raising a child well. There are so many complexities, and even if we have good intentions, we might end up failing our kids. #speaker_self
    We won’t. You’ve always had your head on your shoulders. And a clear sense of morals– you stood up to your ex-boss when most people would have kept quiet. #speaker_left
    Parenting is a big challenge, but it’s the kind of challenge that helps us grow as people. And that itself is worth it. #speaker_left
    But children are sponges. They absorb everything, whether it’s meant for them or not. The weight of that responsibility, to have that much influence on young and innocent beings, I can’t handle that. #speaker_self

+ [Respond indirectly] I do love teaching. And I love my students. #speaker_self
    Chelam, you know that’s not what I meant. #speaker_left
    You know my mother was a nurse, right? Before she had my sister and me. She was a great one too. But she gave it up to focus on raising us. #speaker_self
    She says she wouldn’t have had it any other way. We were her pride and joy. But she also said a woman’s true fulfillment comes when she takes on motherhood – it’s more fulfilling than any career. #speaker_self
    Don’t get me wrong, I loved having her around growing up. I can’t imagine what it would have been like if she was away at work instead of home with me. Would I have felt sidelined by her patients? Maybe. #speaker_self
    I don’t get it. What does this have to do with your mother? #speaker_left
    By giving up her own goals to raise us, she inadvertently taught us that the needs of others are more important than your own. And even though I know better now, I hear her words and second-guess all my career decisions. #speaker_self
    Then, when this whole thing at school happened and I saw how the parents reacted, I don’t agree with it, but if I were in their shoes… I don’t think I would have reacted differently either. #speaker_self

- I’m sorry, Basheer. I don’t want to have children. And if this changes how you feel about me, about us, I won’t hold it against you. #speaker_self
#speaker_left_image:cha_Unaisah_Basheer_Defeated_HomeWear.png
Oh no. That look on his face. He’s crushed. #inner_monologue
He’s putting on his ‘brave’ front now. #inner_monologue
VAR unaisah_2_baby = ""
~ unaisah_2_baby = "no"
VAR chapter_2_ending = 0
~ chapter_2_ending = 1
Chelam, even before we were married, we did have conversations about children. Do you remember? #speaker_left
I remember, but at that point, we just decided not now. #speaker_self
Possibly not ever. But also possibly in a few year’s time… #speaker_self
But now, it’s definitely not. And I’m so sorry, and I- #speaker_self
Let me finish. #speaker_left
Yes, and we said that we weren’t ready. But we also said we would love each other and stay together no matter what we decide on. #speaker_left
I meant it then and I mean it now, alright? #speaker_left
Plus, even while I was hopeful, it’s not like I was completely blind to this possibility. I’m just happy to be with you regardless. #speaker_left
But you want children, right? #speaker_self
Yes, but I don’t want to raise a child you don’t want. #speaker_left
#speaker_left_image:cha_Unaisah_Basheer_Concerned_HomeWear.png
I don’t want you to end up resenting me for, or maybe even our child, for what you’ll end up sacrificing. #speaker_left
That’s no environment to raise a child in. #speaker_left

-> unaisah_2_reflection


= unaisah_2_7b
I hope that if we become parents, we’d be more understanding. #speaker_self
... #speaker_left
~ unaisah_2_baby = "yes"
~ chapter_2_ending = 2
We really need to talk about that, don’t we? #speaker_left
Tell me something first though… In the years I’ve known you, not once have you shied away from something challenging. This is a big conversation, I get that, but why were you so hesitant to have it? #speaker_self
When you quit your job at Brown & Grey, I had this feeling that you were leaning towards “no” much more than you let on. #speaker_left
You’re not wrong. What happened to me there, it shook me up pretty bad. Whenever I thought about bringing a child into this world, someone so pure and innocent, while also knowing all the evil that exists out there, I couldn’t bear it. #speaker_self
#speaker_left_image:cha_Unaisah_Basheer_Neutral_HomeWear.png
So... does this... this means...so we agree? We’re having children? #speaker_left

    + [Yes] You really think we can do it? #speaker_self
    If anyone can make it work, it’s us. #speaker_left
    Okay then. Let’s do it. Let’s have children. #speaker_self
    #speaker_left_image:cha_Unaisah_Basheer_Laughing_HomeWear.png
    Really? #speaker_left
    Yeah. Really. #speaker_self
    Okay! #speaker_left
    Wow. #speaker_left
    I can’t believe we’re really doing this. #speaker_self
    Me neither. #speaker_left
    
    
    + [There's one more thing...] Hold on. There’s still one more thing. #speaker_self
    You know my Amma was a nurse, before she had my sister? #speaker_self
    I vaguely remember you telling me this. What does this have to do with having children? #speaker_left
    She was a great nurse. But she gave it up to focus on raising us. She said she wouldn’t have had it any other way. We were her pride and joy. #speaker_self
    And I’m so glad that she did. I can’t imagine what it would have been like if I had to grow up sharing Amma’s time with thousands of other patients. #speaker_self
    But I don’t think I can make the same sacrifice. I do want children, but I don’t think I can give up working for it. I love teaching. I love my students. I love having independence. #speaker_self
    You don’t have to quit your job. Plenty of mums continue working. After your maternity leave ends, we can keep the baby with either of our parents during the day. They’d be more than happy for the company. #speaker_left
    Plus, they’ve been nagging us all along, I’m sure they’d be more than happy to get more time with the baby. #speaker_left
    I know that but… I think part of why Amma raised us so well is because she was able to devote her full time and attention to it. I don’t want to raise a child with half a heart. #speaker_self
    You won’t be. #speaker_left
    Listen, that’s how your mother decided to raised you. Did it work out well? Yes. But it doesn't mean it’s the only way. #speaker_left
    It seems like a lot to juggle. I mean, raising a child while also taking care of 20 others during the day… #speaker_self
    If anyone can make it work, it’s us. #speaker_left
    Okay. #speaker_self
    Okay? #speaker_left
    Yeah. Okay. #speaker_self
    #speaker_left_image:cha_Unaisah_Basheer_Laughing_HomeWear.png 
    Okay!!! #speaker_left
    Wow. #speaker_left
    I can’t believe we’re really doing this. #speaker_self
    Me too. #speaker_left
   
- I love you so much. I am the happiest guy alive right now, seriously. #speaker_left


-> unaisah_2_reflection

=== unaisah_2_reflection ===
#knot:unaisah_1_reflection
#ui:chapter_reflection
#reflection_id:15
Reflection 15  // change this to 15 and add reflection.json


 

-> unaisah_3_intro


// CHAPTER 3




=== unaisah_3_intro ===
#knot:unaisah_3_intro
#ui:narrator
#background:bg_unaisah_intro.jpg
The years really fly by. Wasn’t it only yesterday when I first joined teaching? I can’t believe it but I’m now on the wrong side of 30.
Funny how which side you’re on frames whether the world is your oyster or you’re facing the view downhill.

~ chapter_id = 3
#background:black.jpg
CHAPTER {chapter_id} #title
Labour of love #title

{chapter_2_ending == 1: 
    -> unaisah_3a_intro 
    - else: 
    // PLAYER CHOSE TO HAVE BABY BUT STORY NOT DONE. USING WITHOUT BABY STORY FOR TESTING
    -> unaisah_3b_intro     // change this later 
    }


// CHAPTER 3 WITHOUT BABY

=== unaisah_3a_intro ===
#knot:unaisah_3a_intro
#ui:narrator
#background:bg_unaisah_intro.jpg
What my supervisor Hwee Ling said was right. Because of my previous work experience, I was promoted relatively quickly as a teacher.
I was very encouraged, and worked hard to justify my promotion.
I even took the huge decision with Basheer not to have children, and focus on my work and my happiness.
It wasn’t easy, and the decision made things very difficult with my in-laws.
But now it’s been another four years, and I’m not really moving anywhere.
Did I make a mistake? What can I still do to make my sacrifices worth it? 

-> unaisah_3a_1

=== unaisah_3a_1 ===
#knot:unaisah_3a_1
#ui:narrator
#background:bg_unaisah_CH4A_InterviewBoardroom.png
Four years later. 
#ui:scene
#speaker_left_name:Hwee Ling
#speaker_left_image:cha_unaisah_hweeling_neutral.png 
...and that’s it. Thank you, Unaisah. #speaker_left
Thanks. Hwee Ling... #speaker_self
Yes? Is anything the matter? #speaker_left
+ [I would like to talk about my next promotion.]  See...I’ve been Subject Head for a few years now, and I want to know what the next step is.  #speaker_self
    VAR unaisah_3a_promotion = true
    ~ unaisah_3a_promotion = true
   I know I’ve been contributing above my grade. What’s holding me back? #speaker_self
   #speaker_left_image:cha_unaisah_hweeling_concerned.png
    Unaisah. I want to be realistic with you. You’ve done well, but there also aren’t many key appointments available now. #speaker_left
    #speaker_left_image:cha_unaisah_hweeling_grinning.png
    Look at me, I’ve been here longer than you have, and I’m still doing the same thing. We can still grow in different ways. #speaker_left
    I still want to give myself a chance in a bigger role. #speaker_self
    #speaker_left_image:cha_unaisah_hweeling_concerned.png
    Historically, things like this move more slowly in JCs. If you’re really keen on the leadership track, you might want to consider transferring to a Secondary school. There may be more opportunities for you to move up there. #speaker_left
    Oh. I hadn’t thought about that. #speaker_self
    It’s worth considering. There’s a lot more movement there. Bigger pond, that kind of thing. #speaker_left
    We’d hate to lose you, but it’s also important you feel fulfilled. #speaker_left
    ... #speaker_self
    I need some time to think about this. #speaker_self

+ [I think we covered everything.] Nothing. Nothing, just remembering something for the next class. #speaker_self
    ~ unaisah_3a_promotion = false
    I can’t believe this. Is that really it? #inner_monologue
- Alrighty. Have a good weekend. #speaker_left
#speaker_left_image:cha_unaisah_hweeling_grinning.png
You too. #speaker_self

-> unaisah_3a_2

=== unaisah_3a_2 ===
#knot:unaisah_3a_2
#ui:narrator
#background:bg_unaisah_CH4A_SchoolFoyer.png
At the school main foyer.
#ui:scene
#background:bg_unaisah_CH4A_SchoolFoyer.png
#speaker_right_name:Veronica
#speaker_right_image:cha_unaisah_veronica_neutral.png 
What’s Veronica doing with that student? Is she giving her students lifts home now? #inner_monologue
Hi Unaisah! Going back? #speaker_right
Yup! #speaker_self
+ [Ask about the student] Giving your student a lift back? #speaker_self
    Oh haha! You don’t know? #speaker_right
    #speaker_right_image:cha_unaisah_veronica_laughing.png 
    ??? #speaker_self
    This is my SON, Jervius. #speaker_right
    He’s studying here? #speaker_self
    ...You’re studying here! #speaker_self
    Yes, just started. It’s not uncommon. But we stay out of each other’s way. This one, normally he wants me to pick him up outside the school gate. Doesn’t want his friends to see. Even though they know. #speaker_right
    #speaker_left_name:Jervius
    #speaker_left_image:cha_unaisah_Jervius.png 
    Ma..! #speaker_left
    #speaker_right_image:cha_unaisah_veronica_neutral.png 
    Okay okay you better stop, you’re embarrassing him. #speaker_self
    Hey I forgot, you have kids also? How old? #speaker_right
    I...don’t. #speaker_self
    #speaker_right_image:cha_unaisah_veronica_concerned.png 
    Ah. It’s just that you’re so good with the students, I thought… #speaker_right
    #speaker_right_image:cha_unaisah_veronica_neutral.png 
    Well, I got to run! See you! #speaker_right

+ [Don't be kaypoh (nosey)] 

- Have a good weekend!	#speaker_self

-> unaisah_3a_3

=== unaisah_3a_3 ===
#knot:unaisah_3a_3
#ui:narrator
#background:bg_unaisah_CH4A_Restaurant.png
Later that evening, at a restaurant.
#ui:scene
#background:bg_unaisah_CH4A_Restaurant.png
#speaker_left_name:Jessica
#speaker_left_image:cha_unaisah_Jessica.png
#speaker_right_name:Marie
#speaker_right_image:cha_unaisah_Marie_Happy.png
Wow it feels so good to be out. #speaker_self
I KNOW! It’s been so long. We need to do this more often. #speaker_right
Easy to say. How many times have I asked you already? #speaker_self
Haven’t you heard? Adulthood is where two people keep telling each other “hey let’s meet up” until they die. Funny right? I saw it in a meme. #speaker_right
Yah, because some big boss is so busy with her café right. #speaker_self
And big boss is big enough to boss other people to look after her café! Even on a Friday night. That’s why I can meet you! This is called hashtag made it. #speaker_right
So what is it you do again, Unaisah? #speaker_left
I’m a teacher. #speaker_self
Cool! My mum’s a teacher. #speaker_left
#speaker_right_image:cha_unaisah_Marie_Cheeky.png
Hey don’t talk so much, let’s order first yah? #speaker_right
Hey...do you mind if I get a beer? Would you be okay with that? #speaker_left
Sure. #speaker_self
Eh Jess, this one no need to ask one. She’s alright with a lot of things. I know. No pork no lard, can already. Otherwise why would I suggest this place? #speaker_right
Oh I just thought, you know, with the, [pointing] you know, I thought you were more...the staunch kind. #speaker_left
+ [With the what?] With the what? #speaker_self
    You know, your head thing. #speaker_left
    My head thing? #speaker_self
    #speaker_right_image:cha_unaisah_Marie_Happy.png
    Eh Jess you failed your Social Studies ah? Tudung lah bodoh (fool). #speaker_right
    I know I know I just forgot the word temporarily, can? #speaker_left
    Tudung is Malay, Hijab is Arabic. I’m Indian, I don’t speak Malay, to me this is a hijab. I wear a hijab, I’m a hijabi. #speaker_self
    #speaker_right_image:cha_unaisah_Marie_Concerned.png
    It just means I wear a hijab. It doesn’t mean I’m a threat, or I’m unnecessarily difficult, or whatever other assumptions people have. #speaker_self
    I didn’t say— #speaker_left
    I know you didn’t, but many other people have seen it that way, so I’m just tired of this kind of talk. #speaker_self
    I guess I’ve never thought of it like that before... Sorry... #speaker_left
    No harm done.  #speaker_self

+ [Let it go] Oh I'm not. Wearing a hijab is important to me, but we’re all entitled to our own interpretations of our faith. #speaker_self
    Ah okay. As long as you’re fine. #speaker_left
- So what’s been up with you, Unaisah? #speaker_right
#speaker_right_image:cha_unaisah_Marie_Neutral.png
You know, it’s funny we’re meeting today. I have some things to vent. #speaker_self
So I did my work appraisal again this afternoon, and it looks like things aren’t really moving. #speaker_self
{ unaisah_3a_promotion == true:
    Basically if I want to progress further, I need to transfer to a secondary school. #speaker_self
    Huh? Why? #speaker_right
    #speaker_right_image:cha_unaisah_Marie_Concerned.png
    Not enough lobang (vacancies) where I am. Small pond. It’s very frustrating. I know I can do much more at a higher level. #speaker_self
    So what do you have to do? #speaker_right
    My boss said I could consider switching to a secondary school. More room to move up there. #speaker_self
    Will you? #speaker_left
    I don’t know. I worked very hard at my current school, and it isn’t just teaching and admin. It’s also building relationships. I don’t want to burn all that. #speaker_self
    I just feel so stuck and confused now... #speaker_self
- else: 
    It’s been seven years. Three since my only promotion. And we didn’t discuss anything about progressing further. #speaker_self
    #speaker_right_image:cha_unaisah_Marie_Concerned.png
    Huh? Why? #speaker_right
    I don’t know. It could be many things. It’s very frustrating. #speaker_self
    Did you offend anyone? #speaker_right
    #speaker_right_image:cha_unaisah_Marie_Annoyed.png
    Offend? Hello, normally it’s other people who offend me. #speaker_self
    Eh eh eh chill... #speaker_right
    #speaker_right_image:cha_unaisah_Marie_Concerned.png
    Do you have any, like, enemies? #speaker_left
    Not that I know of. School simply isn’t that kind of place. I don’t know. I just feel confused and stuck. #speaker_self
}

Don’t be impatient, it could still happen. Hasn’t your supervisor been telling you all along that your improvements always surpass her expectations? That must mean you’re above average. #speaker_right
Yes, AND I came in with experience. And I’ve been using that experience. I’ve taught students AND trained my colleagues. Set things up with other schools. And so on. #speaker_self
I mean, if I never left the private sector...by now... #speaker_self
Oh yah, okay I know what you mean. #speaker_right
#speaker_right_image:cha_unaisah_Marie_Cheeky.png
Jess—she’s the one from my previous company. That one. #speaker_right
I didn’t know! Unaisah, I admire what you and Marie did. #speaker_left
Marie, you told her? #speaker_self
I tell everyone! That’s the whole point! #speaker_right
Do you have a poster in your café announcing it? #speaker_self
#speaker_right_image:cha_unaisah_Marie_Neutral.png
Unaisah, you were the public communications manager there, right? #speaker_left
Yes, look—I’ve put that behind me. #speaker_self
No wait. Have you thought about going back into that line? #speaker_left
Me? At this stage? No no no. When you’re out of the industry that long, it’s hard to go back. Also, I do like my school. #speaker_self
She’s got a point, you know. #speaker_right
If you think you’re stuck, maybe the way up—is OUT. #speaker_right
#speaker_right_image:cha_unaisah_Marie_Concerned.png
A good friend of mine, her company is hiring. They’re looking for someone who can do media relations and public education. I can pass you her contact. #speaker_left
This is all very sudden. #speaker_self
Look, just think about it? You’re not too old to start over, and this isn’t even starting over. Also you said you’re not going to have kids right? Make it count! #speaker_right



-> unaisah_3a_4

=== unaisah_3a_4 ===
#knot:unaisah_3a_4
#ui:narrator
#background:bg_unaisah_CH4B_LivingRoom_Night_Messy.png 
Back at home that night...
#ui:scene
#background:bg_unaisah_CH4B_LivingRoom_Night_Messy.png 
#speaker_left_name:Basheer
#speaker_left_image:cha_Unaisah_Basheer_Neutral_HomeWear.png
You’re back! Had fun? #speaker_left
Yeah, I haven’t seen Marie in ages. Also met one of her old school friends, Jessica. #speaker_self
+ [Thank you for vacuuming...] ...hey thanks for vacuuming. #speaker_self
    The floor felt dusty. I think I’m getting old also, hair all falling out. #speaker_left
    #speaker_left_image:cha_Unaisah_Basheer_Laughing_HomeWear.png 
    Please. How much hair do you even have to drop in the first place? I'm sure most of it is mine. #speaker_self
    Oy! Way to make me feel self-conscious about my hair… Or rather, lack thereof. #speaker_left
    It’s okay, I love you with or without hair. #speaker_self
    Glad we cleared that up. #speaker_left
    You know what I love more, though? #speaker_self
    How can you love anything more than me? #speaker_left
    I love walking on a clean floor after a long day. Thank you dear. #speaker_self
    #speaker_left_image:cha_Unaisah_Basheer_Concerned_HomeWear.png 
    Seriously though, are you okay? #speaker_left
    You said you had fun, and yet you don’t look like you had fun. #speaker_left
    I’ve known you so long, I know when you’re tired, and when you’re upset, alright? #speaker_left
    There’s no need to hide. So what’s on your mind? #speaker_left

+ [Reflect on your discussion with Hwee Ling] ... #speaker_left
    ...are you okay? #speaker_left
    #speaker_left_image:cha_Unaisah_Basheer_Concerned_HomeWear.png 
    Huh? What? Of course I’m fine. #speaker_self
    You said you had fun, and yet you don’t look like you had fun. #speaker_left

- Oh Basheer. #speaker_self
Well? #speaker_left
I had another work appraisal today, and I don’t think I’m getting a promotion anytime soon. #speaker_self
It’s been quite a while Bash, and I’ve worked so hard. #speaker_self
You have. #speaker_left
Jessica, Marie’s friend, suggested over dinner that I try for a PR job in her friend’s company. #speaker_self
Wait, you’re saying that you are thinking of applying for a job in the company of a friend of a friend of your friend? #speaker_left
I don’t know. It’s a lot to think about. But at this stage I am prepared to try anything. I just know that I could be doing so much more. #speaker_self
I don’t regret quitting Brown & Grey after the whole Nigel thing, but… sometimes I wonder… #speaker_self
I know. #speaker_left
#speaker_left_image:cha_Unaisah_Basheer_Defeated_HomeWear.png 
Just think about it please. It’s a very big change. #speaker_left
When you quit so suddenly last time--not that I would have wanted you to stay--knowing, now, what was happening--but it was hard--the freelance jobs--I mean, they sounded interesting--but it was hard seeing you so lost like that. #speaker_left
#speaker_left_image:cha_Unaisah_Basheer_Concerned_HomeWear.png 
I know, I know. #speaker_self
Can we not talk about this right now? #speaker_self
Alright. #speaker_left

#ui:narrator
#background:bg_unaisah_CH4A_Computer_Night.jpg 
I can't believe I'm seriously considering applying for jobs again. I never thought I'd have to fill in these forms again.
“Excellent command of English”
“Eloquent and persuasive”
“5-8 years’ experience working with media”
VAR unaisah_3_applynewjob = false
What should I do?
+ [Apply. This could be the one.] 
    #background:black.jpg
    Three weeks later.
    ~  unaisah_3_applynewjob = true
    I can’t believe they called me for an interview.
    Well, this is it, Inshallah
    -> unaisah_3a_7

+ [Don't apply. It's risk] 
-> unaisah_3a_8

=== unaisah_3a_7 ===
#knot:unaisah_3a_7
#ui:scene
#background:bg_unaisah_CH4A_InterviewBoardroom.png 
#speaker_right_name:Interviewer
#speaker_right_image:cha_unaisah_INT_M.png 
Well, we are certainly impressed by your CV, and breadth of your experience. #speaker_right
Could you tell us: what do you consider your greatest strength, and why? #speaker_right

+ [Collaboration with colleagues] It’s definitely my ability to bring people together. #speaker_self
    Elaborate. #speaker_right
    I have been doing this throughout my working life. #speaker_self
    My previous company was an MNC. I had to work with almost every other department to figure out how best to publicise their research and products. #speaker_self
    I also had to work across time zones with overseas offices to coordinate product launches. #speaker_self
    As a teacher, I shared my past work experience and expertise with my colleagues, to level them up. #speaker_self
    And I used my work contacts to organise learning trips for my students, as well as internships. #speaker_self
    No experience is wasted with me—I know how to bring everything and everyone together, and make things count. #speaker_self
    Phew!! That must be what my students feel like during an examination. #inner_monologue
    Good. Then I think you have a feel for what our work is like. #speaker_right

+ [Compassion for students] I feel my greatest strength is my compassion. #speaker_self
    Do give an example. #speaker_right
    There was an incident in my school where a student was worried about their friend’s safety, but also hesitant to report it because the student did not want to get their friend into trouble. #speaker_self 
    I had to navigate how to get them to trust me enough to tell me what was happening, while also balancing their expectations, that I may have to report the incident if someone is in danger. #speaker_self
    Business partnerships are also about trust while balancing expectations. Being upfront about what can be delivered, and being accountable for what is promised. Finding out the needs of both parties to build mutually beneficial relationships. #speaker_self
    With colleagues, it’s also crucial to be firm and respected, while also getting them to be comfortable with me. At the end of the day, distrust in the workplace affects the team’s overall productivity and the sustainability of a work environment. #speaker_self
    Alright. Good. #speaker_right


+ [Courage to do the right thing] I would say that it’s courage. #speaker_self
    How so? #speaker_right
    Wow. Am I really going to tell them about why I left Brown & Grey? #inner_monologue
    What if this puts them off hiring me? #inner_monologue
    ++ [Go into detail] There is something you should know about my previous job. #speaker_self
        One of senior managers there behaved inappropriately around me and several other women. #speaker_self
        It was unprofessional, completely wrong, and made us feel uncomfortable. #speaker_self
        I reported it to HR a few times over a few months, but nothing changed. #speaker_self
        So I and another colleague, as a matter of principle, decided to quit. #speaker_self
        Well, that was refreshing. #speaker_right
        ...“refreshing”??! #inner_monologue
        We are sorry you had that experience, Ms Begum. But why are you telling us this? Are you worried that something like that would happen here? #speaker_right
        I’m sharing this to let you know that I have the courage to do the right thing. #speaker_self
        And in what situation at our company do you envision this courage of yours being useful? #speaker_right
        Doing what’s best, even if it means asking difficult questions, or having tough conversations. I want to uphold a positive company culture, which I believe is vital to the overall efficiency and sustainability of a workplace environment. #speaker_self
        I also want to create a safe work environment for myself and other women. Support the other women in the field to be bold, take up space, insist on being treated well. #speaker_self
        Okay. I’ve heard enough. #speaker_right
        Is it just me or does he seem.... threatened? #inner_monologue
    
    ++ [Be vague] In my previous job as a Secondary school teacher, I took on the role of supervising the {unaisah_1_cca == "malaydance":Malay Dance}{unaisah_1_cca == "robotics":Robotics} CCA, despite having no experience or knowledge of it. #speaker_self
        It was daunting at first, but it opened my eyes to things I would not have been exposed to before. And for my students, seeing me try out something new even when I wasn’t sure of it, and then how I grew to enjoy it in the end. emboldened them to explore their interests too. #speaker_self
        Alright. Good. #speaker_right

- Thank you for coming here today. I think we’ve covered almost everything. #speaker_right
Thank you for your time too. #speaker_self
Just one last thing. #speaker_right
Sure. #speaker_self
I want to be very frank with you, Ms Begum. Here, especially in this role, appearances matter. #speaker_right
The successful candidate will sometimes be the face of this company to the media, and the public. #speaker_right

And whatever ideals you may have about humanity, how you appear, will affect perceptions of us. #speaker_right

We also work with a lot of clients from China. A lot of our business meetings happen over dinner and drinks. #speaker_right
Or we often arrange for catering, it would be… They may be more comfortable with someone with more similar...customs. #speaker_right
Are you prepared to… adjust to the requirements? #speaker_right
If company meetings happen over dinner and drinks, that’s no problem, I will have a soda. If you’re ordering catering, I’d be happy to suggest places with Halal options. #speaker_self
But if you’re asking if I would be willing to compromise on my faith to make life more convenient for the office, I’m sorry but my answer is no. I take my faith very seriously and hope you can respect that choice. #speaker_self
I see. I think we’re done here. Thank you. #speaker_right

-> unaisah_3a_8

=== unaisah_3a_8 ===
#knot:unaisah_3a_8
#ui:scene
#background:bg_unaisah_CH4A_MarieCafe.png
#speaker_right_name:Marie
#speaker_right_image:cha_unaisah_Marie_Concerned.png
{ unaisah_3_applynewjob == true:
    ...and yep. It’s been a month, I haven’t heard from them. I guess this is it. #speaker_self
    That sucks, but forget them! You’re too good for them! ##speaker_right
    Yeah, but I’m still back to square one. #speaker_self
    Well, at least you tried, so you’ll never wake up at night wondering “what if??” #speaker_right
}
So, what now? #speaker_right
Now… I don’t know. #speaker_self
I’m so torn up. Basheer and I got some news from his parents last week. #speaker_self
What happened? #speaker_right
His mother was diagnosed with Breast cancer. Stage 2. She’ll have to go for surgery. #speaker_self
#speaker_right_image:cha_unaisah_Marie_Annoyed.png
Oh my.... I’m so sorry to hear that, Uni. #speaker_right
#speaker_right_image:cha_unaisah_Marie_Concerned.png
Yes, and with my father in-law’s existing health conditions, he’s not going to be able to take care of her alone. #speaker_self
The way I figure, my best option is to... #speaker_self
+ [stay in Singapore Junior College] -> unaisah_3a_8a
+ [apply for a Vice Principal job elsewhere]  -> unaisah_3a_8b

= unaisah_3a_8a
    #knot:unaisah_3a_8a
    #ui:scene
    #background:bg_unaisah_CH4A_MarieCafe.png
    #speaker_right_name:Marie
    #speaker_right_image:cha_unaisah_Marie_Concerned.png
    Stay where I am. Where it’s comfortable and I have a routine.  #speaker_self
    VAR unaisah_3_stayinsjc = true
    ~  unaisah_3_stayinsjc = true
    Maybe I don’t have the upwards progression, but at least work will be predictable, so I’ll be able to divert energy to taking care of my in-laws. #speaker_self
    Are you sure about it? #speaker_right
    Honestly, not really. But it’s the best way forward. Not only will it make my in-laws happy, but my own parents too. #speaker_self
    Plus, with all the tension between Basheer’s mum and me about not having children and all, maybe it’ll be a good opportunity to get to know each other. Find common ground, that sort of thing. #speaker_self
    I really admire you, Uni. #speaker_right
    Aw thanks. #speaker_self
    Where’s this coming from though? #speaker_self
    Can’t a girl just compliment her best friend? #speaker_right
    Look, this may be your biggest challenge yet. More difficult than anything you’ve ever had to do in your career. I’m really proud of you and in awe of your courage for taking the leap. #speaker_right
    Yeah. It’ll be worth it. #speaker_self
    -> unaisah_3a_9    

= unaisah_3a_8b
    #knot:unaisah_3a_8b
    #ui:scene
    #background:bg_unaisah_CH4A_MarieCafe.png
    #speaker_right_name:Marie
    #speaker_right_image:cha_unaisah_Marie_Concerned.png
    Try my luck at a Secondary School. I was searching for job openings last night, just out of curiosity, Singapore Secondary has an opening for Vice Principal. #speaker_self
    Wow! VP? That’s a great opportunity! #speaker_right
    Well, with Basheer’s hours he just won’t have the time to take care of them. So it would have to be me who takes care of them. #speaker_self
    BUT, with more pay, and since we’ve decided not to have children, we could afford hiring a caretaker for my in-laws. #speaker_self
    Well then great! You get to move up and help your inlaws at the same time! #speaker_right
    Yes! But it does make me feel a little guilty. #speaker_self
    How so? #speaker_right
    I don't know. It's the most practical solution, but a part of me wonders if I’m just being selfish. That I’m not doing right by not taking care of them myself. #speaker_self
    But you are taking care of them while taking care of yourself. It’s not like you’re hanging them out to dry. They’ll have someone to take care of them while you also get to pursue what makes you happy. Two birds with one stone, right? #speaker_right
    Yeah, but I know what my in-laws will think. What my parents will think too. #speaker_self
    They’ll say that hiring someone to take care of them is the same as not taking care of them at all. #speaker_self
    I see. That’s hard. #speaker_right
    Will their judgement bother you more than not taking this opportunity though? #speaker_right
    + [Yes] -> unaisah_3a_8a
    + [No] No, it won't. #speaker_self
        ~  unaisah_3_stayinsjc = false
        Then it’s settled. #speaker_right
        -> unaisah_3a_9

=== unaisah_3a_9 ===
#knot:unaisah_3a_9
#ui:narrator
#background:bg_unaisah_CH1_VoidDeck_Day.png
Years passed. 
It's early morning again, and my taxi is almost here.
#ui:scene
#background:bg_unaisah_CH1_GrabInterior_Day.png
#speaker_right_image:cha_unaisah_grabdriver_normal.png
#speaker_right_name:Driver
{ unaisah_3_stayinsjc == true:
    Singapore Junior College? You teacher, ah? #speaker_right
    Yes. #speaker_self
    How long already? #speaker_right
    Seven years, uncle. #speaker_self
    VAR chapter_3_ending = 0
    ~ chapter_3_ending = 1
    // no kids JC
    Wah. Seven years. Long time already. Like that they never give you promotion, ah? #speaker_right
    Seven years should be can become principal already. #speaker_right
    Actually, it’s my decision. I realised taking care of my family was more important. #speaker_self
    How many children you got? #speaker_right
    No, not my children. My husband’s parents. They’re getting old and have some health condition. I stayed as a teacher so I can focus on taking care of them after work. #speaker_self
    Ahhh. Good wife ah. Your husband lucky. #speaker_right
    We try. It’s not always easy. But we do our best. #speaker_self
- else:
    Singapore Secondary school? You teacher, ah? #speaker_right
    Ye- #speaker_self
    Actually, I’m a Vice Principal. #speaker_self
    ~ chapter_3_ending = 2 
    // no kids VP SS
    Wah so young got VP already. #speaker_right
    No lah uncle, I old already. #speaker_self
    What old! Look like you just finish schooling only. #speaker_right
    Hahah. #speaker_self
    Tell me ah, my son veeeery lazy to study. Uncle also cannot help him one. I try everything already. How to make him study? #speaker_right
    Hmm... #speaker_self
    I don’t know if you can make him study. #speaker_self
    But maybe if he sees you try something difficult, maybe even something that you’ve avoided for a long time, he’ll see that he can do difficult things too. #speaker_self
    Even if you try and fail, as long as you keep trying, you’re already setting a good example for him. #speaker_self
}

-> unaisah_3a_10

=== unaisah_3a_10 ===
#knot:unaisah_3a_10
#ui:narrator
#background:bg_unaisah_intro.jpg
So much has happened in the last few years. 
My career has gone from strength to strength. I glean lessons from my students as much as I impart mine to them. I’ve made lifelong friends. 
While work is tough, it is never soulless. My life feels full and, as long as I have Basheer with me, this world I’ve built is enough. 
I think it is. 
Sometimes, on a weekend at a cafe, I’d feel a pang when I see couples struggling with their kids. Part of me wonders how I’d handle a toddler’s tantrum.  Would I stay calm? Would I lose my temper too? Would I take it out on Basheer? 
I find myself taking pointers from these parents for their deftness and patience. Almost like I’m studying to be parent myself.
But then Basheer starts a joke about his boss’s tardiness, and I find myself laughing, and when we segue into politics the pang subsides completely. 
Joy and connection. I’m lucky to have that with Basheer, because these things are hard to find – even with partners.
I couldn’t be prouder of the life I’ve built. It’s a beautiful, purposeful one, and this is what it’s like to be me.

-> unaisah_3_reflection

=== unaisah_3_reflection ===
#knot:unaisah_1_reflection
#ui:chapter_reflection
#reflection_id:15
Reflection 15  // change this to 16 and add reflection.json


 


-> END




// CHAPTER 3 WITH BABY

=== unaisah_3b_intro ===
#knot:unaisah_3b_intro
#ui:narrator
#background:bg_unaisah_4_maternityshopping.jpg
The last 9 months of preparing for the baby have been such a whirlwind.
All the preparation...
#background:bg_unaisah_CH4B_ultrasound.jpg
All the changes to my body...
All the fears I’ve had...
All the work I've had to leave behind...
#background:bg_unaisah_CH4B_Munir_Night.jpg
And now, Alhamdulillah, Basheer and I have been blessed with a child...

-> unaisah_3b_1

=== unaisah_3b_1 ===
#knot:unaisah_3b_1
#ui:scene
#background:bg_unaisah_CH2_Bedroom_Night.png
..a child who needs to be fed constantly, day and night. #inner_monologue
#background:bg_unaisah_CH4B_Munir_Night.jpg
Still asleep, Munir? It’s hard enough waking up for every feed, now I have to wake you too? Hmm?  #inner_monologue
Oh, come here...  #inner_monologue
It’s tiring but I love you. Amma will do anything for you.  #inner_monologue
#background:bg_unaisah_CH3_Bedroom_Day.png
#speaker_left_image:cha_Unaisah_Basheer_Neutral_HomeWear.png
#speaker_left_name:Basheer
Did you get any rest last night? #speaker_left
    + [Yes] Yes, off and on, in between. He fell back asleep quite quickly. #speaker_self
    + [No] No. I feel like I’ve been doing nothing but feeding Munir since we left the hospital a week ago. I don’t know day or night. I’m so tired.  #speaker_self
    + [No, but it's ok] No, but I’m alright. It’s just been a week. I’ll get used to it.  #speaker_self
    + [What do you think?!] Well, what do you think?!  #speaker_self
- I do want to help, alright? #speaker_left
We’ve discussed this. I want to breastfeed him as long as I can. Bond with him. When I cannot take it, then I’ll pump and you can bottle feed him. #speaker_self
Don’t wait until you cannot, alright? We’re not young anymore. Let me feed him sometimes when you’re tired, alright? #speaker_left
You are already helping. With the chores, the diapers. I’ll let you know. #speaker_self
Okay. Bonding, I understand. Very important. #speaker_left
But maybe think of it another way. My paternity leave is much shorter than yours. #speaker_left
At least let me use this time to learn first. So it is easier when we’re both around, alright? #speaker_left
+ [Try pumping] You know what, that makes sense. Let’s give this a go. #speaker_self
    VAR unaisah_3b_breastfeed = false
    ~ unaisah_3b_breastfeed = false
    I’ll go take out the pump and we can look at the instructions later. #speaker_left
    Thanks. I need to feed him first. #speaker_self
+ [Continue breastfeeding] Bash, I only have this one chance to bond with Munir in these first couple of weeks. I’m so afraid of giving this up. #speaker_self
    ~ unaisah_3b_breastfeed = true
    Hey, I’m his father. I should also bond with him, alright? #speaker_left
    It’s different, please understand. Just let me have this one. You’ll have months, years with him. #speaker_self
- Go ahead. I’ll make breakfast. Where is the thing your mother brought over yesterday? #speaker_left
It’s in the back of the fridge, top shelf. #speaker_self
Okay. #speaker_left

-> unaisah_3b_3

=== unaisah_3b_3 ===
#knot:unaisah_3b_3
#ui:scene
#background:bg_unaisah_CH4B_Munir_Night.jpg
#speaker_right_name:Munir
WAAAAAAAHHHHHH!!!! #speaker_right
WAaaaaAAAAAAAHhhHH!!!! #speaker_right
*WHEEEZE* WAAaaAHhhHH!!!! #speaker_right
Is it 6 already? #speaker_self
Oh goodness...it’s only 3:30. #speaker_self
#background:bg_unaisah_CH2_Bedroom_Night.png
#speaker_left_image:cha_Unaisah_Basheer_Defeated_HomeWear.png
#speaker_left_name:Basheer
{unaisah_3b_breastfeed == false:
    I should take care of this. Basheer will do the bottle feed at 6am. #inner_monologue
    I’ll take him outside… Shhh chellam, let’s not disturb Daddy okay? #speaker_self
    Kanne, Kanmaniye, Kannurangai ponne, Mayilo, togai mayilo, Kuyilo, koovum kuyilo, Nilavo, nilavin oliyo, Imaiyo, imaiyin kanavo (Tamil lullaby) #speaker_self
- else: 
    Bash. #speaker_self
    Mmph? #speaker_left
    BASHEER. #speaker_self
    Oh, what happened? #speaker_left
    Could you help bring Munir please and turn on the light. I need to breast feed him. #speaker_self
    Ok, ok ok. #speaker_left
}
#ui:narrator
#background:black.jpg
It's 6am. Time disappears when you're taking care of a baby. 
#ui:scene
#background:bg_unaisah_CH4B_Munir_Night.jpg
#speaker_left_image:cha_Unaisah_Basheer_Defeated_HomeWear.png
#speaker_left_name:Basheer
{unaisah_3b_breastfeed == false:
    Bash. #speaker_self
    Mmph? #speaker_left
    BASHEER. #speaker_self
    Oh, what happened? #speaker_left
    Your turn. Feed him from my milk in the fridge. #speaker_self
    Ok, ok ok. #speaker_left
    You remember how, right? We went through earlier? #speaker_self
    Yes yes. #speaker_left
    Ah...Back to sleep...this was the right choice. #inner_monologue
- else:
    I thought I knew what love was when I married Basheer. But with Munir, it’s on another plane entirely. #inner_monologue    
}    

-> unaisah_3b_4

=== unaisah_3b_4 ===
#knot:unaisah_3b_4
#ui:narrator
#background:black.jpg
My relatives have all come over to peek at the new addition to our family.
Feels like my first time being social in forever.
#ui:scene   
#background:bg_unaisah_CH4B_Munir_Night.jpg
#speaker_left_image:cha_unaisah_Mother.png 
#speaker_left_name:Amma
#speaker_right_name:Male Relative
#speaker_right_image:cha_unaisah_MaleRelative.png 
Oh you are so handsome! #speaker_left
Amma, thanks for your help these past weeks and months. I really don’t know how I could do this without you. #speaker_self
Please, I am your mother. And now Munir’s grandmother. If I don’t help you, who would? #speaker_left
I’m glad you’re okay with us having the Aqeeqah in the second week instead of the first. The first week was really tough. #speaker_self
Waaahhh, so cute Mashallah! Looks like Basheer you know! Can see. How heavy? #speaker_right
3.82kg. #speaker_self
Waaahhh, big boy! Very good. Strong! #speaker_right    
#speaker_right_name:Female Relative
#speaker_right_image:cha_unaisah_FemaleRelative.png 
Ohhh, so cute! Eh look like you Unaisah! Can see already. The nose, here. How heavy? #speaker_right
+ [3.82kg] 3.82kg. #speaker_self
    I see, I see! Must be so healthy! #speaker_right
    #speaker_right_image:pixel.png 
    You should just hold up a sign with his weight. #speaker_left
    And how many hours I was in labour. That’s all anyone can ask. #speaker_self
    Eh actually how many? I also don’t know. #speaker_left
    Aiyah, Amma! #speaker_self
+ [About the weight of a baby] About the weight of a baby. #speaker_self
    ... #speaker_right
    Sorry, she hasn’t slept much. Eyes open but brain still asleep. #speaker_left
    Ah. Of course. You should get rest dear. You look tired. #speaker_right
    #speaker_right_image:pixel.png 
    I should just hold up a sign with his weight. And how many hours I was in labour. That’s all anyone can ask. #speaker_self
    Be nice, Unaisah. You should be glad so many people care about you and Munir. #speaker_left
    Motherhood can get lonely, you know. #speaker_left

- -> unaisah_3b_5

=== unaisah_3b_5 ===
#knot:unaisah_3b_5
#ui:narrator
#background:bg_unaisah_CH4B_LivingRoom_Day_Messy.png
40 days later, and the "confinement period" for me as a new mother is finally over.
#ui:scene
#background:bg_unaisah_CH4B_LivingRoom_Day_Messy.png
They’re all gone. #inner_monologue
My confinement is over, I can leave the house, but I can’t go anywhere.#inner_monologue
My mother and mother-in-law aren’t coming over as regularly to help.#inner_monologue
Basheer went back to work after his two-week paternity leave ended.#inner_monologue
I have to do this all on my own.#inner_monologue
First task is to make this mess liveable again.  #inner_monologue
+ [I can do this]  I can do this. It’s just the beginning. #inner_monologue
    VAR unaisah_3b_motherscore = 0
    ~ unaisah_3b_motherscore += 1
+ [Basheer could help more] Basheer was helpful when he was on leave, but these days it seems like he always has something better to do. #inner_monologue
    ~ unaisah_3b_motherscore -= 1
- And then there's all this breast milk pumping, freezing, thawing, preparing, bottling... #inner_monologue
+ [I can do this]  I can’t believe I managed to produce all that.  #inner_monologue
    ~ unaisah_3b_motherscore += 1
+ [He's well fed but I’m so hungry] Munir’s milk is taking up so much space. It is all about him now. Feed feed feed. But what about me? I’m so tired and hungry. #inner_monologue
    ~ unaisah_3b_motherscore -= 1
- I keep staring at the clock these days. #inner_monologue
+ [I can do this] I need to be patient. Remember it’s all in Allah’s plan.   #inner_monologue
    ~ unaisah_3b_motherscore += 1
+ [Time moves so slow.] Day after day after night after night. One month, two months - time disappears. Feed. Burp. Sleep. Change. Bathe. Feed. Burp. Sleep. Change. Bathe.. #inner_monologue
    ~ unaisah_3b_motherscore -= 1
- My school work files and teaching materials are gathering dust. 
+ [I can't do this] It’s been so long. It feels long. I might have forgotten how to teach. I’m not sure how I’ll get back into it.  #inner_monologue
    ~ unaisah_3b_motherscore += 1
+ [Can I do this?] So many of my colleagues are parents. They go away to have a child and come back so effortlessly. Could I be worse than them all?  #inner_monologue
    ~ unaisah_3b_motherscore -= 1
#speaker_right_name:Munir
#speaker_right_image:cha_unaisah_Munir_Baby.png
WAAAAAAAHHHHHH!!!! #speaker_right
WAaaaaAAAAAAAHhhHH!!!! #speaker_right
+ [My child needs me.] However tired I am, I am still your mother, and it breaks my heart to see you distressed. Let me see what you need.  #inner_monologue
    ~ unaisah_3b_motherscore += 1
+ [My child hates me.] What is bothering you now. Have I not done enough for you? Is it me? Everyone was so nice to me last month but now they don’t care. Are you unhappy with me, too? #inner_monologue
    ~ unaisah_3b_motherscore -= 1

- -> unaisah_3b_6


=== unaisah_3b_6 ===

    
-> END