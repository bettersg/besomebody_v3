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
VAR character_id = 3
// VAR chapter_1_ending = 0 
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
Hello! I am Unaisah Begum. To close friends, I’m simply “Unni”. 
My husband Basheer and I are part of a small community of non-Malay Muslims in Singapore—we are Indian, but practice Islam. We are called Indian Muslims and we speak Tamil.
I don’t speak Malay.  But I do know a bit of Japanese, due to my interest in anime!
This is an exciting time for me. After a year of training, I’m about to start my new job as a General Paper tutor in Singapore Junior College.
Did you know there are over 30,000 teachers in Singapore? A few of them are straight out of school. Some of them did a mid-career switch like me.    
I was previously in public relations, but that didn’t work out… Perhaps the less said about that, the better.
At least I’ve kept one friend from my previous job—Marie. She’s a ray of sunshine, that one. Helped me through some tough times.
Switching careers at 32 is daunting, however I really want to give it my best shot. It doesn’t help that my in-laws have been expecting a grandchild ever since I got married. 
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
It’s dark. The rectangular outline of a phone lights up on a bedside table. 
An alarm goes off. It’s 5:30am. 
+ [Snooze]
    With eyes still closed, I press the “Snooze” button. 
    I barely drift back to sleep when the alarm goes off again.
    ++ [Snooze]
        A few snoozes later...
        The sound of the tap running in the bathroom jolts me awake. 
        It’s 5:57 am.

    ++ [Wake up]
        I wriggle into a sitting position and focuses my eyes on the screen. 
        My quiet morning is gently interrupted by the sound of a running tap from the bathroom. 
        It is now 5:47am. 
    
+ [Wake up]
    I wriggle into a sitting position and focuses my eyes on the screen. 
    My quiet morning is gently interrupted by the sound of a running tap from the bathroom. 
- 
#ui:scene
#background:bg_unaisah_CH2_Bedroom_Night.png
Basheer and I have not prayed together in a long time, since I used to wake up even earlier and leave before he wakes up. #inner_monologue
It will be nice to seek God’s blessings together for my first day. #inner_monologue
I lay out the prayer mats as Basheer steps out of the bathroom.#inner_monologue
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
#ui:scene
#background:bg_unaisah_CH2_Bedroom_Night.png
This was a nice start to my day. I feel ready now.#inner_monologue
Three outfits, twenty minutes, and a struggle with a tube of lipstick later, I’m smoothing my hijab down the back of my head, ready to embark on my first day as a teacher. #inner_monologue
Good luck today chellam! #speaker_left
It’s time. #inner_monologue
I can do this! #inner_monologue

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
Singapura Junior College? You teacher, ah?  #speaker_right
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
#chat_group_image:ico_marie.png
#speaker_1_name:Marie
#timestamp:07.32
Babe!!! Woke up early to send you love on your first day. See I remembered! #speaker_1
Haha thanks babe! #speaker_self
This is it Unni!! You waited so long to get out of there and here you are finally. You are going to kill this. #speaker_1
❤️💪  #speaker_self
Hey have you told anyone? About, you know... #speaker_1
Are you kidding? I’m just starting here #speaker_self
People might ask. I think it’s important. We both left that dump together. Make our sacrifice count for something #speaker_1
Easy for you to say, you’re the one who’s going to be your own boss. You don’t need to worry what people will think. Anyway I gotta work ya? ttyl #speaker_self


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
Later that afternoon, in the teachers' meeting room.
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
    
- Unasah. Quite an unusual name. I’ve never known an Unasah. #speaker_left
{unaisah_1_correctveronica == false:
    You do now #speaker_right
    - else:
    Gonna take me a while to learn that one #speaker_left
    #speaker_right_image:cha_unaisah_veronica_laughing.png
    Don’t worry, she’ll remind you. #speaker_right
    How rude! #inner_monologue
}
Hey, I heard you’re a mid-career teacher. Where were you previously? #speaker_left
I was at Glendorf & Smith, doing public relations. #speaker_self
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
Well...I’ve always loved the idea of teaching, of nurturing young minds, preparing them to seize life’s opportunities... #speaker_self
VAR chapter_1_ending = 1
~ chapter_1_ending = 1
Haha! Is that what you told the interview panel? #speaker_left
I’m sorry? #speaker_self
Nah, it just sounded like an advertisement for teaching. I was more curious about what made you give up a good position in the private sector like that. #speaker_left
I guess...I figured I like teaching more? #speaker_self
But what made you figure? #speaker_left
Everyone says they want to nurture the next generation, or they’ve always loved kids. #speaker_left
Those of us in the teaching track from the beginning, we heard our calling and stayed there. #speaker_left
But you made a career switch. Something had to have happened. #speaker_left
Tamara--you’ll meet her later--also made a mid-career switch. Her trigger was becoming an aunt. For Alistair, it was turning 30. #speaker_left
Haiyoh can you not be such a busybody, she already answered you. It’s only her first day here, there’s still a lot of time to get to know her. #speaker_right
-> unaisah_1_reflection

= unaisah_1_4b
#ui:scene
#speaker_right_image:cha_unaisah_veronica_neutral.png
#speaker_right_name:Veronica
#speaker_left_image:cha_unaisah_jeremy_neutral.png
#speaker_left_name:Jeremy
It sounds nice, but honestly the work there was crazy. I was burning so many weekends. Then I realised that I didn’t have to. #speaker_self
~ chapter_1_ending = 2
I could still be involved in the field of communications, by teaching it. #speaker_self
Haha! Like they say about us teachers. Those who can’t, teach right? #speaker_left
Hey! How can you say that. She can. She just chose to teach. #speaker_right
Joking, joking... #speaker_left
But it can get pretty crazy here too. Lesson plans, marking, CCAs, handling the students’ problems. Teenagers! #speaker_left
I’ll take teenage problems over boss and client problems! #speaker_self
Boss problems...? #speaker_left
Um... #speaker_self
Haiyoh can you not be such a busybody, she already answered you. It’s only her first day here, there’s still a lot of time to get to know her. #speaker_right
-> unaisah_1_reflection

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
    ~ chapter_1_ending = 3
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
    -> unaisah_1_reflection

+ [Don't tell them]
    It could happen to anyone, anywhere.  #inner_monologue
    And if it happens or has happened to anybody here, I want them to know I’m always here to listen or help in any way I can. Maybe we can look out for one another. #inner_monologue
    And it would certainly make things more comfortable for me if I didn’t keep this bottled up... #inner_monologue
    But I’m just not ready to tell them yet. #inner_monologue
    There’s really not much to it. Long story short… #speaker_self
    ++ [I love teaching] -> unaisah_1_4a
    ++ [I wasn't happy there] -> unaisah_1_4b


=== unaisah_1_reflection ===
#knot:unaisah_1_reflection
#ui:chapter_reflection
#reflection_id:14
Reflection 14  // change this to 14

-> END