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
VAR chapter_1_ending = 0 
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
// -> unaisah_1_reflection
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
// -> unaisah_1_reflection
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
    // -> unaisah_1_reflection
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
#background:ui_emailinbox.png
Wow, it’s been a tiring month. But I feel I’m getting a hang of things now. I’ve settled into a rhythm. 
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
#background:ui_emailinbox.png
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
    Spoken like a true BT (beginning teacher). The real challenge is keeping it up. #speaker_left
+ [Slow it down]   To be honest, it’s a lot more than I expected. #speaker_self
    I’ve been taking on quite a lot of admin duties and was hoping to focus more on my students. #speaker_self
    Don’t worry too much, it’s early days, you’ll grow into it. #speaker_left
- Heh... #inner_monologue
In fact, I wanted to talk to you about CCAs. We’re aware we haven’t assigned you one yet. #speaker_left
Here it comes. More work. #inner_monologue
We did all the allocations before you joined us, but there’s a space for you in... #speaker_left
...Malay Dance. #speaker_left
VAR unaisah_1_cca = ""
Malay Dance? If the reason is what I think it is… #inner_monologue

+ [Accept Malay Dance]   Oh! Great. Great! So...cultural. #speaker_self
    My childhood bestie took Malay dance in school. I can sort of remember attending a few of her performances... #speaker_self
    ~ unaisah_1_cca = "malaydance"
    That’s a plus, not a requisite. We’re not asking you to do this because you’re Malay. #speaker_left
    I’m not. #inner_monologue
    Because you’re not. #speaker_left
    Okay, phew, she gets it. #inner_monologue
    Any teacher can be in charge of any CCA. Because what you’re doing is imparting values. Leadership. Teamwork. Care for the community. #speaker_left
    The technical parts, we can always get vendors in if necessary. Some CCAs, like the Uniformed Groups, practically run themselves, thanks to seniors. #speaker_left
    So, how about it? #speaker_left

+ [Ask for something else]  ... #speaker_self
    Anything wrong? #speaker_left
    I was just wondering if you meant Indian Dance. I’m, well, Indian. #speaker_self
    I know you are. We know you are. But we had to shut down Indian Dance two years ago because there weren’t enough students interested in it. Ever since the school moved, our student profile has been shifting. #speaker_left
    I understand. Sorry, it’s just that it happens so much that people assume I’m Malay because I’m Muslim so I thought-- #speaker_self
    Don’t worry about it. No harm, no foul. #speaker_left
    So how about it? Try something new? #speaker_left
    So, how about it? #speaker_left

- Hmmm...
+ [Accept Malay Dance now]    Okay. I’ll do it. It will be a learning opportunity for me, too. #speaker_self
    That’s the spirit. Everything else good? #speaker_left
    ~ unaisah_1_cca = "malaydance"
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
    That’s the spirit. Everything else good? #speaker_left
    ~ unaisah_1_cca = "malaydance"
    
    ++ [Choose Malay Dance] You know what, I think I should give myself a chance with dance. If I can get into something I’m not good at, then I can use that to motivate my students. #speaker_self
    That’s the spirit. Everything else good? #speaker_left
    ~ unaisah_1_cca = "robotics"
    -- Yup, yup, still adjusting, but good. #speaker_self
    
- That's settled then. My door is usually open when I'm in, which means you can come in to talk anytime. #speaker_left


-> unaisah_1_7

=== unaisah_1_7 ===
#knot:unaisah_1_7
#ui:scene
#background:bg_unaisah_CH2_LivingRoom_Night_wFood.png
#speaker_left_image:cha_Unaisah_Basheer_Laughing_HomeWear.png 
#speaker_left_name:Basheer

{unaisah_1_cca == "malaydance":
    Dance! You? Hahaha, I can’t believe it. #speaker_left
    I don’t know if I’m more bothered by that, or the Malay thing. #speaker_self
    What Malay thing? #speaker_left
    You know, the fact that people often lump us together with Malays because we’re Muslim. #speaker_self
    It's like they have lived alongside Indian Muslims for so long but they assume that all Muslims must be Malay. #speaker_self
    So? #speaker_left
    So? We’re not, and I’m tired of others thinking we’re interchangeable. #speaker_self
    They just don’t know better. It’s usually quite innocent. Don’t waste your energy bothering about them, alright? #speaker_left
    It is important though. Is it really too much to ask for people to recognise that Indians can be Muslim too? And I wish you weren’t so dismissive about it. #speaker_self
    There’s only room for one smart, strong, independent, and brave partner in this relationship... and it definitely isn’t me. #speaker_left
    You got that right. #speaker_self
    - else :
    Robotics! You? Hahaha, I can’t believe it. #speaker_left
    Time to take a crash course through YouTube videos... #speaker_self
    Don’t they give you something you’re good at? #speaker_left
    Hey! #speaker_self
    ... #speaker_self
    Okay, you’re not wrong. But who knows, give me a couple months, I could be a tech whiz. #speaker_self
    I always thought teachers get to pick their CCAs. #speaker_left
    I think they do, but I joined later so they’d all been taken. Trust me, it could’ve been worse. It could’ve been Malay dance. #speaker_self
    I, for one, would have loved to see you dance. #speaker_left
    Anyways, I don’t actually have to know anything about the subject. #speaker_self
    Really? #speaker_left
    I’m just there to [mimicking Hwee Ling] "Impart values. Care for the Community." #speaker_self
    Sure, but shouldn’t CCA teachers at least be interested in the activities? #speaker_left
    Well, what was your CCA back in the day Bash? #speaker_self
    You’re looking at Staff Sergeant Basheer, of the National Police Cadet Corps. #speaker_left
    Your CCA teachers, were they the police type? #speaker_self
    Yah. Of course. #speaker_left
    Okay, whatever. It’s not important. #speaker_self
}

You know what’s important to me though? #speaker_left
Us? #speaker_self
Well yes, but also my parents want to drop by next week. #speaker_left
Fine. I can’t say no, right? #speaker_self
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
    Well what will you say then? What do YOU actually feel about having a child? #speaker_self
    Unni, we’ve talked about this. #speaker_left
    Wrong. I’ve talked about it. I’ve made it clear that I’m not ready yet. #speaker_self
    You’ve talked around it. You change the subject. Or you say a lot of things without actually saying anything at all. It feels like you’ve been avoiding this discussion. #
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
        We need to have a proper talk about this soon though. #speaker_self
        It's a choice that affects me greatly. #speaker_self
        I know what I want...I think. But it feels lonely. #speaker_self
        I’m sorry. #speaker_left
        Don't leave me hanging too long ya? #speaker_self

- I can...do the dishes tonight. #speaker_left
Oh, when you feel bad then you offer to do is it? #speaker_self
Don’t put it that way, alright... #speaker_left
It’s fine. It’s my turn today anyway. #speaker_self
    
-> unaisah_1_8


=== unaisah_1_8 ===
#knot:unaisah_1_8
#ui:narrator
{unaisah_1_cca == "malaydance":
    #background:bg_unaisah_CH2_MalayDanceCCARoom.png
    - else:
    #background:bg_unaisah_CH2_RoboticsCCARoom.png
}
Four months later.
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
#speaker_left_image:cha_unaisah_veronica_concerned.png
#speaker_left_name:Veronica
Heyyy! Hey Unaisah. #speaker_left
What’s up? #speaker_self
What are you going to wear for Racial Harmony Day? #speaker_left
Yeeaah that’s coming up right? #speaker_self
A few of us are thinking of coordinating and going with a theme. Like same colour. #speaker_left
You know, like how some Malay families wear the same colour during Hari Raya? #speaker_left
My family doesn’t do that though. #speaker_self
Also isn’t it harder to get the same colour for different ethnic costumes? #speaker_self
Just try lah. Are you in or not? #speaker_left

+ [Agree] Why not? Could be fun. #speaker_self
    Okay okay! I’ll let the others know. We’ll figure something out. #speaker_left
+ [Decline] See first? I’m having enough trouble as it is figuring out what to wear. #speaker_self
    Okay sure. Let me know if you change your mind ya. Still got time. #speaker_left
- Hey Veron...? While you’re here, can I ask you something? #speaker_self
Sure, what is it? #speaker_left
Are you friends with any of your students on social media? #speaker_self
Oh no no no, no no. #speaker_left
That’s emphatic! #speaker_self
There’s a code of conduct. We can’t. #speaker_left
I know that, but that’s just on paper. Wouldn’t it really help to bond with students? #speaker_self
I mean, they already have our phone numbers for class chat groups. #speaker_self
I just think it could be useful to build that teacher-student relationship that our colleagues are always talking about. #speaker_self
Unaisah, I know you mean well, but this is really not a good idea. It’s a slippery slope. #speaker_left
You may think it’s okay now, but it can lead to a lot of problems later. #speaker_left
Okay, okay. #speaker_self
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
Just let them be. You want to hear about BGR? I even have BBR, GGR. Haha. I can give you all kinds. #speaker_left
And that’s … okay? #speaker_self
Why shouldn’t it be? #speaker_left
Oh I just thought...you know, given the religious affiliation for the school... #speaker_self
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
+ [Accept] I hope I don't regret this.
    ~ chapter_1_ending = 1
+ [Decline] No thanks.
    ~ chapter_1_ending = 2
+ [Ignore] Hmm.
    ~ chapter_1_ending = 3

-      -> unaisah_1_reflection

=== unaisah_1_reflection ===
#knot:unaisah_1_reflection
#ui:chapter_reflection
#reflection_id:14
Reflection 14  // change this to 14





-> END