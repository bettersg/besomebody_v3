/*


-> zhihao_1_1_narration 

=== zhihao_1_1_narration ===
#knot:zhihao_1_1_narration
#ui:narrator
#background:bg_zhihao_schooldrivewayatnight.jpg
Text

-> zhihao_1_1


=== zhihao_1_1 ===
#knot:zhihao_1_1
#ui:scene
#background:bg_zhihao_fathercaratnight.jpg
#speaker_right_image:cha_zhihao_rahman_normal.png
#speaker_right_name:Abah
Text



#knot:zhihao_1_intro
#ui:narrator
#background:zhihao_school.jpg
#music:zhihao_intro.mp3

#knot:zhihao_2_haircut_no
#ui:scene
#background:zhihao_school.jpg
#speaker_left_image:cha_zhihao_zhihaosmiling.png 
#speaker_left_name:Zhihao 
#speaker_right_image:cha_zhihao_ericangry.png 
#speaker_right_name:Eric   

#speaker_right_image:pixel.png 

#knot:zhihao_2_haircut_yes
#ui:whatsapp
#background:whatsapp.png
#chat_group_title:Gavin Wong
#chat_group_image:cha_zhihao_gavinprofileicon.jpg
#speaker_1_name:Gavin
#speaker_2_name:Eric
#speaker_3_name:Eric
#speaker_4_name:Eric
#timestamp:21.34

#ui:notification
#background:ui_zhihao_message.jpg
Gavin: help # message

#ui:twitch
#chat_group_image:xxx.jpg 
#chat_group_title:xxxx
#timestamp:xxxx (exclude the hr)
#speaker_1_name:Gavin
#speaker_2_name:Eric
#speaker_3_name:Eric
#speaker_4_name:Eric

 
FOR MINIGAMES DO NOT START A NEW KNOT
#knot:zhihao_2_minigame
#ui:mcq
#game_id:2
Minigame // must add some text
-> zhihao_2_3 // point to next section of story




*/

// DECLARE GLOBAL VARIABLES
VAR character_id = 4
// VAR chapter_1_ending = 0 
// VAR chapter_2_ending = 0 
// VAR chapter_3_ending = 0 
// VAR chapter_4_ending = 0 

-> zhihao_1_intro

// CHARACTER INTRODUCTION


=== zhihao_1_intro ===
#knot:zhihao_1_intro
#ui:narrator
#background:bg_zhihao_intro.jpg
#music:zhihao_intro.mp3
Lim Zhihao #title
VAR chapter_id = 1
~ chapter_id = 1
Eh, hi. I'm Zhihao.
I dunno what to say about myself cos my life not very interesting, lol.
I’m 18, I go to the same JC as Gavin. At first I wanted poly cos got all the chiobus there, and Aman is there also. 
Me and Aman stay on the same floor since P1. The whole floor only got both of us same age, so bo pian lor-- like or don’t like end up only can disturb each other, haha.
Anyway, end up I go JC. Pa always wanted that for me cos then I got better chance to go uni.
Two years ago, he passed away. The whole world came: His friends, his colleagues, his ex boss current boss all came to the wake. All say he was a damn solid guy. A star worker.
They won’t get Pa this type of person again. 
But Pa always used to tell me, be your own boss is best. 
So I started my own business. I do game streaming on Twitch, now got almost 1K viewers. Tipping page all I also have. I set up on StreamXclusive, so when my viewers are happy they donate. 
Guess what. Lots of them are happy. Hah. The money is good and getting better and better. 
Last month right, I diam-diam pay off all the bills, buy the groceries for dinner – yah, I know how to choose these things, okay. The kailan, the sotong, all I pick sibeh fresh one. Ma got a shock, hah!
Swee, man. It’s not much lah but you go ask my friends -- see if any of them can pay their house bills.  
It’s really not hard. The house only got me and Ma. Every night she will light one joss stick for Pa. And every night, I work on my business.
So that’s my life lor. I’m Zhihao.
And this is what it's like, to be me.
CHAPTER {chapter_id} #title
A Chinese New Year #title


-> zhihao_1_1_narration 

// START STORY

=== zhihao_1_1_narration ===
#knot:zhihao_1_1_narration
#ui:narrator
#background:bg_zhihao_car.jpg
Ma and I are on the way to Chinese New Year lunch with my uncles. We are late, and I don't like them.

-> zhihao_1_1


=== zhihao_1_1 ===
#knot:zhihao_1_1
#ui:scene
#background:bg_zhihao_car.jpg
#speaker_left_image:cha_zhihao_mother_normal.png
#speaker_left_name:Ma
Bai nian (greet them happy new year) to them for what. Bai nian also got nothing to say. #speaker_self
Cannot say like that. Pa won't be happy. #speaker_left
Now what time already? #speaker_left
Late liao lah. #speaker_self
What time is it?! #speaker_left
// Zhihao’s phone. The lock screen shows 12:44 PM, 25 January. 
12.45 #speaker_self
... #speaker_left
People want to louhei (a celebration activity for Chinese New Year) you think they wait for you ah. #speaker_self
Aiyah, Ma cannot anyhow leave early. If office need to OT then I bo pian (no choice) have to OT mah. Later other people see me leave, confirm not happy will make noise one. #speaker_left
A bit late nevermind lah. #speaker_left
A bit. Fang pi (pffft) lah, ‘a bit’. #inner_monologue
We not just late, we kan pua (damn) late - got difference hor. #speaker_self
We not kan pua late, lah! #speaker_left
Oi. First hor, you say don’t want to see your GuGus (uncles). Now you scared we late. You flipping prata ah, Boy? #speaker_left
// Background: A traffic jam. 
Wah lao eh, now traffic jam. #inner_monologue
+ Why you always like to be late? [] #speaker_self
    Orh, so Ma’s fault lah? Want to geh kiang (act smart) point finger you ask yourself, just now whose earphones lost ah? #speaker_left
    And lost that time who help you find? #speaker_left
    I put them on the table hor. You the one anyhow pack, ownself forget pack where. #speaker_self
    Who teach you to talk to me like that? No respect for your elders! #speaker_left
    I never even ask you to say thank you, you still want to talk back. Since when you become like this? Since when I teach you until like that? #speaker_left
+ If Pa were here, we won’t be late. [] #speaker_self
    Ah shit. I shoot my mouth too fast. #inner_monologue
    She looking at me liao. I better not look back. #inner_monologue
    You want to get out of the car? #speaker_left
    ... no. #speaker_self
    Pa, Pa. Everything also Pa. #speaker_left
    You think I forget he not here issit? #speaker_left
    Not say I anyhow want to be late, okay. Just now I no choice got to OT, not like you like that, earphones anyhow throw end up come back still need to help you find. Find already you still talk to me like that. #speaker_left
    Talk what? #speaker_self
    Don’t want to talk to you already, lah. #speaker_left
    Die already easy to say. See what people say when you still here. #speaker_left

+ [Stay Silent]
    I diam (stay quiet) better. #speaker_self
    Next time your earphones just keep in the same place. Just now if you know where you put we won’t be so late. #speaker_left
    ... #inner_monologue
    I so busy already you know. Cannot always help you find your things. #speaker_left
    ... #speaker_self
    Oi. You hear me anot? #speaker_left

- Green light can go liao. #speaker_self
//MOTHER smacks ZHIHAO on the head. 
OW. Wth I so old already she still smack me. #inner_monologue
People talking to you about one thing you don’t anyhow go change topic. #speaker_left
Behind people horn already lah. #speaker_self
Finally we moving liao. #inner_monologue
Today will be a bad day. I can feel it. #inner_monologue
// Background: The car is at a HDB carpark. #
#background:bg_zhihao_hdb_carpark.jpg
// SMARTPHONE: #
// You have arrived at your destination. #
Eh, sorry lah, Ma. #speaker_self
I know Ma wants to say something. But she won’t. Always like that. #inner_monologue
Faster help Ma take the orange from the boot. #speaker_left
The car still senget (not straight). #speaker_self
Haiyah just now you say we late already now still want to kaopei (kick up a fuss) car senget. Later you want your uncles to kaopei also issit? Faster go out take out the orange! #speaker_left

-> zhihao_1_2_narration 
 
=== zhihao_1_2_narration ===
#knot:zhihao_1_2_narration
#ui:narrator
#background:bg_zhihao_jigu_livingroom.jpg
At Ji Gu’s (1st Uncle’s) house for Chinese New Year. Dua Gu (2nd Uncle) is here too.
-> zhihao_1_2


=== zhihao_1_2 ===
#knot:zhihao_1_2
#ui:scene
#background:bg_zhihao_jigu_livingroom.jpg
#speaker_left_image:cha_zhihao_duagu_normal.png 
#speaker_left_name:Dua Gu
#speaker_right_image:cha_zhihao_jigu_normal.png
#speaker_right_name:Ji Gu

// dua gu + ji gu
Wah. Skip CNY one year, now dunno who is called what. #inner_monologue
Ji Gu! Dua Gu! Xin nian kuai le! (1st Uncle! 2nd Uncle ! Happy New Year!) #speaker_self
Wah! Ah Hah ah! Xin nian kuai le! Now you become so tall and handsome! #speaker_left
Haha. No lah. #speaker_self
Ah Hao! Everyone missed you! Every year hide at home thinkthinkthink not good for your mind, you know? #speaker_left
Lol, I wanna hide also nowhere to hide. #inner_monologue
We okay lah, Dua Gu. #speaker_self
Lai, lai.  Come, come, go eat the food. No need shy. #speaker_left
Last year, me and Ma had to skip CNY. When Pa passed away, we didn’t celebrate anything with anyone. #inner_monologue 
Supposed to be three years cannot celebrate, but I think if we three years don’t go, end up forever won’t go.  So this year – second year – we just go lor. #inner_monologue
Yah, everybody know nobody want to say, but every extended family got one ji shi (cornerstone) to hold everything together. Pa was that ji shi. #inner_monologue
No ji shi, no house. Without Pa, we cannot connect. #inner_monologue
// Background: A circular table in the dining room, with a plate of yusheng in the middle. There are other dishes on the side. #
#background:bg_zhihao_cnyfood.jpg
But I do miss the food lah... #inner_monologue
// Close-up of a bowl of soup (lotus root, perhaps) with ZH’s spoon. #
Wah. Looks shiok (tasty). #inner_monologue
But the rice they put where? #inner_monologue
Aiyah I better eat this first. Eat no need to talk. #inner_monologue
// Close-up of ZHIHAO’s plastic plate piled with yusheng crackers. #
Swee. Can take all the crackers for myself. #inner_monologue
Not like got cousin want to fight me for this. #inner_monologue
Hope nobody asks me anything if I keep eating. #inner_monologue
Wah lao eh, Dua Gu looking at me liao. #inner_monologue
// Back to // Background: A circular table in the dining room, with a plate of yusheng in the middle. There are other dishes on the side. #
Must study hard hor, Ah Hao. Make your Pa proud. #speaker_left
// mother + ji gu
#speaker_left_image:cha_zhihao_mother_normal.png
#speaker_left_name:Ma
#background:bg_zhihao_jigu_livingroom.jpg
You hear Dua Gu anot? Don't play so much computer. Everytime hide in your room play game, play until forget all your friends already. #speaker_left
Nowadays got this thing called Internet, people can log on and talk to each other. #speaker_self
Not good you know! Must go out more. #speaker_left
I got go out, what. #speaker_self
You only go to that temple. #speaker_right
Wah, Ah Hao so guai ah! Nowadays young people don’t follow their mother go temple one. #speaker_left
No, no. He help his friend at the Indian temple. Good boy, that Aman. #speaker_left
It’s called a gurdwara. #speaker_self
Hah? Call what? #speaker_left
Gurdwara. The Sikh temple. #speaker_self

// dua gu + ji gu
#speaker_left_image:cha_zhihao_duagu_normal.png 
#speaker_left_name:Dua Gu
Why your friend take you go Indian temple? #speaker_right
Cos my friend is Sikh. #speaker_self
Sick must go see doctor, pray no use one! #speaker_left
Haiyah you don’t talk anymore lah! Ah Hao, your friend Indian, correct? #speaker_right
Yah. Sikh. #speaker_self
Wah. First time I hear. You always follow your friends issit? #speaker_right
Wtf is he trying to say? That I dunno how to use my brain? #inner_monologue
Not say I follow. Friends must help each other lah. #speaker_self
Help each other is good!  Ah Hao hen guai. (Ah Hao is a very good boy.) #speaker_left
To Dua Gu everything also good. Jiak sai (eat shit) also good. Dua Gu, you good this, good that, end up all your words also sai ah! #speaker_left
Ah Hao, you work at the temple, the pay okay anot? I worry about you, you know. If not enough Ji Gu can help you find better job. Easy one. #speaker_left
It’s not work, I just help my friend pack donations for charity. #speaker_self
Why you waste time!  Ji Gu teach you. #speaker_left
Lai liao his nonsense lai liao. (Here he comes with his nonsense.) #speaker_self
When you young that time must learn to make money! #speaker_left
All your friends, they study so much go uni but then come out all dunno how to make money. #speaker_left
// ma + ji gu
#speaker_left_image:cha_zhihao_mother_normal.png
#speaker_left_name:Ma
My son, ah, he play computer can earn money, you know! Last month he pay off the utility bills. I want to pay also cannot ah! #speaker_left
Ah Hao, you tell your GuGus about your computer. Ma dunno how to explain this kind of thing. #speaker_left
+ [Smart Ma, smart. Earlier what you say about about my gaming?] #inner_monologue
    I show people how I play the games and I teach them how to win. #speaker_self
    VAR zhihao_1_explaingaming = 0
    ~ zhihao_1_explaingaming = 1
    Got a lot of players want to be my students or followers, so business is good. #speaker_self
   -> zhihao_1_2a
+ This kind of virtual thing how to make them understand?[] #inner_monologue
    Nothing much lah. #speaker_self
    ~ zhihao_1_explaingaming = 2
    I just teach people how to win games and they pay me lor. #speaker_self
   -> zhihao_1_2a 
+ Dunno what Ji Gu will say if I explain. Aiyah forget it lah.[] #inner_monologue
    No lah not say I really make money. #speaker_self
    ~ zhihao_1_explaingaming = 3
    I play for fun only. #speaker_self
    -> zhihao_1_2b


= zhihao_1_2a
#ui:scene
#speaker_right_image:cha_zhihao_jigu_normal.png
#speaker_right_name:Ji Gu 
Wah issit? One month how much you make? #speaker_right
+ [You lower the actual figure.] Around $1000. #speaker_self
    $1000! #speaker_right
    VAR zhihao_1_earning = ""
    ~ zhihao_1_earning = "lower"
    He thinking high or low? FML why I go shoot my mouth. #inner_monologue
    One day you work how long? #speaker_right
    Maybe four or five hours at night. Cos in the day I got school. #speaker_self
    Wah school and work very difficult! #speaker_right
    Mei shi lah, Ji Gu. (It’s not an issue lah, Ji Gu.) #speaker_self
    I like to work. #speaker_self
+ [You inflate the actual figure.] Around $2000. Sometimes can go up to $3000. #speaker_self
    $3000! #speaker_right
    ~ zhihao_1_earning = "inflate"
    He’d better say it’s good money. Cos it’s good money... I think. #inner_monologue
    If one month $0 then another month $3000 means your income very unstable!  #speaker_right
    Like that very hard to plan your life. And you got school also. #speaker_right
    You say until like that ah, doesn’t sound like a stable job leh. #speaker_right
    No lah is quite stable one. #speaker_self
    You one week work how long? Every week the same anot? #speaker_right
    Most days are the same, but it’s up to me. #speaker_self
    So actually you can work more, lah. But because you still studying you cannot, right? #speaker_right
    Yah. #speaker_self
    Eh, Ah Mei! You want your son to work or study? #speaker_right
    Tsk, of course his studies come first. He can do both, he’s okay. #speaker_right
    Not good lah. If he must concentrate on school, you must find passive income. #speaker_right
    Mei shi lah, Ji Gu. (It’s not an issue lah, Ji Gu.) #speaker_self
    I like to work. #speaker_self

+ [You state the actual figure.] Average about $2000. #speaker_self
    $2000! #speaker_right
    ~ zhihao_1_earning = "actual"
    He happy or not? #inner_monologue
    One day you work how long? #speaker_right
    Maybe four or five hours at night. Cos in the day I got school. #speaker_self
    Wah, nowadays one income very difficult one. #speaker_right
    Ma looking at me liao. Bo pian lah, Ma. If I talk more about my game business he’ll start trying to give me crap advice. #inner_monologue
    We okay lah, Ji Gu. #speaker_self

- -> zhihao_1_2b

= zhihao_1_2b
#ui:scene
#speaker_left_image:cha_zhihao_duagu_normal.png 
#speaker_left_name:Dua Gu
#speaker_right_image:cha_zhihao_jigu_normal.png
#speaker_right_name:Ji Gu
Aiyah, if like that ah, better rent out your place. Rent to two or three tenant lah. Like that money and time both also have. #speaker_right
Our other room cannot put two people. #speaker_self
Then take the biggest room lah! Ah Mei, master bedroom ho boh? (Ah Mei, is the master bedroom okay?) #speaker_right
You take the smaller room, Ah Hao take his own room… bo boon dueh (no problem/ problem solved) lor! #speaker_right
Ma’s face is turning white.  #inner_monologue
I want to tell her don’t waste time reply. That we can give excuse and zao.  #inner_monologue
But then ah, I also want to punch him. Punch then zao. This guy sibeh kiam pa [asking to be beaten up] sia.  #inner_monologue
But I can’t.  #inner_monologue
One.  #inner_monologue
Two.  #inner_monologue
Three.  #inner_monologue
Breathe out.  #inner_monologue
Pa, I’m trying lah. I’m really trying.  #inner_monologue
Ah Mei, if you don’t want to rent out is okay one. Renting not easy also. #speaker_left
Good, Dua Gu feels bad about it.  #inner_monologue
If you and your Ma want to rent your place, best you rent only to the Singaporean Chinese. Safest. #speaker_left
You ask Ji Gu what happened, that time he rent his place to the foreigner. What country he from ah, Ji Gu? #speaker_left
Country ah? India or Pakistan-- haiyah I can’t remember. Wah, that time I rent to him cos he promised to pay 20 percent more. #speaker_right
Uncle that time kum gong (stupid)-- all my friends got warn me, never rent to foreigners cos they give a lot of headache. But I kum gong lor, only listen to the money. #speaker_right
I tell him, okay, you can go everywhere, you can use everything, just cannot do cooking, cannot bring your friend stay overnight. He say to me, “Okay boss”, shake my hand. #speaker_right
Then ah, not even one week-- lucky Ji Gu come back from work early-- I see the house so messy and the smell like spoiled food like that. #speaker_right
That’s why we cannot trust foreigners. Not say Uncle want to criticise them, but is the truth. #speaker_right
// ma + ji gu
#speaker_left_image:cha_zhihao_mother_normal.png
#speaker_left_name:Ma
As long as they only do light cooking, like cook Maggie Mee, I’m okay. But if cook curry or use the oven then of course different lah. #speaker_left
Wah lao eh, Ma. #inner_monologue
We where got oven. Also hor, don’t say other people cook curry. You also cook curry lor. #speaker_self
I cook curry is not every day, okay! #speaker_left
Aman’s mother make you the curry you still eat right. #speaker_self
Aman is different. I know his mother so long, of course we exchange food. #speaker_left
So if Aman’s mother rents our place, you’ll let her cook curry? #speaker_self
You don’t mei da mei xiao (don't be cheeky) lah, boy. #speaker_left
Your friend different! Singaporean Indian different. I’m saying the Indian Indians. Their culture too different from ours already. Cannot mix. You add fire and water together what happen, I ask you? #speaker_right
Wah piang he really wait for me to answer. #inner_monologue
What. #speaker_self
End up both also disappear! #speaker_right
And they very hao lian (arrogant), you know. You think they see your friend as equal? They look down on Singaporean Indians like him. You don’t believe you can ask your friend – he got mix with the Indian-Indians anot? #speaker_right
He – #speaker_self
Of course not lah. I see this kind of thing so many years already. They won’t change one. #speaker_right
Diam lah, idiot. #inner_monologue
Orh. #speaker_self
Ah Hao, you still young, so must be careful what type of friend you help. Cannot suka suka (anyhow) trust anybody hor – don’t anyhow listen to Dua Gu. #speaker_right

+ [Remain polite and subtly refute Ji Gu.] It’s okay lah, Ji Gu. I trust Aman with my life. #speaker_self
    VAR zhihao_1_jigu = 0
    ~ zhihao_1_jigu = 0
    Mmm. Aman is a good boy. #speaker_left
    I know you trust your friend. #speaker_right
    But listen to me. Ji Gu is sixty years old liao, everything I also see already. #speaker_right
    What I tell you is the truth. And sometimes the truth is ugly. #speaker_right

+ [Be a smart alec.]  Ji Gu, I trust Aman. But Pa said sometimes cannot trust family to take care of us even when we are in need.  #speaker_self
    ~ zhihao_1_jigu = 1
    OI! Ni bi zui ah, ni!  (You shut your mouth, ah, you!) #speaker_left
    Hahaha. Ah Hao is growing up fast.  #speaker_right
    Ah Mei, don’t have to scold him. Boys are boys.  #speaker_right
    He winked at me. Ugh. Forget it. #inner_monologue


+ [Remain passive to kill the conversation.] Orh. #speaker_self
    ~ zhihao_1_jigu = 2
    Maybe you don’t agree. But one day you’ll understand why I say this. #speaker_right
    Orh. #speaker_self
    Trust no one. Only look out for yourself. #speaker_right
    Wah lao he zim lor sor (very long-winded)  #inner_monologue
    Ok ok, Ji Gu. #speaker_self

- I need to leave. #inner_monologue
I go toilet. #speaker_self


-> zhihao_1_3

=== zhihao_1_3 ===
#knot:zhihao_1_3
#ui:narrator
#background:bg_zhihao_jigu_entryway.jpg
I walked to the toilet, but halfway there I stopped and turned back to hear my ma and Ji Gu arguing. 
I don't think they see me, but I can overhear everything. 
Whenever they speak only Hokkien, it’s always something bad. Bad and complicated. They assume I don't understand, but obv I can.

#ui:scene
#background:bg_zhihao_jigu_entryway.jpg
#speaker_left_image:cha_zhihao_mother_normal.png
#speaker_left_name:Ma
#speaker_right_image:cha_zhihao_jigu_normal.png
#speaker_right_name:Ji Gu
Cannot! I really cannot! #speaker_left
//Back and forth of MOTHER’S and JI GU’s faces [make it clear that they are talking to each other]. The following conversation takes place in full Hokkien, translated into standard English. 
Didn’t you just say you don’t want to rent out your place? That means you have one extra room. Why Ba cannot stay with you? #speaker_right
Do we need to discuss this now? #speaker_left
Let’s not run away from the problem. #speaker_right
The old folks’ home just restructured their fees and the subsidy brackets this month. I’ve always been very straight with you: $400 is the most I can afford. Our brother can only give $200. #speaker_right
You’re telling me now you can afford the extra $450 to keep Ba there? #speaker_right
Wtf, Ah Gong’s home fees increase so much? Why Ma always never tell me this kind of thing? #inner_monologue
I cannot say out loud, but I really dunno how it’s fair that Ah Gong is still here when his soul is long gone. Zero dignity. #inner_monologue
I can’t remember when Ah Gong stopped talking. But I remember our last convo. #inner_monologue
He thought I stole his comb so he threw his cup at me. His baby sip-cup. Then he screamed and called me names. And then he cried and cried and cried. #inner_monologue
He cannot talk anymore. He cannot walk anymore. He cannot eat anymore. He should have died long ago. #inner_monologue
I wish he died and not Pa. #inner_monologue
I wish it so much. #inner_monologue
Why can’t Ba stay with you? You stay by yourself, you have three rooms. #speaker_left
I have to travel to JB every two weeks for work, how’d you expect me to care for Ah Gong? ##speaker_right
We can all chip in for a maid – #speaker_left
Siao ah! How is a maid trained to treat his bedsores, give him his insulin shots? And you think they’re okay with changing his diapers? Even the nurses complain he always fights them off and scratches them. #speaker_right
Remember what I said about trust. Don’t ever trust maids to be left alone with  Ah Gong. #speaker_right
I’m so busy already juggling a job and a kid. You know it. #speaker_left
Kid? Wah lao eh, Ma. #inner_monologue
{ zhihao_1_earning: 
    - 1:  Then what? You want your son to chip in too? He’s still in school! #speaker_right
        Don’t forget, you have to declare your son’s income if you want him to help. #speaker_right
        If it goes over the income cap, we lose our subsidy.#speaker_right
    - 2: Your son just said he isn’t earning a stable income. And he’s still a student. How is it fair on him to shoulder the fees? #speaker_right
        Stupid. Why did I go bluff him about my income.  #inner_monologue
    - else: Your son said he isn’t even earning yet. You want him to stop focusing on his studies to look for a job? That’s selfish to the boy right?  #speaker_right
        Stupid. Why did I go bluff him about my income. #inner_monologue
}
I’ll think of something. Don’t bring my son into this.   #speaker_left
$450 per month. Doable lah. #inner_monologue
It’s doable for me if I go pro. I'm almost good enough already. #inner_monologue
I just need to push myself harder. #inner_monologue
Pa would have done the same. #inner_monologue
-> zhihao_1_4_narration


=== zhihao_1_4_narration ===
#knot:zhihao_1_minigame
#ui:mcq
#game_id:11
Minigame 11 // must add some text


#knot:zhihao_1_4_narration
#ui:narrator
#background:bg_zhihao_bedroom.jpg
When I’m not streaming, I'm playing every night. I play this first-person shooter game called Alphas.
It's a multiplayer game so I team up with other players. Also got high-skill ceiling so I don’t have limits on improving.
Last time I always play with Gavin and Aman. Gavin I met on Discord first, then we found out we’re from the same JC. 
After that right, we always eat bak chor mee (minced pork noodles) together when we share tutorial break. 
He eat so much until his IGN (in-game name) also become ‘bakchormee’, lol.
Now I can’t remember how long ago all of us played together.
They're busy lah.
But if you don't ask then you also don’t know right?

-> zhihao_1_4 

=== zhihao_1_4 ===
#knot:zhihao_1_4
#ui:whatsapp
#background:whatsapp.png
#chat_group_title:Aman Singh
#chat_group_image:ico_aman.png
#speaker_1_name:Aman
#timestamp:22.12
Yo! #speaker_self
Eh bro #speaker_self
Sup! #speaker_1
You free to play Alphas later? #speaker_self
Bro I want to but I can’t :( #speaker_1
Got play rehearsals the whole month #speaker_1
Lol play what? #speaker_self
As in drama prac #speaker_1
I’m playing Vladimir in Waiting for Godot #speaker_1
Ohhhh #speaker_self
Cool #speaker_self
Ikr, I thought I screwed up the audition but they liked it #speaker_1
Congrats bro! #speaker_self
Got any chiobus in the play? #speaker_self
HAHAHA zero chiobus. It’s just two characters who are both dudes and I’m a co-lead. 😂😂😂 Sorry. #speaker_1
+ [Sigh, next time maybe I shouldn't try to act smart!] 
    #ui:scene
    #background:bg_zhihao_bedroom.jpg
    Wah lao next time I should shuddup. #inner_monologue
    Everytime Aman talk about his drama club I dunno what he talking sia.) #inner_monologue
    #ui:whatsapp
    #background:whatsapp.png
    #chat_group_title:Aman Singh
    #chat_group_image:ico_aman.png
    #speaker_1_name:Aman
    VAR zhihao_1_aman = 0
    ~ zhihao_1_aman = 0
    //Shift back to phone screen #
    LOL better still #speaker_self
    No competition #speaker_self
    The performance is on the 12th next mth. You free to watch? #speaker_1
    Ofc. Wanna laugh at you forget your lines lol #speaker_self
    LOOOOL #speaker_1
    Settle! Will save you tix #speaker_1
    Have fun bro! Say hi to Gavin for me #speaker_1

+ [Why didn't he just explain this instead of acting smart?]
    #ui:scene
    #background:bg_zhihao_bedroom.jpg
    Wah lao malu sia (Sigh, I'm so embarassed).  #inner_monologue
    Why Aman always talk about this kind of atas-atas (high-class) drama and expect the whole world to straightaway know?  #inner_monologue
    And he never explains first until I screw up. I always feel damn kok.  #inner_monologue
    ~ zhihao_1_aman = 1
    //Shift back to phone screen #
    #ui:whatsapp
    #background:whatsapp.png
    #chat_group_title:Aman Singh
    #chat_group_image:ico_aman.png
    #speaker_1_name:Aman
    Next time just say you lead lah #speaker_self
    How I know from the title #speaker_self
    Haha I thought you read it before for sch? #speaker_1
    Not everyone memorise what they read in class la #speaker_self
    Haha it’s okay bro, chill #speaker_1
    A lot of ppl also have never heard of Waiting for Godot either  #speaker_1
    Anw you free on the 12th next mth? #speaker_1
    That’s our first show #speaker_1
    I see how #speaker_self
    Don’t just see lah, come watch and enjoy #speaker_1
    Will let you know #speaker_self
    Okay, update me yeah. Will save you tix #speaker_1
    And say hi to Gavin for me #speaker_1
// back to main screen
#ui:scene
#background:bg_zhihao_bedroom.jpg
- Aman’s practice is damn hardcore. And people take him seriously. #inner_monologue
Sometimes, next to him, I feel damn suaku (uninformed). #inner_monologue

-> zhihao_1_4a 

=== zhihao_1_4a ===
#knot:zhihao_1_4a
#ui:whatsapp
#background:whatsapp.png
#chat_group_title:Gavin Tan
#chat_group_image:ico_nadia_gavin.png
#speaker_1_name:Gavin
#timestamp:22.12
Eh bakchormee #speaker_self
you free to play Alphas? #speaker_self
Hey bro #speaker_1
Sorry I'm not free today #speaker_1
Am out with Nadia #speaker_1
+ Next time then [] #speaker_self
    Enjoy your paktor #speaker_self
    Thanks! Enjoy your sesh with Aman:) #speaker_1
    #ui:scene
    #background:bg_zhihao_bedroom.jpg
    Sucks that both my bros don’t care about gaming anymore. Seriously I feel damn loser sia. #inner_monologue
    But to show it and kenna pity is worse. #inner_monologue
    #ui:whatsapp
    #background:whatsapp.png
    #chat_group_title:Gavin Tan 
    #chat_group_image:ico_nadia_gavin.png
    #speaker_1_name:Gavin
    You free to catch up next Thu? #speaker_self
    I’m free after sch but not in the evening #speaker_1
    Lunch at the usual? #speaker_self
    Bak Chor Mee stall? Cannnn #speaker_1
    Don’t pangseh ah #speaker_self
   
+ Wahlao you pangseh me 3x alr[] #speaker_self
    #ui:scene
    #background:bg_zhihao_bedroom.jpg
    He spend so much time with Nadia I don't think there'll be a next time, for a long time. #inner_monologue
    #ui:whatsapp
    #background:whatsapp.png
    #chat_group_title:Gavin Tan 
    #chat_group_image:ico_nadia_gavin.png
    #speaker_1_name:Gavin
    Haha really sorry bro #speaker_1
    How abt lunch next Thu? My treat #speaker_1
    Better not be halal #speaker_self
    Eh dun angry lah. Usual bakchormee stall? #speaker_1
    You don’t pangseh ah #speaker_self
    
- Yessir! #speaker_1

-> zhihao_1_5

=== zhihao_1_5 ===
#knot:zhihao_1_5
#ui:twitter
#chat_group_title:Twitter for @ahao_gamer
#chat_group_image:ico_zhihao.png
#speaker_self_tag:ZHtag
#speaker_self_image:ico_zhihao.png
#timestamp:21.34
#likes:5 ❤️
twitch.tv/ahao_gamer surprise stream in 15 min. drops enabled! get a free skin in game every 3 hours for watching #thread_header

-> zhihao_1_5a

=== zhihao_1_5a ===
#knot:zhihao_1_5
#ui:twitch
#chat_group_title:Twitch Stream - @ahao_gamer
#chat_group_image:bg_zhihao_twitchgame.gif
#speaker_self_name:ahao_gamer
#speaker_1_name:silentsword
#speaker_2_name:pang
#speaker_3_name:fuzzboar_gaming
#speaker_4_name:ineedhealing
#speaker_5_name:anselm_main
#speaker_6_name:graphene
#speaker_7_name:d1amond
#speaker_8_name:zapper1
!drops #speaker_1
stop asking for drops as soon as he starts la idiot. #speaker_3
no squad mode? #speaker_2
Dunno why I'm not feeling the game...	#inner_monologue	
losing streak :sweat #speaker_2
noob teammates #speaker_4
#speaker_4_name:anselm_main
wth is up with @ahao_gamer’s positioning #speaker_5
eh @ahao_gamer please carry the game #speaker_6
wah @ahao_gamer clean sweep - sick moves man #speaker_2
eh where is @bakchormee #speaker_3
Bakchormee. Short-form BCM. Aka Gavin. Aka the traitor.	#inner_monologue	
yeah @bakchormee joining? #speaker_2
+ @bakchormee went paktor with his gf so cmi today [] #speaker_self
+ Dunno la, anyway can focus on the game or not [] #speaker_self
- oof #speaker_2
poor thing #speaker_7
is @bakchormee eating bakchormee with her  #speaker_6
She malay so cannot eat BCM  #speaker_self
LMAOOOOO. bakchormee not halal!!!  #speaker_2
@ahao_gamer which bakchormee you talking abt lollll #speaker_7
the food lah then what  #speaker_self
lolol @ahao_gamer innocent to the max #speaker_2
BOTH NOT HALAL LAH  #speaker_2
HAHAHAHAHAHA nice one @pang #speaker_6
@bakchormee is haram now  #speaker_6
Unless he becomes Ahmad hahaha  #speaker_6
Maybe she malay but not muslim? @ahao_gamer pretty anot? Got pic? #speaker_7
These idiots always thinking of chiobus. Like that how to complete the game? Annoying sia. #inner_monologue
Shuddup everyone let’s focus  #speaker_self
why @bakchormee go for minah?? #speaker_8
+ oi guys FOCUS [] can we talk about game tactics only pls  #speaker_self
+ eh dun be idiots. []  he's not here no point talking about his life when you guys are sucking so hard at the game  #speaker_self
- A min of silence for our bro in the halal zone… #speaker_5
RIP @bakchormee #speaker_6
So fast they already stop paying attention to me. #inner_monologue
They only listen to my gaming tips, but they don’t when it’s other things. #inner_monologue
I really dunno whether they follow me for my game play, or for me. #inner_monologue
lolol someone better tell BCM he cannot eat pork anymore #speaker_5
let’s vote on a new name for him  #speaker_6
Mustafa!!! #speaker_2
from Lion King?? #speaker_7
MUFASA LAH BODOH  #speaker_6
BODOH! I VOTE BODOH! #speaker_5
If Gavin were here right, confirm he will control the group from the start. Like damn easy like that. Everybody listens to him. #inner_monologue
But I’m the best player. Their coach! Where’s the respect for me? #inner_monologue
This I cannot understand. People like Gavin don’t have to do anything and can make the whole world listen to them, and people like me try and try and still cannot. #inner_monologue

-> zhihao_1_5b

=== zhihao_1_5b ===
#knot:zhihao_1_5b
#ui:notification
#background:ui_zhihao_message.jpg
Gavin: Hey bro, really sorry #message
Gavin: Turns out Thu is Nadia's bday #message
Gavin: I'll let you know a good day asap #message
#ui:narrator
#background:bg_zhihao_bedroom.jpg
See, see? He’ll say another time, then another time, then another time.
They’re correct. The more Gavin and that girl become serious, the more he will change. 
And then one day he won’t be Gavin anymore.
Haiz. He confirm will choose her over me lah. Always the gf, never the bro.

-> zhihao_1_5c

=== zhihao_1_5c ===
#knot:zhihao_1_5c
#ui:twitter
#chat_group_title:Twitter:  @ahao_gamer
#chat_group_image:ico_zhihao.png
#speaker_self_tag:ahao_gamer
#speaker_self_image:ico_zhihao.png
#speaker_1_name:Ervyn
#speaker_1_tag:d1amond
#speaker_1_image:ico_aman_lukman.png
#speaker_2_name:Eric
#speaker_2_tag:EricTag
#speaker_2_image:ico_aman_family.png
#speaker_3_name:John
#speaker_3_tag:JohnTag
#speaker_3_image:ico_aman_selinder.png
#timestamp:23.41
#likes:0 ❤️
Bakchormee has a minah gf, so he pangseh (ditched) us. RIP to all our bakchormee outings. RIP to my best bro’s gamer tag. His new name must be malayu. WDYT of Bodoh? #thread_header
I know quite bad lah, but I really buay tahan (cannot take it) liao. So many games now I’m the only one playing – everytime last minute Gavin will give the same story. Everytime I finally get to game with him, he will disappoint. #inner_monologue
Then the team’s rubbish all I have to handle myself. #inner_monologue
And I cannot handle sia. I crack my head from this also still dunno why. But it sucks lah. #inner_monologue

@ahao_gamer, could you switch? We're doing a deathball comp. #speaker_1



-> zhihao_1_5d

=== zhihao_1_5d ===
#knot:zhihao_1_5
#ui:twitch
#chat_group_title:Twitch Stream - @ahao_gamer
#chat_group_image:bg_zhihao_twitchgame.gif
#speaker_self_name:ahao_gamer
#speaker_1_name:graphene
#speaker_2_name:ineedhealing
#speaker_3_name:mechmaster
#speaker_4_name:anselm_main
#speaker_5_name:d1amond
A GIRL GAMER. hullo @nur_ayesa #speaker_1
Wahlao. Now got girl confirm distract everyone. #inner_monologue
gurl gamer #speaker_2
eh her name sound malay... maybe it's bakchormee's gf #speaker_3
ask if she's chio #speaker_3
maybe not... if she's chao ta (burnt / too dark) lol #speaker_1
lololololol 	#speaker_2			   
at least not indian #speaker_1
Eh wth. They can joke around about other ppl but now they are insulting Aman. I need to stop the convo #inner_monologue
😂😂 	#speaker_2	
+ [Tell @graphene off for that comment] @graphene get out of the stream #speaker_self
    If anyone else wanna talk s*** about @amanonfire they can leave too #speaker_self
    VAR zhihao_1_racistgamer = ""
    ~ zhihao_1_racistgamer = "scold racists"
    wth i’m just saying in general not abt @amanonfire #speaker_1
    idiot #speaker_1
    [graphene has left the chat] #speaker_twitch
    bye then #speaker_2
    [ineedhealing has left the chat] #speaker_twitch
    was nice knowing you all #speaker_3
    [mechmaster has left the chat] #speaker_twitch
    Whatever, they suck anyway. #inner_monologue
    Soz about that #speaker_Self
    they got no spine #speaker_2
    lol #speaker_4

+ [Switch topics abruptly] Hey new girl @nur_ayesa, you wanna share your insta? #speaker_self
    Maybe if I chat with the new girl they will back off. Maybe even can score some respect from these idiots. #inner_monologue
    ~ zhihao_1_racistgamer = "switch topic"
    Wah she go mute my voice chat and exit the stream. #inner_monologue
    Okay lah, bad move on my part sigh. #inner_monologue
    ??? low blow man #speaker_5
    no one cares about your opinion @d1amond #speaker_2
    I keep quiet better. #inner_monologue
    Tsk. Everything is going to shit. #inner_monologue
    @ahao_gamer so quiet  #speaker_5
    hes concentrating lol #speaker_3

+ [Scold them for not playing well]  All of you THROWING (losing) SIA! #speaker_self
    ~ zhihao_1_racistgamer = "focus on game"
    You all boosted or what? Go back play tutorial sua #speaker_self
    Eh you all idiots cannot play properly still want to play with me. #speaker_self
    yeah show them #speaker_1
    Huh? How come I kena warning for toxic behaviour? who complain about me? #inner_monologue
    lol @ahao_gamer you'll be banned soon #speaker_5
    This game is going to shit. No Gavin, no Aman, and no respect for me.  #inner_monologue
    shuddup la #speaker_2
- eh do you all want to train or not la wth. talk less shoot more. #speaker_self
#chat_group_image:bg_zhihao_twitchmother.jpg
eh who is that behind @ahao_gamer?  #speaker_5
omg ma is staring right into the webcam behind me #inner_monologue
wth how long has she been there #inner_monologue
is that ahao_gamer's ma??! LOL uhoh you're in trouble bro #speaker_1
+ [Turn off the webcam and say goodbye]
    #chat_group_image:black.jpg
    THE BEST STREAMER has to log off! SEE YOU IDIOTS TMR! #speaker_self
    lol confirm kena scolded by mother lololol #speaker_2
+ [Quickly exit] 
    #chat_group_image:black.jpg
    uh guys sorry need to go #speaker_self
    play again tmr #speaker_self
    lol confirm kena scolded by mother lololol #speaker_2
- -> zhihao_1_6

=== zhihao_1_6 ===
#knot:zhihao_1_6
#ui:narrator
#background:bg_zhihao_bedroom.jpg
Sigh training last night wasn't great. 
Oh well. Let's see if anybody liked my tweet.

#knot:zhihao_1_6a
#ui:twitter
#chat_group_title:Twitter for @ahao_gamer
#chat_group_image:ico_zhihao.png
#speaker_self_tag:ahao_gamer
#speaker_self_image:ico_zhihao.png
#speaker_1_name:Ervyn
#speaker_1_tag:d1amond
#speaker_1_image:ico_aman_lukman.png
#speaker_2_name:Gerald
#speaker_2_tag:graphene
#speaker_2_image:ico_aman_family.png
#speaker_3_name:Anselm Is The Best
#speaker_3_tag:anselm_main
#speaker_3_image:ico_aman_selinder.png
#timestamp:08.18
#likes:1132 ❤️ | +108 new followers
@bakchormee has a minah gf, so isn't playing with us. RIP to all our bakchormee outings. RIP to my best bro’s nickname. His new name must be malayu. WDYT of Bodoh? #thread_header
LOL #speaker_1
haha BODOH BODOH BODOH #speaker_3
holy cow this is my most liked tweet ever! 108 new followers in one day?! #inner_monologue
RIP to our bro lol.  #speaker_2

+ [Delete the tweet]
    -> chapter_1_ending_1
+ [Keep the tweet up for publicity]
    -> chapter_1_ending_2
+ [Keep the tweet up because it will blow over eventually]
    -> chapter_1_ending_3



=== chapter_1_ending_1 ===
#knot:chapter_1_ending_1
#ui:twitter
#chat_group_title:Twitter for @ahao_gamer
#chat_group_image:ico_zhihao.png
#speaker_self_tag:ahao_gamer
#speaker_self_image:ico_zhihao.png
#speaker_1_name:Ervyn
#speaker_1_tag:d1amond
#speaker_1_image:ico_aman_lukman.png
#speaker_2_name:Gerald
#speaker_2_tag:graphene
#speaker_2_image:ico_aman_family.png
#speaker_3_name:Anselm Is The Best
#speaker_3_tag:anselm_main
#speaker_3_image:ico_aman_selinder.png
#speaker_4_name:Drew
#speaker_4_tag:zinger2003
#speaker_4_image:ico_aman_selinder.png
#timestamp:08.18
#likes:1132 ❤️ | +108 new followers
@bakchormee has a minah gf, so isn't playing with us. RIP to all our bakchormee outings. RIP to my best bro’s nickname. His new name must be malayu. WDYT of Bodoh? #thread_header 
VAR chapter_1_ending = 1
~ chapter_1_ending = 1
FML. Why I go write that? How come got so many likes? I better delete now.  #inner_monologue
-> chapter_1_ending_1a

=== chapter_1_ending_1a ===
#knot:chapter_1_ending_1a
#ui:twitter
#chat_group_title:Twitter for @ahao_gamer
#chat_group_image:ico_zhihao.png
#speaker_self_tag:ahao_gamer
#speaker_self_image:ico_zhihao.png
#speaker_1_name:Ervyn
#speaker_1_tag:d1amond
#speaker_1_image:ico_aman_lukman.png
#speaker_2_name:Gerald
#speaker_2_tag:graphene
#speaker_2_image:ico_aman_family.png
#speaker_3_name:Anselm Is The Best
#speaker_3_tag:anselm_main
#speaker_3_image:ico_aman_selinder.png
#speaker_4_name:Drew
#speaker_4_tag:zinger2003
#speaker_4_image:ico_aman_selinder.png
#timestamp:08.21
[post deleted] #thread_header    
Gone already.Leng jing. (Calm down). Crap. Should I say sorry?  #inner_monologue
. #clear
+ [Apologise] got caught up in the moment, sorry for that #speaker_self
    VAR zhihao_1_tweet_apologise = true
    ~ zhihao_1_tweet_apologise = true
    sorry for what? #speaker_4
+ [Don't Apologise] I'll just let the internet forget. #inner_monologue
    ~ zhihao_1_tweet_apologise = false
    No big deal right?  #inner_monologue
- -> zhihao_1_reflection


=== chapter_1_ending_2 ===
#knot:chapter_1_ending_2
#ui:narrator
#background:bg_zhihao_bedroom.jpg
FML that tweet went big. #inner_monologue
~ chapter_1_ending = 2
But got a lot of people support. Ji Gu was right lah -- the truth sometimes can be ugly, but people know the truth when they see it.  #inner_monologue
Cos true that Gavin cannot do a lot of things now. I just saying the truth.  #inner_monologue
Aiyah I should leave it up and let it get me greater reach.  #inner_monologue
Maybe more people will see my stuff and follow me.  #inner_monologue
Most of the commenters like my joke. They know it’s harmless.  #inner_monologue
Means I'm not doing anything wrong. #inner_monologue

-> zhihao_1_reflection


=== chapter_1_ending_3 ===
#knot:chapter_1_ending_3
#ui:narrator
#background:bg_zhihao_bedroom.jpg
Why I go write that? #inner_monologue
~ chapter_1_ending = 3
Aiyah. If it’s up then it’s seen already. #inner_monologue
If no one say anything means no one cares lah. Not like I bigshot influencer like that. #inner_monologue
Got so many other tweets people can read. #inner_monologue
The people who care will get angry over someone else. #inner_monologue
They'll all forget about this. #inner_monologue

-> zhihao_1_reflection


=== zhihao_1_reflection ===
#knot:zhihao_1_reflection
#ui:chapter_reflection
#reflection_id:11
Reflection 11



-> zhihao_2_intro












// CHAPTER 2





=== zhihao_2_intro ===
#knot:zhihao_2_intro
#ui:narrator
#background:bg_zhihao_bedroom.jpg
Got a lot of things happen since my last stream. 
My viewers growing like no tomorrow. 
//Flashback scenes of Chapter 1 alongside each following sentence ZHIHAO makes (viewership numbers, streaming screen, tweet and ‘like’ count).
Maybe cos my gameplay sibeh zhai (damn good). 
A lot of people liked my tweet. They say funny. 
Maybe I can add comedy to my list of skills haha.

{chapter_1_ending_1:
    That tweet alone now got more than thousand likes and retweets man, and lots of people followed me after that.
    I left it up, cos it was the truth. Gavin chose her over us.
    And I must stand by the truth, right?
}
{chapter_1_ending_3 or chapter_1_ending_2:
    Steam sia (feels good), so many people liked it. 
    That tweet had a few hundred likes while it was up.
    But I felt bad lah, better delete.
    Even if it's the truth, I guess no need to say this kind of thing online.
}
Anyway, now  my twitch follower numbers are so high, business is damn good.
I even got an email invitation from the best gaming team in Singapore!
~ chapter_id = 2
CHAPTER {chapter_id} #title
Team Work #title

-> zhihao_2_1

=== zhihao_2_1 ===
#knot:zhihao_2_1
#ui:email
#emailheader:Read Email
#emailfrom:Elite Gamers <ian.lim@elitegamers.sg>
#emailto:Zhihao <zhihao@email.com>
#emailfromicon:ico_zhihao_elite.png
#emailsubject:Invitation to Alphas Tryouts

Hi Zhihao, /n /n Team Singapore Elites notes your gaming prowess on Twitch, and hence would like to invite you to our Alphas tryouts! It will take place this Saturday at 2.00 PM at The Chaos Arena. /n /n Let us know about your participation by this Wednesday. We hope that you can make it! /n /n Best, /n Ian Lim  /n  Lead Coordinator, Elite Gamers Singapore #speaker_1

#ui:narrator
#background:ui_emailinbox.png
So awesome. If I can join them, I can earn so much more. Plus they got a lot of fans. 
Eh how to reply ah. Is formal correct anot? Or informal? Sekali (what if) I use wrong then he think I not zai (impressive).
+ [Formal] -> zhihao_2_1a
+ [Informal] -> zhihao_2_1b

= zhihao_2_1a
#knot:zhihao_2_1a
#ui:email
#emailheader:Compose Email
#emailto:Univ Housing <admin@univ.edu.sg>
#emailfrom:Elite Gamers <ian.lim@elitegamers.sg>
#emailfromicon:ico_zhihao.png
#emailsubject:Invitation to Alphas Tryouts
#replyemaildate:On Wed 6 Oct 2021, Univ Housing <admin@univ.edu.sg> wrote:  
#replyemailtext:Hi Zhihao, /n /n Team Singapore Elites notes your gaming prowess on Twitch, and hence would like to invite you to our Alphas tryouts! It will take place this Saturday at 2.00 PM at The Chaos Arena. /n /n Let us know about your participation by this Wednesday. We hope that you can make it! /n /n Best, /n Ian Lim  /n  Lead Coordinator, Elite Gamers Singapore
Dear Mr Lim, #speaker_self
Thank you for the opportunity. #speaker_self
I can make it for the tryouts on Saturday at 2.00 PM. #speaker_self
Sincerely, #speaker_self
Lim Zhihao  #speaker_self
#ui:narrator
#background:ui_emailsending.png
.
#background:ui_emailsent.png
.

-> zhihao_2_2


= zhihao_2_1b
#knot:zhihao_2_1b
#ui:email
#emailheader:Compose Email
#emailto:Univ Housing <admin@univ.edu.sg>
#emailfrom:Elite Gamers <ian.lim@elitegamers.sg>
#emailfromicon:ico_zhihao.png
#emailsubject:Invitation to Alphas Tryouts
#replyemaildate:On Wed 6 Oct 2021, Univ Housing <admin@univ.edu.sg> wrote:  
#replyemailtext:Hi Zhihao, /n /n Team Singapore Elites notes your gaming prowess on Twitch, and hence would like to invite you to our Alphas tryouts! It will take place this Saturday at 2.00 PM at The Chaos Arena. /n /n Let us know about your participation by this Wednesday. We hope that you can make it! /n /n Best, /n Ian Lim  /n  Lead Coordinator, Elite Gamers Singapore
Dear Mr Lim, #speaker_self
Thank you for the opportunity. #speaker_self
I can make it for the tryouts on Saturday at 2.00 PM. #speaker_self
Sincerely, #speaker_self
Lim Zhihao  #speaker_self
#ui:narrator
#background:ui_emailsending.png
.
#background:ui_emailsent.png
.
-> zhihao_2_2

=== zhihao_2_2 ===
#knot:zhihao_2_2
#ui:narrator
#background:bg_zhihao_bedroom.jpg
The whole week I everyday also practice. During tutorial break I play until next class. Never talk to my friends at all.
Today I wake up super early for the tryouts. Nervous, sia.
#ui:scene
#background:bg_zhihao_hdb_carpark.jpg
// #background:bg_zhihao_car.jpg
Ma is late. As usual. #inner_monologue
I really never learn leh. If Ma wants to fetch me and I say okay, then no matter what, I WILL be late. No matter how much extra time ahead I give.  #inner_monologue
#background:ui_zhihao_macall.jpg 
#speaker_left_image:cha_zhihao_mother_normal.png
#speaker_left_name:Ma
// to design phone call screen with mother
Ah Boy, ten minutes away only! #speaker_left
If she say ten means twenty. Total opposite of Pa. #inner_monologue
Eh Ma, nevermind lah. I take Grab. #speaker_self
Tsk, don’t waste money! #speaker_left
I driving now. Fifteen minutes only. You wait hor! #speaker_left
Wah lao eh, Ma! Ten or fifteen? Don’t need to come lah, I booking Grab now. Bye. #speaker_self
Boy-- #speaker_left
#speaker_left_image:pixel.png
//ZHIHAO ends the call. Switch to the Grab screen with the map showing 10 minutes ETA. #
Wah lau, even the Grab only here in 10 minutes. Like that how to reach on time sia?  #inner_monologue
#ui:narrator
#background:bg_zhihao_hdb_carpark.jpg
10 minutes later, both my ma and the taxi arrived at the same time. 
Even though I told ma not to come!
#ui:scene
#background:bg_zhihao_hdb_carpark.jpg
#speaker_left_image:cha_zhihao_mother_frustrated.png
#speaker_left_name:Ma
Ah Boy! Faster get in! #speaker_left
Ah, Mister! Mister! I can fetch my son-- nevermind! Like that you can fetch other people. Thank you ah, thank you! #speaker_left
You want to go to your mother’s car? It’s okay. You pay already so cannot cancel. #speaker_right
Malu, sia. #inner_monologue
And Ma drive sibeh slow. Aiyoh why she do this... #inner_monologue
#speaker_right_image:cha_zhihao_driver_normal.png
#speaker_right_name:Driver
+ [Take the taxi] -> zhihao_2_2a
+ [Take your ma's offer] -> zhihao_2_2b

= zhihao_2_2a
#knot:zhihao_2_2a
#ui:scene
#speaker_left_image:cha_zhihao_mother_frustrated.png
#speaker_left_name:Ma
#speaker_right_image:cha_zhihao_driver_normal.png
#speaker_right_name:Driver
#background:bg_zhihao_taxi.jpg
Uncle, let's go please. #speaker_self
You sure? #speaker_right
Faster lah, Ah Boy! Wait late already. #speaker_left
How come the window cannot go down? #inner_monologue
Uncle, can help wind down the window? #speaker_self
//Window is wound down. 
Ma! No need, I pay already… No lah I need to go now. #speaker_self
Uncle, can drive on please? You can wind up the window now. Thanks. #speaker_self
#speaker_left_image:pixel.png
Haiz. I look at Ma’s face I feel bad already. #inner_monologue
#speaker_right_image:pixel.png
// View from the car’s rear window of MOTHER’S car left behind. 
#ui:narrator
#background:bg_zhihao_esports.jpg
20 minutes later, I arrived just in time at the Alphas try-outs venue.
// Background: An esports training facility. It is darkly lit, with RGB keyboards, desktops and even headphones. Depending on who you ask, it is either cool or garish. It’s also nearly empty.
#ui:scene
#background:bg_zhihao_esports.jpg
#speaker_left_image:cha_zhihao_ian_normal.png
#speaker_left_name:Ma
Woah. The place looks cool. Where’s the registration?  #inner_monologue
// IAN stands in front of ZHIHAO. 
Hey there! I’m Ian. You’re here for the tryouts, right? #speaker_left
Yeah. I’m Zhihao. #speaker_self
Ohh Zhihao! Great to see you. #speaker_left
//Shot of a handshake between ZHIHAO and IAN. #
You're a bit early but that’s alright. Just find a seat around and relax. We'll begin the matches once more candidates arrive. #speaker_left
-> zhihao_2_3

= zhihao_2_2b
#knot:zhihao_2_2b
#ui:scene
#speaker_left_image:cha_zhihao_mother_frustrated.png
#speaker_left_name:Ma
#speaker_right_image:cha_zhihao_driver_normal.png
#speaker_right_name:Driver
#background:bg_zhihao_taxi.jpg
Uh… #speaker_self
//MOTHER has opened the door of the shotgun seat, facing ZHIHAO’s vantage point. #
Quick lah! Come in to the car. #speaker_left
Lai liao lah. #speaker_self
Sorry, Uncle. I take my mother's car. #speaker_self
It's ok boy. You paid already anyway. #speaker_right
//Ambient sound of car door closing, then opening. Shift to vantage point in MOTHER’s car, in the shotgun seat. #
Eh Ma, must drive faster. #speaker_self
I drive very fast already! Wait accident then you know. #speaker_left
Confirm late liao. Confirm plus chop. #inner_monologue

#speaker_right_image:pixel.png
#ui:narrator
#background:bg_zhihao_esports.jpg
35 minutes later, I arrived late at the Alphas try-outs venue.
// Background: An esports training facility. It is darkly lit, with RGB keyboards, desktops and even headphones. Depending on who you ask, it is either cool or garish. It’s also nearly empty.
#ui:scene
#background:bg_zhihao_esports.jpg
#speaker_left_image:cha_zhihao_ian_normal.png
#speaker_left_name:Ian
Shit. The whole place so rojak. I cannot even find where to register.  #inner_monologue
// IAN stands in front of ZHIHAO. #
Hey there! Tryouts are this way. Are you Zhihao? #speaker_left
Yeah, sorry I’m late. #speaker_self
No, no. It’s alright! We’ve only just started. #speaker_left
//Shot of handshake between ZHIHAO and IAN. #
I’m Ian. Glad you could make it. #speaker_left
Let’s get you to your assigned team and find you a seat. #speaker_left
-> zhihao_2_3


=== zhihao_2_3 ===
#ui:narrator
#background:bg_zhihao_esports.jpg
The Alphas tryout is about to start. 
#ui:scene
#background:bg_zhihao_esports.jpg
#speaker_left_image:cha_zhihao_ian_normal.png
#speaker_left_name:Ian
#speaker_right_image:cha_zhihao_alex_normal.png
#speaker_right_name:Alex
// Background: A desktop setup, with a gaming monitor that looks like the ASUS ROG SWIFT PG258Q (i.e. an angular-looking expensive gaming monitor). There is an RGB keyboard, mouse and desk mat. #
Wah. The set-up here power. Not like my one. #inner_monologue
// Switch to ZHIHAO’s expression. #
But I prep until close eyes can win. Why I feel so kan cheong? #inner_monologue
No time to kan cheong liao, must stay in comms all the way. #inner_monologue
// Flashback to ZHIHAO’s webcam covered up/falling off (depending on player’s choice) in previous chapter. Montage of chat stream close-ups of teammates’ criticisms. #
I cannot lose control of my team, like that day that time. #inner_monologue
// Close-up of a hand drawing out the chair next to ZHIHAO. #
You're Ah-hao right? Your gamertag, at least. #speaker_right
//A tall Chinese boy is now sitting beside ZHIHAO. He leans back easily in his chair with an air of confidence. #
+ Uh, yes that's me. [] #speaker_self
    Wah piang. This one jiak kantang sia. #inner_monologue
    Funny fella. He wanna wait for me to say what?  #inner_monologue
    Uh, my real name is Zhihao. #speaker_self
+ Yah, I'm the one and only ahao_gamer! [] #speaker_self
    Yah, I’m the one and only Ahao. Haha. #speaker_self
    Wtf. This guy sibeh ang moh. #inner_monologue
    I see. And how may I address you? Just Ah-hao? #speaker_right
    Oh. Uh, my real name is Zhihao. #speaker_self
- Cool. It’s good to meet you. #speaker_right
Alexander here. But my gamertag is Crash. #speaker_right
Heh. Nice to meet you, Alexandra. #speaker_self
Alexan-der. Alexandra’s a girl’s name. #speaker_right
Oh sorry sorry. Haha. Alexander. Okay. #speaker_self
If it’s a tongue-twister for you, just call me Alex, yeah? #speaker_right
Orh. Yah. Alex. Okay. #speaker_self
//Two other players have now entered the room. Shot of the four of them in chairs in a small circle. #
Heng ah everybody lai liao. #inner_monologue
//Ian enters. #
Alright people! You're going to be scrimming against another group of players in the other room. So get ready as a team, steady those nerves and, most importantly, have fun! All the best! #speaker_left
All right players. We're gonna own them. Use your wits, go all out, be brutal! #speaker_right

-> END
