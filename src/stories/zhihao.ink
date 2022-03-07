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
 
FOR MINIGAMES DO NOT START A NEW KNOT
#knot:zhihao_2_minigame
#ui:mcq
#game_id:2
Minigame // must add some text
-> zhihao_2_3 // point to next section of story


*/

// DECLARE GLOBAL VARIABLES
VAR character_id = 3
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
Zhihao Lim #title
VAR chapter_id = 1
~ chapter_id = 1
Eh, hi. I'm Zhihao.
I dunno what to say about myself cos my life not very interesting, lol.
I’m 18, I go to the same JC as Gavin. At first I wanted poly cos got all the chiobus there, and Aman is there also. 
Me and Aman stay on the same floor since P1. The whole floor only got both of us same age, so bo pian lor-- like or don’t like end up only can disturb each other, haha.
Anyway, end up I go JC. Pa always wanted that for me cos then I got better chance to go uni.
Two years ago, he passed away. The whole kampung came: His friends, his colleagues, his ex boss current boss all came to the wake. All say he was a damn solid guy. A star worker.
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
Bai nian to them for what. Bai nian also got nothing to say. #speaker_self
Cannot say like that. Pa won't be happy. #speaker_left
Xian zai ji dian? (What time is it now?) #speaker_left
Late liao lah. #speaker_self
Ji dian! (What time is it!) #speaker_left
// Zhihao’s phone. The lock screen shows 12:44 PM, 25 January. 
12.45 #speaker_self
... #speaker_left
People want to louhei you think they wait for you ah. #speaker_self
Aiyah, Ma cannot anyhow leave early. If office need to OT then I bo pian have to OT mah. Later other people see me leave, confirm not happy will make noise one. #speaker_left
A bit late nevermind lah. #speaker_left
‘A bit.’ Snorts* Fang pi (...) lah, ‘a bit’. #inner_monologue
We not just late, we kan pua (...) late - got difference hor. #speaker_self
We not kan pua late, lah! #speaker_left
Oi. First hor, you say don’t want to see your GuGus (uncles). Now you scared we late. You flipping prata ah, Boy? #
// Background: A traffic jam. 
Wah lao eh, now traffic jam. #inner_monologue
+ Why you always like to be late? [] #speaker_self
    Orh, so Ma’s fault lah? Want to geh kiang (...) point finger you ask yourself, just now whose earphones lost ah? #speaker_left
    And lost that time who help you find? #speaker_left
    I put them on the table hor. You the one anyhow pack, ownself forget pack where. #speaker_self
    Who teach you to talk to me like that? Mei da mei xiao (No respect for your elders!) #speaker_left
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
//MOTHER smacks ZHIHAO on the head. #
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
Haiyah just now you say we late already now still want to kaopei (complain) car senget. Later you want your uncles to kaopei also issit? Faster go out take out the orange! #speaker_left

-> zhihao_1_2_narration 
 
=== zhihao_1_2_narration ===
#knot:zhihao_1_2_narration
#ui:narrator
#background:bg_zhihao_jigu_home.jpg
At Ji Gu’s (1st Uncle’s) house for Chinese New Year. Dua Gu (2nd Uncle) is here too.
-> zhihao_1_2


=== zhihao_1_2 ===
#knot:zhihao_1_2
#ui:scene
#background:bg_zhihao_jigu_home.jpg
#speaker_left_image:cha_zhihao_duagu_normal.png 
#speaker_left_name:Dua Gu
#speaker_right_image:cha_zhihao_jigu_normal.png
#speaker_right_name:Ji Gu

// dua gu + ji gu
Wah. Skip CNY one year, now dunno who is called what. #inner_monologue
Ji Gu! Dua Gu! Xin nian kuai le! (1st Uncle! 2nd Uncle ! Happy New Year!) #speaker_self
Wah! Ah Hah ah! Xin nian kuai le! You've grown so tall and handsome! #speaker_left
Haha. No lah. #speaker_self
Ah Hao! Da jia hao xiang nian ni orh! (Everyone missed you!) Why last year never come? Every year hide at home thinkthinkthink not good for your mind, you know? #speaker_left
Lol, I wanna hide also nowhere to hide. #inner_monologue
We okay lah, Dua Gu. #speaker_self
Lai, lai. Qu chi dong xi ba. Bie ke qi. Come, come, go eat the food. No need shy. #speaker_left
Last year, me and Ma had to skip CNY. #inner_monologue
When Pa passed away, we didn’t celebrate anything with anyone for one year. Supposed to be three years cannot celebrate, but I think if we three years don’t go, end up forever won’t go. #inner_monologue
Yah, everybody know nobody want to say, but every extended family got one ji shi (cornerstone) to hold everything together. Pa was that ji shi. #inner_monologue
Mei you ji shi, mei you fang zhi. (Without Pa, we cannot connect.) #inner_monologue
// Background: A circular table in the dining room, with a plate of yusheng in the middle. There are other dishes on the side. #
#background:bg_zhihao_cnyfood.jpg
But I do miss the food... #inner_monologue
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
#background:bg_zhihao_lohei.jpg
Must study hard hor, Ah Hao. Make your Pa proud. #speaker_left
// mother + ji gu
#speaker_left_image:cha_zhihao_mother_normal.png
#speaker_left_name:Ma
#background:bg_zhihao_jigu_home.jpg
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
To Dua Gu everything also good. Jiak sai (eat s**t) also good. Dua Gu, you good this, good that, end up all your words also sai ah! #speaker_left
Ah Hao, you work at the temple, the pay okay anot? I worry about you, you know. If not enough Ji Gu can help you find better job. Easy one. #speaker_left
It’s not work, I just help my friend pack donations for charity. #speaker_self
Why you waste time!  Ji Gu jiao ni (I’ll teach you.) #speaker_left
Lai liao his kok lai liao. (Here he comes with his crap.) #speaker_self
When you young that time must learn to make money! #speaker_left
All your friends, they study so much go uni but then come out all dunno how to make money. #speaker_left
// ma + ji gu
#speaker_left_image:cha_zhihao_mother_normal.png
#speaker_left_name:Ma
My son, ah, he play computer can earn money, you know! Last month he pay off the shui dian fei (utility bills). I want to pay also cannot ah! #speaker_left
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
#speaker_left_image:cha_zhihao_duagu_normal.png 
#speaker_left_name:Dua Gu
#speaker_right_image:cha_zhihao_jigu_normal.png
#speaker_right_name:Ji Gu
Aiyah, if like that ah, better rent out your place. Rent to two or three tenant lah. Like that money and time both also have. #speaker_right
Our other room cannot put two people. #speaker_self
Then take the biggest room lah! Ah Mei, master bedroom ho boh? (Ah Mei, is the master bedroom okay?) #speaker_right
You take the smaller room, Ah Hao take his own room… bo boon dueh (no problem/ problem solved) lor! #speaker_right
Ma’s face is turning white.  #inner_monologue
I want to tell her don’t waste time reply. That we can give excuse and zao.  #
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
Then ah, not even one week-- lucky Ji Gu come back from work early-- I see the high-heel shoe outside, I know already. I chase the two of them out. #speaker_right
That’s why we cannot trust foreigners. Not say Uncle want to pi ping (criticise) them, but is the truth. #speaker_right
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
Ah Hao, you still young, so must be careful what type of friend you help. Cannot suka suka trust anybody hor – don’t anyhow listen to Dua Gu. #speaker_right

+ [Remain polite and subtly refute Ji Gu.]
    It’s okay lah, Ji Gu. I trust Aman with my life. #speaker_self
    Mmm. Aman is a good boy. #speaker_left
    I know you trust your friend. #speaker_right
    But listen to me. Ji Gu is sixty years old liao, everything I also see already. #speaker_right
    What I tell you is the truth. And sometimes the truth is ugly. #speaker_right

+ [Be a smart alec.]
    Ji Gu, I trust Aman. But Pa said sometimes cannot trust family to take care of us even when we are in need.  #speaker_self
    OI! Ni bi zui ah, ni!  (You shut your mouth, ah, you!) #speaker_left
    Hahaha. Ah Hao kuai zhang da le (Ah Hao is growing up fast.)  #speaker_right
    Ah Mei, don’t have to scold him. Boys are boys.  #speaker_right
    He winked at me. Ugh. Suan le ba. (Forget it.) #inner_monologue


+ [Remain passive to kill the conversation.]
    Orh. #speaker_self
    Maybe you don’t agree. But one day you’ll understand why I say this. #speaker_right
    Orh. #speaker_self
    Trust no one. Only look out for yourself. #speaker_right
    Wah lao he zim lor sor (very long-winded)  #inner_monologue
    Ji Gu shuo de dui (You’re right, Ji Gu.) #speaker_self

- I need to leave. #inner_monologue
I go toilet. #speaker_self


-> zhihao_1_3

=== zhihao_1_3 ===
#knot:zhihao_1_3
#ui:narrator
#background:bg_zhihao_jigu_home.jpg
I walked to the toilet, but halfway there I stopped and turned back to hear my ma and Ji Gu arguing. 
I don't think they see me, but I can overhear everything. 
Whenever they speak only Hokkien, it’s always something bad. Bad and complicated. They assume I don't understand, but obv I can.

#ui:scene
#background:bg_zhihao_jigu_home.jpg
#speaker_left_image:cha_zhihao_mother_normal.png
#speaker_left_name:Ma
#speaker_right_image:cha_zhihao_jigu_normal.png
#speaker_right_name:Ji Gu
Cannot! I really cannot! #speaker_left
//Back and forth of MOTHER’S and JI GU’s faces [make it clear that they are talking to each other]. The following conversation takes place in full Hokkien, translated into standard English. 
Didn’t you just say you don’t want to rent out your place? That means you have one extra room. Why Ah Gong cannot stay with you? #speaker_right
Do we need to discuss this now? #speaker_left
Let’s not run away from the problem. #speaker_right
The old folks’ home just restructured their fees and the subsidy brackets this month. I’ve always been very straight with you: $400 is the most I can afford. My brother can only give $200. #speaker_right
You’re telling me now you can afford the extra $450 to keep Ba there? #speaker_right
Wtf, Ah Gong’s home fees increase so much? Why Ma always never tell me this kind of thing? #inner_monologue
I cannot say out loud, but I really dunno how it’s fair that Ah Gong is still here when his soul is long gone. Zero dignity. #inner_monologue
I can’t remember when Ah Gong stopped talking. But I remember our last convo. #inner_monologue
He thought I stole his comb so he threw his cup at me. His baby sip-cup. Then he screamed and called me CB. And then he cried and cried and cried. #inner_monologue
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
Last time I always play with Gavin and Aman. Gavin I met on Discord first, then we found out we’re from the same JC. After that right, we always eat bak chor mee (minced pork noodles) together when we share tutorial break. He eat so much until his IGN (in-game name) also become ‘bakchormee’, lol.
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











-> chapter_1_ending_1

-> chapter_1_ending_2


=== chapter_1_ending_1 ===
#knot: chapter_1_ending_1
#ui:narrator
#background:bg_zhihao_pushpa_home.jpg
 xxxx
VAR chapter_1_ending = 1
~ chapter_1_ending = 1
 xxxx
 
-> zhihao_1_reflection


=== chapter_1_ending_2 ===
#knot: chapter_1_ending_2
#ui:narrator
#background:bg_zhihao_pushpa_home.jpg
xxxx
~ chapter_1_ending = 2


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
xxxx

~ chapter_id = 2

CHAPTER {chapter_id} #title
 #title




-> END