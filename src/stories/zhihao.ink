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
VAR character_id = 4
~ character_id = 4
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
Ma and I are on the way to my uncles' place for Chinese New Year lunch. I really buay tahan (cannot stand) them. 
Also, we are late.

-> zhihao_1_1


=== zhihao_1_1 ===
#knot:zhihao_1_1
#ui:scene
#background:bg_zhihao_car.jpg
#speaker_left_image:cha_zhihao_mother_normal.png
#speaker_left_name:Ma
Bai nian (greet them 'Happy New Year') to them for what. Bai nian also got nothing to say. #speaker_self
Cannot say like that. Pa won't be happy. #speaker_left
Now what time already? #speaker_left
Late liao lah. #speaker_self
What time is it?! #speaker_left
// Zhihao’s phone. The lock screen shows 12:44 PM, 25 January. 
12.45. #speaker_self
... #speaker_left
People want to louhei (a celebration activity for Chinese New Year) you think they wait for you ah. #speaker_self
Aiyah, Ma cannot anyhow leave early. If office need to OT then I bo pian (no choice) have to OT mah. Later other people see me leave, confirm not happy will make noise one. #speaker_left
A bit late nevermind lah. #speaker_left
A bit. Fang pi (pffft) lah, ‘a bit’. #inner_monologue
We not just late, we kan pua (damn) late - got difference hor. #speaker_self
We not kan pua late, lah! #speaker_left
Oi. First hor, you say don’t want to see your uncles. Now you scared we late. You flipping prata ah, Boy? #speaker_left
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
Wah! Ah Hah ah! Xin nian kuai le! Now you become so tall and handsome! #speaker_right
Haha. No lah. #speaker_self
Ah Hao! Everyone missed you! Every year hide at home thinkthinkthink not good for your mind, you know? #speaker_left
Lol, I wanna hide also nowhere to hide. #inner_monologue
We okay lah, Dua Gu. #speaker_self
Come, come, go eat the food. No need shy. #speaker_left
Last year, me and Ma had to skip CNY. When Pa passed away, we didn’t celebrate anything with anyone. #inner_monologue 
Supposed to be three years cannot celebrate, but I think if we three years don’t go, end up forever won’t go.  So this year – second year – we just go lor. #inner_monologue
Yah, everybody know nobody want to say, but every extended family got one ji shi (cornerstone) to hold everything together. Pa was that ji shi. #inner_monologue
No ji shi, no house. Without Pa, we cannot connect. #inner_monologue
// Background: A circular table in the dining room, with a plate of yusheng in the middle. There are other dishes on the side. #
#background:bg_zhihao_cnyfood.jpg
But I  miss the food lah... #inner_monologue
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
You only go to that temple. #speaker_left
Wah, Ah Hao so guai ah! Nowadays young people don’t follow their mother go temple one. #speaker_right
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
To Dua Gu everything also good. Jiak sai (eat shit) also good. Dua Gu, you good this, good that, end up all your words also sai ah! #speaker_right
Ah Hao, you work at the temple, the pay okay anot? I worry about you, you know. If not enough Ji Gu can help you find better job. Easy one. #speaker_right
It’s not work, I just help my friend pack donations for charity. #speaker_self
Why you waste time!  Ji Gu teach you. #speaker_right
Lai liao his nonsense lai liao. (Here he comes with his nonsense.) #inner_monologue
When you young that time must learn to make money! #speaker_right
All your friends, they study so much go uni but then come out all dunno how to make money. #speaker_right
// ma + ji gu
#speaker_left_image:cha_zhihao_mother_normal.png
#speaker_left_name:Ma
My son, ah, he play computer can earn money, you know! Last month he pay off the utility bills. I want to pay also cannot ah! #speaker_left
Ah Hao, you tell your uncles about your computer. Ma dunno how to explain this kind of thing. #speaker_left
+ Smart Ma, smart. Earlier what you say about about my gaming?[] #inner_monologue
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
    Tsk, of course his studies come first. He can do both, he’s okay. #speaker_left
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
Then ah, not even one week-- lucky Ji Gu come back from work early--  wah, he go and hold party ah! I see the house so messy and the smell like spoiled food like that. #speaker_right
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
    ~ zhihao_1_jigu = 1
    Mmm. Aman is a good boy. #speaker_left
    I know you trust your friend. #speaker_right
    But listen to me. Ji Gu is sixty years old liao, everything I also see already. #speaker_right
    What I tell you is the truth. And sometimes the truth is ugly. #speaker_right

+ [Be a smart alec.]  Ji Gu, I trust Aman. But Pa said sometimes cannot trust family to take care of us even when we are in need.  #speaker_self
    ~ zhihao_1_jigu = 2
    OI! Ni bi zui ah, ni!  (You shut your mouth, ah, you!) #speaker_left
    Hahaha. Ah Hao is growing up fast.  #speaker_right
    Ah Mei, don’t have to scold him. Boys are boys.  #speaker_right
    He winked at me. Ugh. Forget it. #inner_monologue


+ [Remain passive to kill the conversation.] Orh. #speaker_self
    ~ zhihao_1_jigu = 3
    Maybe you don’t agree. But one day you’ll understand why I say this. #speaker_right
    Orh. #speaker_self
    Trust no one. Only look out for yourself. #speaker_right
    Wah lao he zim lor sor (very long-winded).  #inner_monologue
    OK OK, Ji Gu. #speaker_self

- I need to leave. #inner_monologue
I go toilet. #speaker_self


-> zhihao_1_3

=== zhihao_1_3 ===
#knot:zhihao_1_3
#ui:narrator
#background:bg_zhihao_jigu_entryway.jpg
Halfway back from the toilet, I heard Ma and Ji Gu arguing. So I stopped and listened.
I make sure they never see me, and I heard everything. 
Whenever they speak only Hokkien, it’s always something bad. Bad and complicated. They think I don't understand, but obv I can.

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
    - "lower":  Then what? You want your son to chip in too? He’s still in school! #speaker_right
        Don’t forget, you have to declare your son’s income if you want him to help. #speaker_right
        If it goes over the income cap, we lose our subsidy.#speaker_right
    - "actual":  Then what? You want your son to chip in too? He’s still in school! #speaker_right
        Don’t forget, you have to declare your son’s income if you want him to help.  #speaker_right
        If it goes over the income cap, we lose our subsidy.#speaker_right
    - "inflate": Your son just said he isn’t earning a stable income. And he’s still a student. How is it fair on him to shoulder the fees? #speaker_right
        Stupid. Why did I go bluff him about my income.  #inner_monologue
    - else : Your son said he isn’t even earning yet. You want him to stop focusing on his studies to look for a job? That’s selfish to the boy right?  #speaker_right
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
After that right, we always eat bak chor mee (minced pork noodles) together when we got same tutorial break. 
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
HAHAHA #speaker_1
Zero chiobus. #speaker_1
It’s just two characters who are both dudes and I’m a co-lead  #speaker_1
😂😂😂 Sorry #speaker_1

+ [Wah lao next time I should shuddup.] 
    #ui:scene
    #background:bg_zhihao_bedroom.jpg
    Wah lao next time I should shuddup. #inner_monologue
    Everytime Aman talk about his drama club I dunno what he talking sia. #inner_monologue
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
    Settled! Will save you tix #speaker_1
    Have fun bro! Say hi to Gavin for me #speaker_1

+ [Why can’t he just explain this? Act smart for what sia.]
    #ui:scene
    #background:bg_zhihao_bedroom.jpg
    Wah lao malu sia (Sigh, I'm so embarrassed).  #inner_monologue
    Why Aman always talk about this kind of atas-atas (high-class) drama and expect the whole world to straightaway know?  #inner_monologue
    And he never explains first until I screw up. I always feel damn kok.  #inner_monologue
    ~ zhihao_1_aman = 1
    //Shift back to phone screen #
    #ui:whatsapp
    #background:whatsapp.png
    #chat_group_title:Aman Singh
    #chat_group_image:ico_aman.png
    #speaker_1_name:Aman
    Next time just say you lead la #speaker_self
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
-  Sigh. #inner_monologue
Aman’s practice is damn hardcore. And people take him seriously. #inner_monologue
Sometimes, next to him, I feel damn suaku (uninformed/backward). #inner_monologue

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
    Bakchormee stall? Cannnn #speaker_1
    Don’t pangseh ah #speaker_self
   
+ Wahlao you pangseh me 3x alr[] #speaker_self
    #ui:scene
    #background:bg_zhihao_bedroom.jpg
    He spend so much time with Nadia, I don’t think there’ll be a next time — for a long time #inner_monologue
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
#speaker_self_tag:ahao_gamer
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
stop asking for drops as soon as he starts la idiot #speaker_3
no squad mode? #speaker_2
Dunno why I'm not feeling the game...	#inner_monologue	
losing streak :sweat #speaker_2
noob teammates #speaker_4
wth is up with @ahao_gamer’s positioning #speaker_5
eh @ahao_gamer please carry the game #speaker_6
wah @ahao_gamer clean sweep - sick moves man #speaker_2
eh where is @bakchormee #speaker_3
Bakchormee. Short-form BCM. Aka Gavin. Aka the traitor.	#inner_monologue	
yeah @bakchormee joining? #speaker_2
+ @bakchormee went paktor with his gf so cmi today [] #speaker_self
+ Dunno la, anw can focus on the game anot [] #speaker_self
- oof #speaker_2
poor thing #speaker_7
is @bakchormee eating bakchormee with her  #speaker_6
She malay so cannot eat BCM  #speaker_self
LMAOOOOO. @bakchormee not halal!!!  #speaker_2
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
+ oi guys FOCUS[] can we talk about game tactics only pls  #speaker_self
+ eh dun be idiots[] he's not here no point talking about his life when you guys are sucking so hard at the game  #speaker_self
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
This I cannot understand. People like Gavin can just sit back shake leg and the whole world will listen to them, and people like me try like siao still cannot win. #inner_monologue

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
And then one day I won’t know him anymore.
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
@bakchormee has a minah gf, so isn't playing with us. RIP to all our bakchormee outings. RIP to my best bro’s  IGN (in-game name). His new name must be malayu. WDYT of Bodoh? #thread_header
I know quite bad lah, but I really buay tahan (cannot take it) liao. So many games now I’m the only one playing – everytime last minute Gavin will give the same story. Everytime I finally get to game with him, he will disappoint. #inner_monologue
Then the team’s rubbish all I have to handle myself. #inner_monologue
And I cannot handle sia. I crack my head from this also still dunno why. But it sucks lah. #inner_monologue

@ahao_gamer, could you switch? We're doing a deathball comp. #speaker_1



-> zhihao_1_5d

=== zhihao_1_5d ===
#knot:zhihao_1_5d
#ui:twitch
#chat_group_title:Twitch Stream - @ahao_gamer
#chat_group_image:bg_zhihao_twitchgame.gif
#speaker_self_name:ahao_gamer
#speaker_1_name:graphene
#speaker_2_name:ineedhealing
#speaker_3_name:mechmaster
#speaker_4_name:anselm_main
#speaker_5_name:d1amond
[nur_ayesa has entered the chat] #speaker_twitch
A GIRL GAMER. hullo @nur_ayesa #speaker_1
Wah lao. Now got girl confirm distract everyone. #inner_monologue
gurl gamer #speaker_2
eh her name sound malay... maybe it's @bakchormee's gf #speaker_3
ask if she's chio #speaker_3
maybe not... if she's chao ta (burnt / too dark) lol #speaker_1
lololololol 	#speaker_2			   
at least not indian #speaker_1
Eh wth. They can joke around about other ppl but now they are insulting Aman. I need to stop the convo. #inner_monologue
😂😂 	#speaker_2	
+ [Tell @graphene off for that comment.] @graphene get out of the stream #speaker_self
    If anyone else wanna talk shit about my friend @AmanOnFire they can leave too #speaker_self
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
    Soz about that #speaker_self
    they got no spine #speaker_2
    lol #speaker_4

+ [Switch topics abruptly.] Hey new girl @nur_ayesa, you wanna share your insta? #speaker_self
    Maybe if I chat with the new girl they will back off. Maybe even can score some respect from these idiots. #inner_monologue
    ~ zhihao_1_racistgamer = "switch topic"
    Wah she go mute my voice chat and exit the stream. #inner_monologue
    Okay lah, bad move on my part. Haiz. #inner_monologue
    ??? low blow man #speaker_5
    no one cares about your opinion @d1amond #speaker_2
    I keep quiet better. #inner_monologue
    Tsk. Everything is going to shit. #inner_monologue
    @ahao_gamer so quiet  #speaker_5
    hes concentrating lol #speaker_3

+ [Scold them for not playing well.]  All of you THROWING (losing) SIA! #speaker_self
    ~ zhihao_1_racistgamer = "focus on game"
    You all boosted or what? Go back play tutorial sua #speaker_self
    Eh yall idiots cannot play properly still wanna play with me #speaker_self
    yeah show them #speaker_1
    WTF sia? How come I kena warning for toxic behaviour? who complain about me? #inner_monologue
    lol @ahao_gamer you'll be banned soon #speaker_5
    This game is going to shit. No Gavin, no Aman, and no respect for me.  #inner_monologue
    shuddup la #speaker_2
- EH do yall want to train or not la wth. talk less shoot more #speaker_self
#chat_group_image:bg_zhihao_twitchmother.jpg
eh who is that behind @ahao_gamer?  #speaker_5
Omg Ma is staring right into the webcam behind me #inner_monologue
Wth how long has she been there #inner_monologue
LOL @ahao_gamer your mother angry at you liao #speaker_1
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
Haiz. Yesterday’s training damn cham (bad).
Suan le (forget it) lah. I go see whether got anyone like my tweet.

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
@bakchormee has a minah gf, so isn't playing with us. RIP to all our bakchormee outings. RIP to my best bro’s  IGN (in-game name). His new name must be malayu. WDYT of Bodoh? #thread_header
LOL #speaker_1
haha BODOH BODOH BODOH #speaker_3
Wah sehhhh! 108 new followers, no joke sia! None of my other tweets got this level of likes. #inner_monologue
RIP to our bro lol.  #speaker_2

+ [Delete the tweet]
    -> chapter_1_ending_1
+ [Keep the tweet up for publicity]
    -> chapter_1_ending_2
+ [Keep the tweet up, it will blow over soon]
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
@bakchormee has a minah gf, so isn't playing with us. RIP to all our bakchormee outings. RIP to my best bro’s IGN (in-game name). His new name must be malayu. WDYT of Bodoh? #thread_header 
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
Gone liao. Leng jing. Leng Jing (Calm down). Should I say sorry?  #inner_monologue
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
A lot of things happened since my last stream. 
My viewers growing like no tomorrow. 
//Flashback scenes of Chapter 1 alongside each following sentence ZHIHAO makes (viewership numbers, streaming screen, tweet and ‘like’ count).
Maybe cos my gameplay sibeh zhai (damn good). 
A lot of people liked my tweet. They say funny. 
Maybe I can add comedy to my skills list haha.

{chapter_1_ending_1:
    That tweet alone now got more than 1k likes and retweets sia. So many people followed me after that.
    I left it up, cos it was the truth. Gavin chose her over all of us.
    And I must stand by the truth, right?
}
{chapter_1_ending_3 or chapter_1_ending_2:
    Steam sia (feels good), so many people liked it. 
    That tweet hit a few hundred likes while it was up leh.
    But I felt bad lah, better delete.
    Even if it's the truth, I think no need to say this kind of thing online lah.
}
Anyway, business is damn good cos now  my twitch follower numbers so high.
#background:ui_emailinbox.png
I just got an email invite from Singapore Elites. They're the best gaming team in Singapore. Swee!
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
#emailfromicon:ico_zhihao_elites.png
#emailsubject:Invitation to Alphas Tryouts

Hi Zhihao, /n /n Team Singapore Elites notes your gaming prowess on Twitch, and hence would like to invite you to our Alphas tryouts! It will take place this Saturday at 2.00 PM at The Chaos Arena. /n /n Let us know about your participation by this Wednesday. We hope that you can make it! /n /n Best, /n Ian Lim  /n  Lead Coordinator, Elite Gamers Singapore #speaker_1

#ui:narrator
#background:ui_emailinbox.png
Of course I’ll join them, their fan-base damn big. And I can earn SO much more! 
Wah this one how to reply. Is formal correct anot? Or informal? Sekali (what if) I use wrong then he think I suaku (uncultured).
+ [Formal safer] -> zhihao_2_1a
+ [Aiyah, I copy Ian's informal template] -> zhihao_2_1b

=== zhihao_2_1a ===
#knot:zhihao_2_1a
#ui:email
#emailheader:Compose Email
#emailto:Elite Gamers <ian.lim@elitegamers.sg>
#emailfrom:Zhihao <zhihao@email.com>
#emailfromicon:ico_zhihao.png
#emailsubject:Invitation to Alphas Tryouts
#replyemaildate:On Wed 6 Oct 2021, Ian <ian.lim@elitegamers.sg> wrote:  
#replyemailtext:Hi Zhihao, /n /n Team Singapore Elites notes your gaming prowess on Twitch, and hence would like to invite you to our Alphas tryouts! It will take place this Saturday at 2.00 PM at The Chaos Arena. /n /n Let us know about your participation by this Wednesday. We hope that you can make it! /n /n Best, /n Ian Lim  /n  Lead Coordinator, Elite Gamers Singapore
Dear Mr Lim, #speaker_self
VAR zhihao_2_formalemail = true
~ zhihao_2_formalemail = true
Thank you for the opportunity. #speaker_self
I can make it for the tryouts on Saturday at 2.00 PM. #speaker_self
Sincerely, #speaker_self
Lim Zhihao  #speaker_self
#ui:narrator
#background:ui_emailsent.png
.

-> zhihao_2_2


=== zhihao_2_1b ===
#knot:zhihao_2_1b
#ui:email
#emailheader:Compose Email
#emailto:Elite Gamers <ian.lim@elitegamers.sg>
#emailfrom:Zhihao <zhihao@email.com>
#emailfromicon:ico_zhihao.png
#emailsubject:Invitation to Alphas Tryouts
#replyemaildate:On Wed 6 Oct 2021, Ian <ian.lim@elitegamers.sg> wrote:  
#replyemailtext:Hi Zhihao, /n /n Team Singapore Elites notes your gaming prowess on Twitch, and hence would like to invite you to our Alphas tryouts! It will take place this Saturday at 2.00 PM at The Chaos Arena. /n /n Let us know about your participation by this Wednesday. We hope that you can make it! /n /n Best, /n Ian Lim  /n  Lead Coordinator, Elite Gamers Singapore
Hi Ian, #speaker_self
~ zhihao_2_formalemail = false
Thanks for inviting me. #speaker_self
I'm super excited, and I'm a big fan of Elites. #speaker_self
I can make it on Saturday. Thanks again! #speaker_self
Best, #speaker_self
Zhihao  #speaker_self
#ui:narrator
#background:ui_emailsent.png
.
-> zhihao_2_2

=== zhihao_2_2 ===
#knot:zhihao_2_2
#ui:narrator
#background:bg_zhihao_bedroom.jpg
The whole week I everyday also practise. During tutorial break I play until next class. Never talk to my friends at all.
Today I woke up chao (very) early for the tryouts. The whole morning can only feel kan cheong (nervous).
#ui:scene
#background:bg_zhihao_hdb_carpark.jpg
// #background:bg_zhihao_car.jpg
Haiz, but no point. Ma is late. As usual. #inner_monologue
I really never learn leh. If Ma wants to fetch me and I say okay, then no matter what, I WILL be late. No matter how much extra time ahead I give.  #inner_monologue
#ui:notification
#background:ui_zhihao_message.jpg
Ma: Ah Boy, ten minutes away only! #message
#ui:scene
#background:bg_zhihao_hdb_carpark.jpg
If she say ten means twenty. Opposite of Pa. #inner_monologue
#ui:whatsapp 
#background:whatsapp.png
#chat_group_title:Ma
#chat_group_image:ico_zhihao_mother.png
#speaker_1_name:Ma
Eh Ma, nevermind lah. I take taxi #speaker_self
Tsk, don’t waste money #speaker_1
I driving now. Fifteen min only. You wait hor! #speaker_1
Wahlao eh, Ma! Ten or fifteen? No need come la, I book taxi liao #speaker_self
//ZHIHAO ends the call. Switch to the Grab screen with the map showing 10 minutes ETA. #
Wah piang, the Grab also take ten minutes. Like that how to reach on time?  #wa_inner_monologue
#ui:narrator
#background:bg_zhihao_hdb_carpark.jpg
10 minutes later, both Ma and the taxi arrived at the same time. 
Even though I tell her already don't come! Tsk!
#ui:scene
#background:bg_zhihao_hdb_carpark.jpg
#speaker_left_image:cha_zhihao_mother_frustrated.png
#speaker_left_name:Ma
Ah Boy! Faster get in! #speaker_left
#speaker_right_image:cha_zhihao_driver_normal.png
#speaker_right_name:Driver
Ah, Mister! Mister! I can fetch my son-- nevermind! Like that you can fetch other people. Thank you ah, thank you! #speaker_left
Malu, sia. #inner_monologue
You want to go to your mother’s car? It’s okay. You pay already anyway. #speaker_right
+ [Take the taxi] -> zhihao_2_2a
+ [Take your ma's offer] -> zhihao_2_2b

= zhihao_2_2a
#knot:zhihao_2_2a
#ui:scene
#speaker_left_image:cha_zhihao_mother_frustrated.png
#speaker_left_name:Ma
#speaker_right_name:Driver
#background:bg_zhihao_taxi.jpg
Uncle, let's go please. #speaker_self
Mah drive sibeh (very) slow. Wah piang she give me so much headache! #inner_monologue
VAR zhihao_2_taketaxi = true
~ zhihao_2_taketaxi = true
You sure? #speaker_right
Faster lah, Ah Boy! Wait late already. #speaker_left
#speaker_left_image:pixel.png
How come the window cannot go down? #inner_monologue
Uncle, can help wind down the window? #speaker_self
//Window is wound down. 
Ma! No need, I pay already… No lah I need to go now. #speaker_self
Uncle, can drive on please? You can wind up the window now. Thanks. #speaker_self
Haiz. I look at Ma’s face I feel bad already. #inner_monologue
#speaker_right_image:pixel.png
// View from the car’s rear window of MOTHER’S car left behind. 
#ui:narrator
#background:bg_zhihao_esports.jpg
20 minutes later, just nice I reached the Alphas try-outs venue on time.
// Background: An esports training facility. It is darkly lit, with RGB keyboards, desktops and even headphones. Depending on who you ask, it is either cool or garish. It’s also nearly empty.
#ui:scene
#background:bg_zhihao_esports.jpg
#speaker_left_image:cha_zhihao_ian_normal.png
#speaker_left_name:Ian
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
#speaker_right_name:Driver
#background:bg_zhihao_car.jpg
Uh… #speaker_self
//MOTHER has opened the door of the shotgun seat, facing ZHIHAO’s vantage point. #
Quick lah! Come in to the car. #speaker_left
~ zhihao_2_taketaxi = false
Lai liao lah. #speaker_self
Sorry, Uncle. I take my mother's car. #speaker_self
It's okay boy. You paid already anyway. #speaker_right
//Ambient sound of car door closing, then opening. Shift to vantage point in MOTHER’s car, in the shotgun seat. #
Eh Ma, must drive faster. #speaker_self
I drive very fast already! Wait accident then you know. #speaker_left
Wah lao confirm late liao. Confirm plus chop. #inner_monologue

#speaker_right_image:pixel.png
#ui:narrator
#background:bg_zhihao_esports.jpg
35 minutes later, I arrived late at the Alphas try-outs venue.
// Background: An esports training facility. It is darkly lit, with RGB keyboards, desktops and even headphones. Depending on who you ask, it is either cool or garish. It’s also nearly empty.
#ui:scene
#background:bg_zhihao_esports.jpg
Shit. The whole place so rojak (mixed up). I cannot even find where to register.  #inner_monologue
#speaker_left_image:cha_zhihao_ian_normal.png
#speaker_left_name:Ian
// IAN stands in front of ZHIHAO. #
Hey there! Tryouts are this way. Are you Zhihao? #speaker_left
Yah, sorry I’m late. #speaker_self
No, no. It’s alright! We’ve only just started. #speaker_left
//Shot of handshake between ZHIHAO and IAN. #
I’m Ian. Glad you could make it. #speaker_left
Let’s get you to your assigned team and find you a seat. #speaker_left
-> zhihao_2_3


=== zhihao_2_3 ===
#knot:zhihao_2_3
#ui:narrator
#background:bg_zhihao_esports.jpg
The Alphas tryout is about to start. 
#ui:scene
#background:bg_zhihao_esports.jpg
#speaker_right_image:cha_zhihao_alex_normal.png
#speaker_right_name:Alex
// Background: A desktop setup, with a gaming monitor that looks like the ASUS ROG SWIFT PG258Q (i.e. an angular-looking expensive gaming monitor). There is an RGB keyboard, mouse and desk mat. #
Wah. The set-up here power. Not like my one. #inner_monologue
// Switch to ZHIHAO’s expression. #
But I prep until close eyes can win. Why I feel so kan cheong? #inner_monologue
No time to kan cheong liao, must stay in comms all the way. #inner_monologue
// Flashback to ZHIHAO’s webcam covered up/falling off (depending on player’s choice) in previous chapter. Montage of chat stream close-ups of teammates’ criticisms. #
I cannot lose control of my team, like that time during my stream session. #inner_monologue
// Close-up of a hand drawing out the chair next to ZHIHAO. #
You're Ah Hao right? Your IGN (in-game name), at least. #speaker_right
//A tall Chinese boy is now sitting beside ZHIHAO. He leans back easily in his chair with an air of confidence. #
+ Uh, yah that's me. [] #speaker_self
    Wah piang. This one jiak kantang. #inner_monologue
    Funny fella. He wanna wait for me to say what?  #inner_monologue
    Uh, my real name is Zhihao. #speaker_self
+ Yah, I'm the one and only ahao_gamer! [] #speaker_self
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
#speaker_left_image:cha_zhihao_ian_normal.png
#speaker_left_name:Ian
//Ian enters. #
Alright people! You're going to be scrimming against another group of players in the other room. So get ready as a team, steady those nerves and, most importantly, have fun! All the best! #speaker_left
Fellas. We're gonna own them. Use your wits, go all out, be brutal! #speaker_right

+ [Observe Alex first] He wanna be boss issit. Extra sia. #inner_monologue
    #speaker_left_image:pixel.png
    VAR zhihao_2_observealexfirst = true
    ~ zhihao_2_observealexfirst = true
    I see what else he say first. #inner_monologue
    Come on, let’s start. Zhihao, what’s up? You’re looking constipated. #speaker_right
    Eh we better strategise first. #speaker_self
    I didn’t say we shouldn’t. #speaker_right
    I just saying only lah. #speaker_self
    Okaaaay… #speaker_right
    Wtf is his problem? Look at me macam wanna fight. #inner_monologue
    He stare one more time I’ll smack his face sia, shut his ang moh mouth. #inner_monologue
    So how do you propose we do it? #speaker_right
    We need to see the other team first. #speaker_self
    KNN why he roll his eyes! #inner_monologue
    Nevermind. Team, let’s roll! #speaker_right

+ [Take the lead first] I need to talk more in comms. Sekali this ang moh pai (Western-sounding person) wanna be boss. #inner_monologue
    #speaker_left_image:pixel.png
    ~ zhihao_2_observealexfirst = false
    Eh guys, first we must think of a strategy. So if we look at the other team right-- #speaker_self
    Okay we’re all equals here. #speaker_right
    Why his face like not happy like that? #inner_monologue
    Yah, so? #speaker_self
    So why’re you taking the lead before everyone’s introduced themselves? #speaker_right
    I’m not. #speaker_self
    Then why are you ordering everyone about? #speaker_right
    What sai you talking? #speaker_self
    Nevermind. I’m not gonna waste time and start a fight. If you wanna continue staring at me instead of gaming, I’ll be happy to let the panel know. #speaker_right
    Siao eh, this fella. #inner_monologue
    But we’re starting the game now, cannot anyhow lose focus. #inner_monologue

- Okay match starting liao.  #inner_monologue
#ui:narrator
#background:bg_zhihao_alphas.jpg
First level is abandoned city. Steady. I know this one by heart. #inner_monologue
#ui:scene
#background:bg_zhihao_alphas.jpg
#speaker_right_image:cha_zhihao_alex_normal.png
#speaker_right_name:Alex
Okay, better pick my opening move #inner_monologue

+ [Charge out using a trick you learned on youtube] 
    #speaker_left_image:cha_zhihao_teammate1_normal.png
    #speaker_left_name:Teammate 1
    Woah, that’s insane! #speaker_left
    Didn't know you could do that. #speaker_left
    Not difficult lah. I learn from Youtube one. #speaker_self
    Lol. #speaker_right
    Why everybody down here jiak kantang (speaks with a Western accent). #inner_monologue
    You’ve got skills, man. #speaker_left
    Haha can teach you later if you want. #speaker_self
    How I talk versus how they all talk -- I sound like alien sia. #inner_monologue
    I feel like one also. #inner_monologue

+ [Stick close to the team] 
    #speaker_left_image:cha_zhihao_teammate1_normal.png
    #speaker_left_name:Teammate 1
    Guys let’s group up, take the high ground first. #speaker_left
    Orh. #speaker_self
    Good call. #speaker_right
    Why everybody down here jiak kantang one  (speaks with a Western accent). #inner_monologue
    #speaker_left_image:cha_zhihao_teammate1_surprised.png
    Ahao, watch out! #speaker_left
    Stop dreaming, dude! #speaker_right
    #speaker_left_image:cha_zhihao_teammate1_normal.png
    Shuddup lah. #inner_monologue
    Stupid ang moh pai. #inner_monologue
    
- ALPHAS: The objective is now available. 
Ok, let's gooooo... What the.. DAMNIT. Some idiot sniped me! Where the fish was he hiding?! #inner_monologue
    
    + [Ask for assistance] Healing healing healing! #speaker_self
    #speaker_left_image:cha_zhihao_teammate1_normal.png
    #speaker_left_name:Teammate 1
    Can't outheal that! #speaker_left
    Still can! #speaker_self
    #speaker_left_image:cha_zhihao_teammate2_normal.png
    #speaker_left_name:Teammate 2 (out of sight)
    But how-- #speaker_left
    There’s no time. We have to move on! #speaker_right
    If I don’t heal we confirm lose-- #speaker_self
    Guys, move on. Now! #speaker_right

    + [Don't slow down the team]  Eh sorry guys. I better hang back, my character wounded. #speaker_self
    #speaker_left_image:cha_zhihao_teammate1_normal.png
    #speaker_left_name:Teammate 1
    It's okay. #speaker_left
    Zhihao, if you’re out you’re out. Stop interrupting everyone by apologising. #speaker_right

- Jialat, my team getting whacked by that sniper. I think I know where he's hiding.  #inner_monologue
ALPHAS: BLUE team is losing. 3 minutes left.
Must tell them or not? Dunno if I tell them then end up scolded again for distracting them. #inner_monologue

+ [Tell them]  Right tower got sniper. #speaker_self
    VAR zhihao_2_tellthemsniper = true
    ~ zhihao_2_tellthemsniper = true
    Got it. #speaker_left
    What? #speaker_right
    ALPHAS: ALEX is killed by a headshot from RED team.
    Wahlao eh! I say already he never hear. #inner_monologue
    Now he mati (died) the whole team also mati. #inner_monologue
    Dammit! You distracted me! #speaker_right
    I say got sniper you never hear issit! #speaker_self
    I heard you. I couldn’t understand you. #speaker_right
    #ui:narrator
    #background:bg_zhihao_alphas.jpg
    The next two fights do not go smoothly. My BLUE team is losing.
    #ui:scene
    Usually I speak more in comms. #inner_monologue
    But I dunno, like damn hard to talk with this team. They jiak kantang (speak like Westerners) until cannot click. #inner_monologue
    Especially that Alex. Everytime want tekan (tease/punish) me. #inner_monologue
    He tekan me I tekan back. #inner_monologue
    But now I don’t feel good about my skills. #inner_monologue

+ [Remain silent]   Aiyah I diam better. #inner_monologue
    ~ zhihao_2_tellthemsniper = false
    The sniper quite obvious, should be they all can see. #inner_monologue
    ALPHAS: ALEX is killed by a headshot from RED team.
    Ahao! You were in front and encountered him earlier! You could have told us where he was! #speaker_right
    You never see meh? #speaker_self
    You think?! #speaker_right
    Nevermind, let’s fall back and regroup. #speaker_left
    Shit. Got no Alex the whole team confirm lose liao. #inner_monologue
    Sorry guys. #speaker_self
    It's okay! Fall back! #speaker_left
    #ui:narrator
    #background:bg_zhihao_alphas.jpg
    The next two fights do not go smoothly. My BLUE team is losing.
    #ui:scene
    I dunno what happened to me. Usually in comms I talk a lot. Jialat now I always say the wrong thing. #inner_monologue
    I buay tahan (cannot tolerate) that Alex. #inner_monologue
    But buay sai have to tahan. #inner_monologue

- Ok, this is our last chance to prove ourselves. #inner_monologue
Now we must beat everyone in the other team to win.#inner_monologue
I think still can… if we clutch.#inner_monologue

+ [Explain your plan] Ok, I'm going to ult in three. I need cover fire. #speaker_self
    Okay, body-blocking them. #speaker_left
    VAR zhihao_2_winthegame = true
    ~ zhihao_2_winthegame = true
   #ui:narrator 
   #background:bg_zhihao_alphas.jpg
    Zhihao flanks and uses his ultimate (special weapon), wiping the enemy team. 
    BLUE team wins.

+ [Rush in] I'm going in! #speaker_self
    #ui:narrator 
    #background:bg_zhihao_alphas.jpg
    ZHIHAO flanks and uses his ultimate  (special weapon), yet he is immediately stunned and eliminated.
    ~ zhihao_2_winthegame = false
    BLUE team loses again.
    #ui:scene
    Oh, for Christ’s sake! #speaker_right
    I’ve never bowed out of a game that fast. #speaker_right
    It’s alright man, we’ve got more games coming up. #speaker_left
    The first game always sets the tone. Pity it was beyond my control. #speaker_right

- -> zhihao_2_4

=== zhihao_2_4 ===
#knot:zhihao_2_4
#ui:scene
#background:bg_zhihao_esports.jpg
#speaker_left_image:cha_zhihao_teammate1_normal.png
#speaker_left_name:Teammate 1
#speaker_right_image:cha_zhihao_alex_normal.png
#speaker_right_name:Alex
I think we could have done better with a different team. #speaker_right
Different avatars issit? #speaker_self
Nope. Sometimes I'm not sure what you're saying. #speaker_right
Why? #speaker_self
This fella damn qian bian (asking for a beating). If he got problem with me don’t have to hide and give fake reason. #inner_monologue
Scratch that. Most times I don’t get what you’re saying. You need to learn how to talk properly. It cost us certain fights. #speaker_right
He's fine! #speaker_left
Zhihao, it’s cool. We’re all good. #speaker_left
Yah yah the whole team all good. I’m not. #inner_monologue

+ [Get even with Alex] Alex. What’s my name? #speaker_self
    I know your name. #speaker_right
    So what’s my name? #speaker_self
    Why the heck should I say it? #speaker_right
    Lol you scared right. #speaker_self
    The hell? No! No. #speaker_right
    Scared just say you scared lah. #speaker_self
    // ALEX (rolling his eyes): #
    #speaker_right_image:cha_zhihao_alex_frustrated.png
    Jer Hao. #speaker_right
    #speaker_left_image:cha_zhihao_teammate1_laughing.png
    There you go, that’s your stupid-ass name. #speaker_right
    //TEAMMATES 1 and 2 are trying to hold back their laughter. #
    Jer. JERRRRR Hao. Who? #speaker_left
    You “Jer Hao”-“Jer Hao” who? Zhi-Hao lah! #speaker_self

+ [Criticise Alex's gaming] Oi Alex. Every fight, you’re the first one to die. Cos you keep feeding them ult charge. #speaker_self
    Rubbish. #speaker_right
    If I talk until so cham, how come everybody else can understand me except you? #speaker_self
    #speaker_left_image:cha_zhihao_teammate1_normal.png
    #speaker_left_name:Teammate 1
    He's not wrong. #speaker_left
    I think you really cannot make it lah. Cannot only do things one by one. By the time you take action after people give instructions you die liao. #speaker_self
    That’s because your instructions are crap. #speaker_right

- The reality is, you're just a content creator. You give a lot of opinions. That’s the easy part. #speaker_right
#speaker_right_image:cha_zhihao_alex_jealous.png
#speaker_right_name:Alex
But you don’t play a good game. You either give instructions too late or give unimportant ones. And that’s besides me struggling to make out what you’re saying. #speaker_right

+ [Argue back] Wtf I won’t let him tell me where I stand. #inner_monologue
    If you not there right, we confirm win every game. #speaker_self
    VAR zhihao_2_arguewithalex = true
    ~ zhihao_2_arguewithalex = true
    I have the same PC as this, and I'm used to it. #speaker_right
    I’ve watched you play and I know you use a shitty oldwood PC. #speaker_right
    So you say your computer so zhai also cannot help you lah. #speaker_self
    Haha he angry liao! #inner_monologue
    Better save money and sell your monitor. Cos you can’t make it as a gamer. #speaker_self

+ [Defend your content]
    Lol people like my content. And my content got a lot of instructions. #speaker_self
    Your content leh? #speaker_self
    ~ zhihao_2_arguewithalex = false
    #speaker_right_image:cha_zhihao_alex_eyeroll.png
    I don’t need to resort to that. #speaker_right
    No skills, no content. Your ang moh talk also fake. #speaker_self
    Now then he diam. Hah. #inner_monologue

- I really cannot stand this idiot. #inner_monologue
#background:bg_zhihao_esports.jpg
#speaker_left_image:cha_zhihao_ian_normal.png
#speaker_left_name:Ian
#speaker_right_image:pixel.png
Alright! We're going to swap players around for the next game. Excited guys? #speaker_left
// Background: An office in the esports arena, with similar decor as other rooms. #
#ui:narrator
#background:bg_zhihao_esports.jpg
After the whole event, everyone had to give feedback to Ian and the panel. 
They interviewed us one by one.
#ui:scene
#background:bg_zhihao_esports.jpg
#speaker_left_image:cha_zhihao_ian_normal.png
#speaker_left_name:Ian
So, Zhihao! What do you think of the first team? We plan to pair you players with teammates and coaches you're comfortable with. #speaker_left

+ [Be honest] Might as well be honest. #inner_monologue
    I die-die also don’t want to be on the same team as Alex. #inner_monologue
    The whole team is okay except Alex. He got attitude problem. #speaker_self
    Oh, did something happen? #speaker_left
    VAR zhihao_2_honestwithian = true
    ~ zhihao_2_honestwithian = true
    He only got problem with me cos he don’t like how I talk. But he’s the only one who complained cannot understand. #speaker_self
    Okay, so it’s a language barrier you’re saying? #speaker_left
    No lah! He just don’t like me. The language is an excuse. #speaker_self
    Right. Was there anything else that was problematic? #speaker_left
    His gaming cannot make it. But he will blame me for his mistakes. You can go ask the other players. #speaker_self
    I see. I’ll talk to him and get his side of things as well. #speaker_left
    But if that’s the case then we definitely will need to establish certain codes of conduct so players don’t get hostile with each other. #speaker_left
    

+ [Be polite] Uh, better not sound like a complainer. #inner_monologue
    Sekali they think I the problem. Then they put me with all the cui (lousy) people. #inner_monologue
    ~ zhihao_2_honestwithian = false
    Uh, I think the team is not bad. #speaker_self
    The panel and I were observing the voice chat and I have to say, it was a bit chaotic. #speaker_left
    Wah piang, they spy on all the teams ah? #inner_monologue
    We did notice some friction between you and Crash-- that’d be Alex wouldn’t it? #speaker_left
    If they say like that means they also know Alex damn guai lan. #inner_monologue
    Yah. He got problem with me. I dunno why. #speaker_self
    We haven’t spoken with him but we definitely agree there’s some hostility there, so we’ll be setting new codes of conduct to minimise such occurrences. #speaker_left
    
- Can continue to keep us in different teams? #speaker_self
If that’s your preference, we can.#speaker_left
You know, it’s odd. We paired you and Alex together as we thought your personalities are similar. #speaker_left
It’s a pity it’s turned out this way between you two. #speaker_left

-> zhihao_2_5



=== zhihao_2_5 === 
#knot:zhihao_2_minigame
#ui:mcq
#game_id:12
Minigame 12 // must add some text

#knot:zhihao_2_5
#ui:narrator
#background:bg_zhihao_home.jpg
Wahlao, the judges blind issit? How am I like Alex! Siao.
I just happy this round finish liao. But still got cock-up sia (made mistakes).
#ui:scene
#background:bg_zhihao_home.jpg
MA! #speaker_self
Where’s Ma? Today Saturday got her ‘Sheng Siong Show’, she how come go out? #inner_monologue
{zhihao_2_taketaxi == true:
    Aiyah but this morning she confirm angry with me.  #inner_monologue
    But she drive until so teruk (bad) how to reach the place on time.  #inner_monologue
    I better cook dinner. So she happier.  #inner_monologue
- else:
    This morning she make me late.   #inner_monologue
    Today if she cook, confirm cook late.   #inner_monologue
    Aiyah I cook dinner myself better lah.   #inner_monologue
}

#background:bg_zhihao_home_emptyfridge.jpg
Shit. I so shag, forgot to buy groceries also.  #inner_monologue
I put my bag in my room first.  #inner_monologue

//A shot of the open master bedroom entrance, with Ma holding up her camera phone taking pictures, facing away from ZHIHAO.
Eh, Ma is home leh... #inner_monologue
#background:bg_zhihao_home.jpg
#speaker_left_image:cha_zhihao_mother_normal.png
#speaker_left_name:Ma
Ma! Just now I call you why you diam-diam! #speaker_self
What you doing? #speaker_self
Eh? You come back already ah! Chi bao le mei you? (Eaten already?) #speaker_left
Not yet. I going NTUC. Today dinner I help you cook. #speaker_self
Don’t lah I go down later. Eh you help me look, which photo of the room better? #speaker_left
//Close-up of MOTHER’s phone screen with a picture of the master bedroom. #
For what? #speaker_self
For the property agent. She tell me take picture of the room, take one set day one set night. Dunno if take like that okay anot. #speaker_left
Eh, Ma. Why you prata (flipped opinion)? That time you say you don’t want to rent out the bedroom. #speaker_self
I never say don’t want mah! Bo pian need to support your Ah Gong what. Nevermind, I sleep in the other room. #speaker_left
Wah, she give up so fast. #inner_monologue
//Montage of the aspects of the room with Pa’s things, eg. a framed wedding picture, a planner, letters in envelopes, a Casio watch, a box of folded men’s shirts etc. #
All of Pa’s things still here in the room. What’s she going to do? Pack them all up? Give them away? #inner_monologue
+ [Confront Ma] So just like that you let Pa go? #speaker_self
    Who say I let him go? You better watch what you say okay. #speaker_left
    VAR zhihao_2_confrontma = true
    ~ zhihao_2_confrontma = true
    I can pay the fees, you know. #speaker_self
    You keep your money for your studies. This kind of thing you don’t make into your problem. This one for me and Ji Gu to handle. #speaker_left
    I can pay the fee difference. You don’t chin cai move Pa’s things away. #speaker_self
    Ah Boy, I tell you already, you don’t action try to be hero. You think this problem I dunno how to solve issit? #speaker_left
    Problem you where got solve. You let strangers stay lagi big problem. #speaker_self
    You think carefully: This is Pa’s bed. Your bed. For twenty years. #speaker_self
    You still anyhow want to let strangers sleep in it? #speaker_self
    Bed is just bed lah! So big I one person sleep, waste space. #speaker_left
    Better I move to the other room, let people pay for this one. #speaker_left
    #speaker_left_image:cha_zhihao_mother_frustrated.png
    Then how come that time Ji Gu say this idea you angry? #speaker_self
    TSK. You don’t geh kiang (act nosy) lah. Talk so much. #speaker_left
    Wah lao she damn qian bian (annoying). #inner_monologue
    Why you so fast change your mind? Pa’s things must respect leh. #speaker_self
    If you want to respect Pa, first thing you respect is me hor. #speaker_left
    Aiyah.. Forget it lah. #inner_monologue
    I go out now. #speaker_self
    For what? #speaker_left
    Buy to cook dinner lah. Just now say already. #speaker_self
    I go buy lah, you stay home. #speaker_left
    You busy taking picture how to go now. #speaker_self
    //Shot of grille door and corridor indicating ZHIHAO leaving the house. #
    #speaker_left_image:pixel.png
    #background:bg_zhihao_hdb_carpark.jpg
    Wah lao, she never even ask about my tryouts. #inner_monologue
    Everytime we talk, we end up fighting. Always over Pa. #inner_monologue

+ [Avoid bringing up Pa] Haiz. But if I talk about Pa we confirm fight.#inner_monologue
    The other room can cover the fees right. Why need to rent the master bedroom? #speaker_self
    ~ zhihao_2_confrontma = false
    The other room got so much barang (stuff) how to put in the bed? Smaller also. Confirm people don’t want lah. #speaker_left
    You never try how you know. #speaker_self
    Our area so ulu you think people like to stay here issit? If I rent out that room will only get the funny type. #speaker_left
    Eh Ma, I pay the fee difference. Don’t rent out the room. #speaker_self
    You earn how much only! Your money you don’t end up pay for everything. Save for your uni. #speaker_left
    Just let me pay lah. #speaker_self
    Ah Boy, I know you want to help lah, but you don’t busybody can. This problem I know how to solve. #speaker_left
    Wahlao, I cannot say to her face but sometimes Ma damn qian bian (annoying). #inner_monologue
    I earn enough. I can pay. #speaker_self
    If halfway you want to stop work just go school how? #speaker_left
    Won’t lah. #speaker_self
    Today your competition how? Win anot? #speaker_left
    Lol she now then ask. #inner_monologue
    Next round then is the final. They haven’t select yet. #speaker_self
    When you will know? #speaker_left
    Dunno. Maybe next few days. #speaker_self
    Orh. Jiayou (fight on!) ah. #speaker_left
    Eh this room you don’t rent hor. #speaker_self
    If you get in, maybe I change to the small room. #speaker_left
    EH! #speaker_self
    End of discussion. #speaker_left
    
- -> zhihao_2_6

=== zhihao_2_6 ===
#knot:zhihao_2_6
#ui:notification
#background:ui_zhihao_message.jpg
Gavin: Hey bro # message
#ui:whatsapp
#background:whatsapp.png
#chat_group_title:Gavin Tan
#chat_group_image:ico_nadia_gavin.png
#speaker_1_name:Gavin
Hey bro #speaker_1
{chapter_1_ending_1:
    Crap. I delete the tweet liao how come he still know? #wa_inner_monologue
    - else: 
    Shit. Must be he saw the tweet.#wa_inner_monologue
}
Hey.. #speaker_self
+ [Play it cool] What's up? #speaker_self
+ [Do not respond yet] He write like that I cannot even tell if he angry or what. #wa_inner_monologue
    I think better not reply first. #wa_inner_monologue
- How did the tryouts go? #speaker_1
Not bad #speaker_self
But not v good also #speaker_self
Dunno if he asking me this just to start the convo. #wa_inner_monologue
Nahh you prob owned everyone. When will they release the results? #speaker_1
Next few days #speaker_self
Will pray for you haha #speaker_1
LOL #speaker_self
Btw there’s something I need to let you know #speaker_1
Hope you don’t take it the wrong way #speaker_1
Jialat he wanna talk about the tweet liao. #wa_inner_monologue
Orh...#speaker_self
+ Issit cos of my tweet? [] #speaker_self
+ Eh.. uh I always joke when I tweet... []  Dun take so seriously #speaker_self
- Is Tue 2pm okay with you for the lunch? I finish tutorials by then #speaker_1
//GAVIN’s message comes up almost simultaneously with ZHIHAO’s answer above. #
Sorry I pegged down a solid date only now lol #speaker_1
Eh what. Totally different topic sia. #wa_inner_monologue
Lol what tweet? #speaker_1
Wtf lah why I sabo myself. #wa_inner_monologue
Tue is ok #speaker_self
Haha that’s what you wanna ask? #speaker_self
Thing is, I’ve asked Nadia to join us #speaker_1
Wah piang why he must bring his gf. Now I become lightbulb sia. #wa_inner_monologue
Oh...#speaker_self
+ [Accept it] But if he really want her there, very bad to say no. #wa_inner_monologue
    VAR zhihao_2_acceptnadiadate = true
    ~ zhihao_2_acceptnadiadate = true
    Lol kk #speaker_self
    Dunno if she’ll understand me lol. School never talk that much with her. #speaker_self
    Haha she understands anything #speaker_1
    Don’t worry bro you’ll like talking to her #speaker_1
    Wouldn’t do it if I didn’t think you two would get along #speaker_1
    Suan le ba [Forget it.] I want also cannot change his mind. #wa_inner_monologue
    Kk, see you then #speaker_self

+ [Say no]      I better say no. #wa_inner_monologue
    ~ zhihao_2_acceptnadiadate = false
    If she join us will be damn paiseh #speaker_self
    Cos very hard to talk #speaker_self
    You’ll warm up to each other, I’m sure #speaker_1
    She already knows Aman and they get along great #speaker_1
    Another time better #speaker_self
    We eating bakchormee rmb #speaker_self
    We still can, she’ll order something else #speaker_1
    Then everytime we eat bakchormee she eat different food like very out #speaker_self
    Cannot lah #speaker_self
    If you feel paiseh we don’t have to eat bakchormee lol #speaker_1
    Haiz. See, that’s why my tweet is the truth. #wa_inner_monologue
    We should still eat bakchormee lah #speaker_self
    Kk, see you then #speaker_self

- Thanks man! Means a lot to me btw haha #speaker_1
Hey, of the three of us, you’re the best gamer by a mile #speaker_1
Just don’t tell Aman hahaha #speaker_1
I dunno if cos he super religious or what, but Gavin really sibeh (damn) steady. #wa_inner_monologue
He always got something good to say about people. Even if got nothing good about them, heh. #wa_inner_monologue
I know if I tell him anything, he won’t judge. #wa_inner_monologue
Wah seh you say me until liddat I paiseh (shy) leh #speaker_self
All the best for the finals #speaker_1
Dunno if in yet lah #speaker_self
It’s a given. Trust me 🤩  #speaker_1
Btw you wanted to tell me about some tweet earlier? #speaker_1

+ [Try to cover it up] Lol I forgot what tweet alr #speaker_self
    VAR chapter_2_ending = 1
    ~ chapter_2_ending = 1
    Nothing impt. Nowadays I got a lot of followers, so got too many tweets la. #speaker_self
    Oh lol #speaker_1
    Anw excited to intro you to have you get to know Nad better #speaker_1
    Been waiting for it for a long time #speaker_1
    Haha macam (almost like) meet vip #speaker_self
    All my bros are VIPs lol #speaker_1
    Sometimes, I dunno how Gavin is friends with me. #wa_inner_monologue
    And I dunno if he knows, but it’s a very important friendship to me. Maybe my most important friendship. #wa_inner_monologue
    Sometimes I’m scared we’ll drift apart. Cos Gavin already got so many good friends, now got his new gf-- he where got time for everyone? #wa_inner_monologue
    But of course I won’t tell him this lah, a bit malu (embarrassed) sia. #wa_inner_monologue
    Must show I have my shit together. I’m not a kid anymore. #wa_inner_monologue

+ [Mention it but skip the details] Oh haha #speaker_self
    I tweeted a lame joke abt you and bakchormee #speaker_self
    ~ chapter_2_ending = 2
    LOLOL what’s new #speaker_1
    You’re always joking about me and bakchormee #speaker_1
    But  bakchormee and I are inseparable hahaha #speaker_1
    I don’t say this to Gavin lah, but he’s a damn important friend. #wa_inner_monologue
    Eating lunch with him is the best time I have in school. #wa_inner_monologue
    I never think of this before sia, but now he got Nadia, I dunno if he will start to pangseh our break-times. #wa_inner_monologue
    I try not to think about it. But buay sai (unable to stop myself) lah.  #wa_inner_monologue
    
- -> zhihao_2_reflection


=== zhihao_2_reflection ===
#knot:zhihao_1_reflection
#ui:chapter_reflection
#reflection_id:12
Reflection 12



-> zhihao_3_intro








// CHAPTER 3





=== zhihao_3_intro ===
#knot:zhihao_3_intro
#ui:narrator
#background:bg_zhihao_promo.jpg
Two days ago was my Alphas tryout. I really hope I get into the finals. 
~ chapter_id = 3
But I dunno if the finals got clash with my exams. 
Team SG Elites haven’t call or email back, so I a bit scared. Like that no answer very hard to focus. 
But what to do? I worry about it also cannot change anything.
#background:bg_zhihao_home.jpg
I need to keep streaming, keep working. Next week we need to pay the old folks’ home fees for Ah Gong. 
I tell Ma already don’t go rent out the master bedroom, but yesterday she ti-kee (stubborn) go send the agent the photos. 
Today she wants results already. LOL.
#background:black.jpg
CHAPTER {chapter_id} #title
Playing to the Crowd #title

-> zhihao_3_1

=== zhihao_3_1 ===
#ui:scene
#background:bg_zhihao_home.jpg
#speaker_left_image:cha_zhihao_mother_normal.png
#speaker_left_name:Ma
How come I cannot click on the views ah? #speaker_left
Views for what? #speaker_self
The room lah. Got 15 views but how to know who is looking? #speaker_left
If they interested they will contact your agent. If no one contact means not interested lor. #speaker_self
Like that have to wait how long? Tsk, your Ji Gu say very fast can find tenants, now I think he talking rubbish lah. #speaker_left
Ma, don’t kan cheong lah. #speaker_self
She keeping quiet. Confirm she under a lot of pressure with the money. #inner_monologue

+ [Offer to pay] If I bluff, say I only pay for this month, she will accept. #inner_monologue 
    VAR zhihao_3_offertopay = ""
    ~ zhihao_3_offertopay = "directly"
    $450 right? I pay this month. #speaker_self
    No need lah! #speaker_left
    I pay first lah. If you get the tenant then you pay me back lor. #speaker_self
    Good, can see she’s thinking. #inner_monologue
    I can pay. You don’t pay. #speaker_left
    Eh Ma you don’t so ti-kee can anot! If you can pay you don’t need to be landlord liao. #speaker_self
    You think I dunno your pattern ah? Once I let you pay, you will keep paying. #speaker_left
+ [Try to pay secretly] I better find a way to pay secretly. I’ll send Ji Gu the money. #inner_monologue
    ~ zhihao_3_offertopay = "secretly"
    You got Ji Gu’s number? That time he offer me the lobang I wanna take. #speaker_self
    Your computer job not enough meh? Eh you don’t every lobang also take, wait got no time to study how. #speaker_left
    I see his lobang good or not. #speaker_self
    You want I call him now… #speaker_left
    No lah Ma! You whatsapp me his number. #speaker_self
    Why you look at me like that? #speaker_self
    You think I dunno what you doing issit? I won’t give you his number. #speaker_left
    Oi! #speaker_self
    You will send him your money. Cannot. #speaker_left
- Wah lao. Help her solve problem she want to give problem. #inner_monologue
Hmmm.. maybe I can bluff a bit, she won't know. #inner_monologue
+ [Contact the agent] -> zhihao_3_1a 
+ [Ask Gavin to help] -> zhihao_3_1b

=== zhihao_3_1a ===
#knot:zhihao_3_1a
#ui:whatsapp
#background:whatsapp.png
#chat_group_title:James (Property Agent)
#chat_group_image:ico_ravi_james.png
#speaker_1_name:James

Hi James, I’m asking on behalf of my mother, Mdm Wee Boon Hwei to change the room for rent. It’s this room: #speaker_self
renting.com/yio-chu-kang-master-room_2348709/rent #speaker_self
Can we change it to the common room? Thx #speaker_self
-Zhihao #speaker_self
Hi Zhihao, can send pics and video of the room? #speaker_1
I sending you now #speaker_self
Also let me verify with Mdm Wee first. Need to check that you’re her son #speaker_1
Wah lao. Cannot lah. #wa_inner_monologue
Nevermind just leave the the ad up. Thx #speaker_self
Tough sia. #wa_inner_monologue
Oh wait. I ask Gavin to help. #wa_inner_monologue
    
-> zhihao_3_1b

=== zhihao_3_1b ===    
#knot:zhihao_3_1b
#ui:whatsapp
#background:whatsapp.png
#chat_group_title:Gavin
#chat_group_image:ico_nadia_gavin.png
#speaker_1_name:Gavin
BRO #speaker_self
Need your favour #speaker_self
Yoooo #speaker_1
Favour how big?  #speaker_1
+ [Small enough for you] Small enough for you #speaker_self
+ [Just need your help] Just need your help  #speaker_self
- LOL #speaker_1
My mother wanna rent out the master bedroom to pay for my Ah Gong’s home fees. But I wanna change it to the smaller room #speaker_self
Okay… #speaker_1
She kancheong wanna get tenant but cannot find #speaker_self
So I need to bluff her got someone interested in the smaller room #speaker_self
Lol so you want me to be the potential tenant? #speaker_1
Correct!! #speaker_self
I transfer you the money to transfer her #speaker_self
You tell her you pay $500 upfront today to chope the room #speaker_self
What happens when I don’t move in? She’ll know something’s up #speaker_1
Aiyah when she realises it’s me she’ll give up and let me pay #speaker_self
Just must make sure I get my foot through the door #speaker_self
You send me your mum’s no. I’ll send you my acct details #speaker_1
SWEE BRO #speaker_self
TYVM #speaker_self
That's what friends are for man. Anytime bro. #speaker_1
Hahaha you better meet Nad and me on Thu #speaker_1
Yah lah #speaker_self
Nadia, Nadia. Everything also Nadia. As if my own problems not enough. #wa_inner_monologue    
    
-> zhihao_3_2    

=== zhihao_3_2 ===
#knot:zhihao_3_2
#ui:emailinbox
#newemailfrom:Ian Lim (SG Elites)
#newemailprofileicon:profile_blank.png 
#newemailsubject:Alphas Trial Results
#newemailpreview:On behalf of Team Singapore Elites, we would...
.
-> zhihao_3_2a

=== zhihao_3_2a ===
#knot:zhihao_3_2a
#ui:email
#emailheader:Read Email
#emailfrom:Ian Lim (SG Elites)
#emailto:Zhihao <zhihao@email.com>
#emailfromicon:ico_zhihao_elites.png
#emailsubject:Alphas Trial Results

Hi Zhihao, /n /n  On behalf of Team Singapore Elites, we would like to nominate you for our Alphas team! Big congratulations on your nomination! We hope you’ll take it up.  /n /n  We look forward to your response by this Friday.  /n /n  Best,  /n  Ian Lim /n  Lead Coordinator /n  Elite Gamers Singapore  #speaker_1

#ui:narrator
#background:ui_emailinbox.png
WOOOHOOOooooo! 
Ok Leng jing (calm down). Must reply. 
Should I show Ian that I CAN communicate properly or should I be more casual?

+ [Accept formally] -> zhihao_3_2b
+ [Send a casual reply] -> zhihao_3_2c


=== zhihao_3_2b ===
#knot:zhihao_3_2b
#ui:email
#emailheader:Compose Email
#emailto:Elite Gamers <ian.lim@elitegamers.sg>
#emailfrom:Zhihao <zhihao@email.com>
#emailfromicon:ico_zhihao.png
#emailsubject:Alphas Trial Results
#replyemaildate:On Wed, Ian <ian.lim@elitegamers.sg> wrote:  
#replyemailtext:Hi Zhihao, /n /n  On behalf of Team Singapore Elites, we would like to nominate you for our Alphas team! Big congratulations on your nomination! We hope you’ll take it up.  /n /n  We look forward to your response by this Friday.  /n /n  Best,  /n  Ian Lim /n  Lead Coordinator /n  Elite Gamers Singapore
Hi Ian,#speaker_self
I am happy to have been nominated and will join the Alphas team. #speaker_self
VAR zhihao_3_formalemail = true
~ zhihao_3_formalemail = true
Thank you. #speaker_self
Regards, #speaker_self
Zhihao #speaker_self
#ui:narrator
#background:ui_emailsent.png
.

-> zhihao_3_2d


=== zhihao_3_2c ===
#knot:zhihao_3_2c
#ui:email
#emailheader:Compose Email
#emailto:Elite Gamers <ian.lim@elitegamers.sg>
#emailfrom:Zhihao <zhihao@email.com>
#emailfromicon:ico_zhihao.png
#emailsubject:Alphas Trial Results
#replyemaildate:On Wed, Ian <ian.lim@elitegamers.sg> wrote:  
#replyemailtext:Hi Zhihao, /n /n  On behalf of Team Singapore Elites, we would like to nominate you for our Alphas team! Big congratulations on your nomination! We hope you’ll take it up.  /n /n  We look forward to your response by this Friday.  /n /n  Best,  /n  Ian Lim /n  Lead Coordinator /n  Elite Gamers Singapore
Hey Ian, #speaker_self
Thanks! I am super excited to join the Alphas team! Woohoo! #speaker_self
~ zhihao_3_formalemail = false
Zhihao  #speaker_self
#ui:narrator
#background:ui_emailsent.png
.

-> zhihao_3_2d


=== zhihao_3_2d ===
#knot:zhihao_3_2c
#ui:notification
#background:ui_zhihao_message.jpg
Irfan: CONGRATS BRO! HEARD THE NEWS #message
Alric: Well done man! Knew you would get it! #message
#ui:narrator
#background:black.jpg
Wah damn hard to believe leh. Eh no, of course I believe it. Hah. I DID IT LAH!
Must be fate. I’m fated to be pro, man. Cos talent don’t lie.
 
-> zhihao_3_3

=== zhihao_3_3 ===
#knot:zhihao_3_3
#ui:narrator
#background:bg_zhihao_home.jpg
When you’re happy, the days fly by. It’s been two days and I still feel like a king. 
I’m a pro-gamer, and my plan for Ah Gong going swee swee. 
And today I can wake up at 12pm like a boss.
#ui:scene
#background:bg_zhihao_home.jpg
#speaker_left_image:cha_zhihao_mother_normal.png
#speaker_left_name:Ma
Eh your friend that Gavin ah, yesterday he pay the deposit but say he only using the room to store his things. #speaker_left
Where got people pay money for a storeroom? Now I think better to sign contract. #speaker_left
You got pay the fees for Ah Gong already? #speaker_self
Yah. This morning. #speaker_left
I find a better time to tell her the truth. #inner_monologue
Don’t need him to sign anything lah. He’s my bro. #speaker_self

#ui:notification
#background:ui_zhihao_message.jpg
Aman: Dude are you free to talk? #message

-> zhihao_3_3a

=== zhihao_3_3a ===
#knot: zhihao_3_3a
#ui:whatsapp
#background:whatsapp.png
#chat_group_title:Aman Singh
#chat_group_image:ico_aman.png
#speaker_1_name:Aman
Dude are you free to talk? #speaker_1
With my mother now. Why? #speaker_self
Just read the stuff on Twitter #speaker_1
Wah piang I just now then wake up, check what? #wa_inner_monologue
What happened on twitter #speaker_self
😱 #speaker_1
Did you just wake up?! #speaker_1
+ [Might as well tell him] Ya #speaker_self
    I havent checked #speaker_self
+ [Wahlao he think I do nothing all day ah] No lah #speaker_self
    Was busy this morning. Trying to sort out my mother and the rent #speaker_self
    Luckily Gavin helped me bluff her so I can pay the home fees for my grandpa. Our plan quite crazy lol #speaker_self
    Have you talked to Gavin today? #speaker_1
    Huh. Why sia? #wa_inner_monologue
    No #speaker_self
- You should visit this. And read the comments.   #speaker_1
I’m getting scared, seriously. Why Aman never say what it is?     #wa_inner_monologue
twitter/TeamSGElites/119293 #speaker_1
+ [Visit the link] kk #speaker_self
+ [Do not visit the link] Have you opened the link? #speaker_1
    Lol later #speaker_self
    Best to do it now so you can work out how to answer Gavin #speaker_1
    ok ok  #speaker_self
- -> zhihao_3_4
 
=== zhihao_3_4 ===
#knot:zhihao_3_4
#ui:twitter
#chat_group_title:Twitter: @SGElites
#chat_group_image:ico_zhihao_elites.png
#speaker_self_tag:ahao_gamer
#speaker_self_image:ico_zhihao.png
#speaker_1_name:Ducklord
#speaker_1_tag:ducklord
#speaker_2_name:SniperMain
#speaker_2_tag:oneshotonekill
#speaker_3_name:ryan
#speaker_3_tag:zeraselm4life
#speaker_4_name:AddMeToYourGuild
#speaker_4_tag:leeroy97
#speaker_5_name:Pandan
#speaker_5_tag:pandan999
#speaker_6_name:Celestial Being
#speaker_6_tag:celest3
// #speaker_1_image:ico_aman_lukman.png
// #speaker_2_image:ico_aman_family.png
// #speaker_3_image:ico_aman_selinder.png
#timestamp:23.41
#likes:0 ❤️
We welcome moth, lamp, ahao, plas and mfa to our \#AlphasWorldCup team! We look forward to a great tournament at StormCon! \#SGElites #thread_header
nani #speaker_1
moth and lamp haha #speaker_2
huge pickup #speaker_3
Insane roster! Can probably play any comp well if the players work together #speaker_4
Sweeee! I didn't realise they already announced it publicly!  #inner_monologue
Kinda disappointed. What happened to the @crash rumours? He was epic. #speaker_1
ahao_gamer? isn't it that toxic streamer #speaker_5
Didn't @ahao_gamer post a racist tweet some time ago? #speaker_6
#speaker_1_name:blackwolf
#speaker_1_tag:xxblackwolfxx
This post didn't age well lol. F #speaker_1
bg_zhihao_tweet_screenshot.jpg #image 
Shit. These people got nothing better to do issit? #inner_monologue
#ui:narrator
#background:ui_zhihao_message.jpg
I got message from Gavin and also Aman. Wah. Who to answer first.
+ [Answer Gavin first] -> zhihao_3_4_gavin
    
+ [Answer Aman first] -> zhihao_3_4_aman

=== zhihao_3_4_gavin ===
#knot: zhihao_3_4_gavin
#ui:whatsapp
#background:whatsapp.png
#chat_group_title:Gavin Tan
#chat_group_image:ico_nadia_gavin.png
#speaker_1_name:Gavin
VAR zhihao_3_replyfirst = "gavin"
~ zhihao_3_replyfirst = "gavin"
When were you going to tell me? #speaker_1
Sia lah, I cannot. I really cannot deal #wa_inner_monologue
- -> zhihao_3_4a


=== zhihao_3_4_aman ===
#knot: zhihao_3_4_aman
#ui:whatsapp
#background:whatsapp.png
#chat_group_title:Aman Singh
#chat_group_image:ico_aman.png
#speaker_1_name:Aman
Are you ok? #speaker_1
+ Uh, ya? [] #speaker_self
    Don’t have to paiseh. I'm here if you need to talk #speaker_1
    I’m ok. But not sure what to do #speaker_self
    I haven't seen him like this before #speaker_1
    Seen him like what? #wa_inner_monologue
    I’d apologise quickly, let it blow over #speaker_1
+ Did Gavin talk to you? [] #speaker_self
    No  #speaker_1
    I dunno if he’s found out. And I’m not gonna notify him #speaker_1
    Think it’s prob best if he can hear it from you #speaker_1
- -> zhihao_3_4a

=== zhihao_3_4a ===
#knot:zhihao_3_4a
#ui:twitter
#chat_group_title:Twitter: @SGElites
#chat_group_image:ico_zhihao_elites.png
#speaker_self_tag:ahao_gamer
#speaker_self_image:ico_zhihao.png
#speaker_1_name:Fred Loo
#speaker_1_tag:mrt2
#speaker_2_name:Paul🤷
#speaker_2_tag:paulpullsaggro
#speaker_3_name:ryan
#speaker_3_tag:zeraselm4life
#speaker_4_name:ace
#speaker_4_tag:progamer_ace
#speaker_5_name:Pandan
#speaker_5_tag:pandan999
#speaker_6_name:Celestial Being
#speaker_6_tag:celest3
#likes:2300 💬 ️
We welcome moth, lamp, ahao, plas and mfa to our \#AlphasWorldCup team! We look forward to a great tournament at StormCon! \#SGElites #thread_header
Why got so many comments? Omg.  #inner_monologue
It's def him. Looked up his twitter and twitch profiles. Same. #speaker_3
What? This is the worst take. #speaker_1
Yikes another typical chinese singaporean male #speaker_2
Inb4 he's cancelled #speaker_4
#speaker_1_name:farrah
#speaker_1_tag:nerf_hitscan
{ chapter_1_ending == 1: 
    WTF. I deleted the tweet quickly. Who the hell took a screenshot?! SIAO #inner_monologue
- else:
    WTF. That tweet has been reshared 2300 times! And it's a trending topic? WTF seriously  #inner_monologue
}
I'm bringing popcorn to this cancelling 🍿🍿🍿 #speaker_1
#speaker_3_name:INTJ
#speaker_3_tag:intjguy99
@ahao_gamer you're a trash person.  #speaker_3
#speaker_2_name:Diamond
#speaker_2_tag:d1amond
@ahao_gamer should apologise already #speaker_2
{ chapter_1_ending == 1: 
    he tried to delete his tweet but the INTERNET DOES NOT FORGET, you racist #speaker_6
- else:
  he didn't even bother to delete the tweet lol #speaker_6
}
if you want to talk about privilege look at @ahao_gamer #speaker_5
#speaker_4_name:Nyaa
#speaker_4_tag:natthecat2
Privileged dumb male strikes again. The Gamergate refugees like @ahao_gamer can't keep their  mouths shut. #speaker_4
#speaker_3_name:Fight Me⚔️
#speaker_3_tag:forjustice
ahao_gamer looks like another brainwashed chi-na guy!#speaker_1
What privilege? My life got a lot of privilege meh?  And what the hell is Gamergate about. #inner_monologue
And I'm not from China lah, wah lao! I never even go China before! #inner_monologue
All these people, they dunno me. They dunno anything but they act like they do. #inner_monologue
And they're all just happy to hantam. #inner_monologue
#ui:narrator
#background:new_call_notification.jpg
Shit. Gavin is calling  #inner_monologue
+ [Answer the call] 
    VAR zhihao_3_answergavin = true
    ~ zhihao_3_answergavin = true
    -> zhihao_3_5
+ [Ignore the call] 
    ~ zhihao_3_answergavin = false
    -> zhihao_3_5b

=== zhihao_3_5 ===
#knot:zhihao_3_5
#ui:scene
#background:ui_zhihao_phonecall.jpg
#speaker_right_image:cha_zhihao_gavin_3_angry.png
#speaker_right_name:Gavin
... #speaker_self
~ zhihao_3_answergavin = true
+ [Start with an excuse] Bro, I was joking only. I dunno why become so jialat… #speaker_self
    Seriously? You don’t know why? #speaker_right
    It was a joke. #speaker_self
    Fml he sibeh quiet sia. #inner_monologue
    Okay lah the joke was bad-- #speaker_self
    #speaker_right_image:cha_zhihao_gavin_3_angry.png
    Funny how you’d hide a joke from me. Almost like you didn’t want me to know. #speaker_right
    I didn’t hide it! I... #speaker_self
    { chapter_1_ending == 1: 
    Deleted the tweet, I didn’t know they go and screenshot-- #speaker_self
    - else:
    Forgot about it. I didn’t tell anyone-- #speaker_self
    }
    FOR GOD’S SAKE, ZHIHAO! #speaker_right
    Shit… I never hear him shout before. #inner_monologue
    Gavin… can leng jing (chill) a bit? #speaker_self
    #speaker_right_image:cha_zhihao_gavin_3_betrayed.png
    Look. I can’t listen to you talk right now. We’ll talk on Thursday. #speaker_right
    Yeah? #speaker_right
    …Yah. #speaker_self
    You better show up. #speaker_right
    //GAVIN ends the call. #
    #background:ui_zhihao_phonecall_end.jpg

+ [Wait for Gavin to speak] So when were you going to tell me? Or you were never intending to? #speaker_right
    Bro it was a joke only mah. I didn’t tell anyone also cos I wrote it for myself. #speaker_self
    Which you put out on a public platform. #speaker_right
    Jialat, what do I say now? #inner_monologue
    Look, I can’t talk to you about it over the phone. We’ll do it on Thursday. #speaker_right
    #speaker_right_image:cha_zhihao_gavin_3_betrayed.png
    You’ll show up, yeah? #speaker_right
    …Yah. #speaker_self
    //GAVIN ends the call. #
    #background:ui_zhihao_phonecall_end.jpg


- -> zhihao_3_5b


=== zhihao_3_5b ===
#knot:zhihao_3_5b
#ui:twitter
#chat_group_title:Twitter: @SGElites
#chat_group_image:ico_zhihao_elites.png
#speaker_self_tag:ahao_gamer
#speaker_self_image:ico_zhihao.png
#speaker_1_name:ahao's biggest fan
#speaker_1_tag:simpforahao
#speaker_2_name:Sparkle Rainbow🌈
#speaker_2_tag:lady_sprinkle_rainbow
#speaker_3_name:Anselm Is The Best
#speaker_3_tag:anselm_main
#speaker_4_name:Nyaa
#speaker_4_tag:natthecat
#speaker_5_name:Singapore Elites
#speaker_5_tag:SGElites
#speaker_6_name:Celestial Being
#speaker_6_tag:celest3

@ahao_gamer didn't do anythng wrong #speaker_1
More people have replied to my tweet with examples of horrifying harmful rhetoric that @ahao_gamer has spread. How has he not been cancelled earlier! Linking here so it's easier to follow (1/18) #speaker_2
// ZHIHAO clicks on the thread. There are screenshots of Zhihao's past tweets in the replies, along with lady_sprinkle_rainbow's text on top.
He’s not just racist, he’s ableist too: "All of my teammates confirm autistic. Throw so many tantrums, dunno how they make it to 18 LOLZ" (2/18) #speaker_2
Like excuse me: "NOOOO WHY THE DEVS CHANGE ARIA'S SKINS! Hide everything might as well change to burqas lah" (3/18) #speaker_2
Can't deny that this looks bad. But why do you have so much time? Go solve systematic racism instead lol #speaker_3
At least got fans stand up for me. #inner_monologue
It's tweets like these that normalise discrimination! Run back to 4chan or kiwifarms  #speaker_2
FML I cannot look at that thread anymore... #inner_monologue
Man, every thread here is jialat (bad). #inner_monologue
he should be banned from alphas #speaker_4
he should be banned from living #speaker_3
Wah lao I wrote those tweets in sec school, why must dig up so far back? #inner_monologue
Now of course I won't write this kind of thing lah. If they want me banned then like that everyone who wrote stupid shit when they young should be cancelled now lah. #inner_monologue
We are aware about the current situation regarding Lim "Ahao" Zhihao. We are investigating the situation internally. #speaker_5
As an organisation, we do not condone racism or sexism on any level. We believe that the gaming world should be a safe, inclusive space for everyone. Our professional players should reflect the principles of the Alphas World Cup and Team Singapore Elites. #speaker_5
It is our hope that Mr Lim can return with the focus that it takes to play at the Alphas World Cup. #speaker_5
Another meaningless PR statement #speaker_6
#speaker_2_name:Aaron Lee
#speaker_2_tag:rabakplayer
ahao_gamer hasn't even apologised yet lol #speaker_2
Jialat. (this is bad) #inner_monologue
Okay. Leng jing. (Calm down.) #inner_monologue
Leng jing yi xia. (Calm down for a bit.) #inner_monologue
{ zhihao_3_answergavin == true:
    I'll write a reply... but... where to start sia...#inner_monologue
    - else:
    -> zhihao_3_5c
}
-> zhihao_3_5d

=== zhihao_3_5c ===
#knot:zhihao_3_5c
#ui:scene
#background:bg_zhihao_home.jpg
#speaker_left_image:cha_zhihao_mother_normal.png
#speaker_left_name:Ma
This whole thing is too much lah. I can’t deal. Suan le (forget it) lah I’ll just go back to sleep. #inner_monologue
Ah Boy, your Gavin friend want to talk to you. Why you never pick up your phone? #speaker_left
Wah lao Gavin... #inner_monologue
I just wanna sleep here and forget everything lah. #inner_monologue
And after that maybe everyone will forget. Then all swee-swee liao. #inner_monologue
I got headache. Need to sleep. #speaker_self
//MOTHER returns to the call on her phone. #
Hello, Gavin ah? So sorry ah, Zhihao got headache… yah, he went to sleep. Dunno what happened lah, that boy… ah… okay.. Can can, Auntie will tell him. Thank you ah. Bye-bye! #speaker_left
//MOTHER turns to ZHIHAO and lifts off his blanket. #
Eh, Gavin say must remember to meet him on Thursday. Very important. #speaker_left
You hear me anot? #speaker_left
Orh. #speaker_self
You remember ah. #speaker_left
//MOTHER leaves. ZHIHAO takes out his phone to check Twitter again. #
#speaker_left_image:pixel.png
I buay tahan how all the commenters tweet like they know me. Okay lah my joke is a bit offensive, but the way they shoot me macam I got kill someone. #inner_monologue
-> zhihao_3_5d

=== zhihao_3_5d ===
#knot:zhihao_3_5d
#ui:twitter
#chat_group_title:Twitter: @ahao_gamer
#chat_group_image:ico_zhihao.png
#speaker_self_tag:ahao_gamer
#speaker_self_image:ico_zhihao.png
#speaker_1_name:ahao's biggest fan
#speaker_1_tag:simpforahao
#speaker_2_name:Sparkle Rainbow🌈
#speaker_2_tag:lady_sprinkle_rainbow
#speaker_3_name:Jac
#speaker_3_tag:icecreamunicorns
#speaker_4_name:Diamond
#speaker_4_tag:d1amond
#speaker_5_name:Fight Me⚔️
#speaker_5_tag:forjustice
#speaker_6_name:Celestial Being
#speaker_6_tag:celest3
Ok... must reply. I think best for me too ... #inner_monologue
Hey everybody, I'm reading these tweets. #speaker_self
VAR zhihao_3_gamingoutcome = ""
+ [Correct their assumptions about me] Privileged dumb male strikes again. The Gamergate refugees like @ahao_gamer can't keep their mouths shut. #speaker_4
    ++ I dunno about Gamergate don’t anyhow presume can [] #speaker_self
    ++ Says the pot to the kettle  [] #speaker_self
    -- @ahao_gamer looks like another brainwashed chi-na guy! #speaker_5
    ++ I’m not from China lah idiot [] #speaker_self
    ++ Fyi I’m SGrean, and you’re the one who’s racist about China [] #speaker_self
	-- @ahao_gamer. JUST. APOLOGISE. ALREADY. #speaker_3
    ++ [Might as well ignore these losers sia] It’s true that autistic ppl throw tantrums. I’m just saying a fact not hating on them. You can go ask the special ed teachers  #speaker_self
        VAR zhihao_3_tweetstorm = 1
        ~ zhihao_3_tweetstorm = 1
        ~ zhihao_3_gamingoutcome = "toxic"
        true tho #speaker_1
        his is the WORST take. The worst take. #speaker_4
        #speaker_5_name:Jos
        #speaker_5_tag:joslim
        Strawman argument lol #speaker_5
        Wtf is a strawman? #inner_monologue
        And this @lady_sprinkle_rainbow tweet also makes no sense leh #inner_monologue
        Like excuse me: "NOOOO WHY THE DEVS CHANGE ARIA'S SKINS! Hide everything then better change to burqas lah" (3/18) #speaker_2
        Isn't she implying that burqa is wrong or bad? #inner_monologue
        You're the racist ones for not liking burqas #speaker_self
        No one said that #speaker_3
        What on earth is this gaslighting #speaker_5
        Free speech! #speaker_1
        Okay at least got some people support. They get it. #inner_monologue
        You can be sure of this: No more Alphas for you. A petition’s on the way. #speaker_6
        // Petition successful. ZH is kicked out. Toxic ending. 
        
    ++ [Aiyah. If I apologise maybe they’ll stop attacking.]  I’m sorry I tweeted an offensive joke. #speaker_self
        ~ zhihao_3_tweetstorm = 2
        ~ zhihao_3_gamingoutcome = "quit"
        Finally. #speaker_3
        Would appreciate it if people can stop threatening and harassing me TYVM #speaker_self
        Talk about playing the victim. Leave Alphas first and MAYBE the ‘harassment’ will stop. But people have every right to call you out. Creating a petition now #speaker_6
        // ZH quits before petition completes. Non-toxic ending.

+ [Acknowledge and explain] Woke up to lots of responses. I'll just say this lah: it's true that interracial couples cannot do certain things #speaker_self
    preach! #speaker_1
    #speaker_5_name:Jos
    #speaker_5_tag:joslim
    When was @ahao_gamer political #speaker_5
    says a lot about singaporeans when even someone like @ahao_gamer can have simps @simpforahao_gamer 🙄	#speaker_3
    Strawman argument lol #speaker_5
    Wtf is a strawman? #inner_monologue
    This is disrespectful to all the female creators who received harassment and DEATH THREATS #speaker_5
    ++ [Defend yourself] Tbh yall overreacting sia. I’M the one getting harassed now hello #speaker_self
        ~ zhihao_3_tweetstorm = 3
        ~ zhihao_3_gamingoutcome = "toxic"
        @ahao_gamer. JUST. APOLOGISE. ALREADY. #speaker_3
        All the people who are threatening and harassing me to apologise-- double standard lah yall #speaker_self
        Talk about playing the victim. Leave Alphas first and MAYBE the ‘harassment’ will stop. But people have every right to call you out. Creating a petition now #speaker_6
        // *Petition successful. ZH is kicked out.Toxic ending.
    
    ++ [Apologise] I apologise for the offensive tweets. I didn’t know any better. #speaker_self
        ~ zhihao_3_tweetstorm = 4
        ~ zhihao_3_gamingoutcome = "stay"
        Finally @ahao_gamer apologised. Took too long. #speaker_3
        @ahao_gamer You can be sure of this: No more Alphas for you. A petition’s on the way. #speaker_6
        // *Petition unsuccessful. ZH stays. Positive ending. 

- 
{ zhihao_3_tweetstorm: 
    - 2:
    #ui:narrator
    #background:bg_zhihao_petition.jpg
    FML I say sorry already they still want to take away everything from me.
    How much is enough sia? After they make sure Alphas drop me, will they make sure I’ll never be pro again?
    - 4: 
    #ui:narrator
    #background:bg_zhihao_petition.jpg
    FML I say sorry already they still want to take away everything from me.
    How much is enough sia? After they make sure Alphas drop me, will they make sure I’ll never be pro again?
    - else:
    #ui:narrator
    #background:bg_zhihao_petition.jpg
    All these sick people. They say I racist and shit, but they’re bullies lah. All so happy to take a stranger down. 
    Will they say the same thing to my face? Tell me that I deserve to die? That I’m privileged? 
    Who says I’m privileged? I’m working cos I have to. Bo pian must help Ma and Ah Gong. 
    And so easy for all these stupid fellas-- all only go to school, all only know how to go cafe study, their pocket money all so easy to ask their father mother. They never headache over money before.
    They think they know everything just cos they like to sound smart. But they know nothing about hardship. Only know how to read Twitter and point finger. Just cos I’m Chinese they think I’m privileged -- like them. 
    Sibeh stupid sia, these children. 
    Only people who don’t worry about money or work will kill others this way. Cos to them a bad joke costs more than a job.
    This whole shit is a joke lah.
}



-> zhihao_3_5e

=== zhihao_3_5e ===
#knot:zhihao_3_5e
#ui:email
#emailheader:Read Email
#emailfrom:Marcus, The Singapore Journal <marcusreginald.tan@thesgjournal.com>
#emailto:Zhihao <zhihao@email.com>
#emailfromicon:ico_zhihao_elites.png
#emailsubject:Interview request
Dear Mr Lim Zhihao, /n I’m a senior staff writer for The Singapore Journal. I’m writing a feature on your recent controversy on Twitter and believe it’s important to have you share your side of the story. Are you available for an interview? We are planning to publish the feature before Friday.  /n /n  Best regards, /n  Marcus R. Tan, Senior Staff Writer, The Singapore Journal #speaker_1
VAR zhihao_3_interviewrequest = false
+ [Ignore the request] -> zhihao_3_5e_ignore

+ [Agree to a written interview] -> zhihao_3_5f

=== zhihao_3_5e_ignore ===
#ui:narrator
#background:bg_zhihao_bedroom_night.jpg
This shit won’t end right?
~ zhihao_3_interviewrequest = true
Okay lah. I’m the asshole lah. Everybody else is hero.
//If ZH is NOT already in his bedroom, he enters it. In the bedroom, ZH closes the curtain. The room darkens. 
#background:black.jpg
Best I die lah. Then the whole world will be happy.
-> zhihao_3_6

=== zhihao_3_5f ===
#knot:zhihao_3_5f
#ui:email
#emailheader:Compose Email
#emailto:Marcus, The Singapore Journal <marcusreginald.tan@thesgjournal.com>
#emailfrom:Zhihao <zhihao@email.com>
#emailfromicon:ico_zhihao.png
#emailsubject:Interview request
#replyemaildate:On Wed, Marcus, The Singapore Journal <marcusreginald.tan@thesgjournal.com> wrote 
#replyemailtext: Dear Mr Lim Zhihao, /n ...
Dear Marcus, #speaker_self
~ zhihao_3_interviewrequest = true
I’d be happy to assist and tell my side. But I only want to communicate in writing so it is in black and white. #speaker_self
Thank you. #speaker_self
Regards, #speaker_self
Zhihao  #speaker_self
#ui:narrator
#background:ui_emailsent.png
.

#knot:zhihao_3_minigame
#ui:mcq
#game_id:13
Minigame 13 // must add some text

-> zhihao_3_6



=== zhihao_3_6 ===
#knot:zhihao_3_6
#ui:narrator
#background:black.jpg
Thursday, 11:06am.
At the usual Bak Chor Mee place.
I’m supposed to meet Gavin at 11 A.M. Usually I’m the early one. I know I’m late but I’m scared sia.
#ui:scene
#background:bg_zhihao_bakchormee.jpg
#speaker_right_image:cha_zhihao_gavin_3_grim.png
#speaker_right_name:Gavin
Good lah. At least Gavin never bring Nadia. #inner_monologue
I better walk faster. #inner_monologue
Shit. His face chao black, I dunno how we can talk now. #inner_monologue
Hi. #speaker_self
#speaker_right_image:cha_zhihao_gavin_3_angry.png
... #speaker_right
#speaker_right_image:cha_zhihao_gavin_3_grim.png
Uh. #speaker_self
You not buying food? #speaker_self
You can get yours if you’re hungry. #speaker_right
I better get for him also. #inner_monologue
‘Kay. I’ll go. #speaker_self
#ui:narrator
#background:bg_zhihao_bakchormee.jpg
I bought two bowls of bak chor mee. Got him watermelon juice also.
#ui:scene
#background:bg_zhihao_bakchormee.jpg
#speaker_right_image:cha_zhihao_gavin_3_betrayed.png
#speaker_right_name:Gavin
I got for you also. You haven’t eat yet right? #speaker_self
He's not touching his food. #inner_monologue
#speaker_right_image:cha_zhihao_gavin_3_angry.png
I’ve never heard that kind of sentiment about Nadia from you. And I had to be the last to know. #speaker_right
Wah straight away start this topic ah. #inner_monologue
It was a joke... I don’t hate Nadia. #speaker_self
The only saving grace of this is that they didn’t dox her. #speaker_right
Bro, I don’t hate Nadia lah. Serious! #speaker_self
You know how ashamed I was that I couldn’t protect her? Because the attack had come from my closest circle? #speaker_right
#speaker_right_image:cha_zhihao_gavin_3_betrayed.png
I felt I’d betrayed her. #speaker_right
+ [I should explain properly] I didn’t attack her, sia. I was just saying now you need to change your lifestyle cos she Muslim. #speaker_self
    VAR zhihao_3_explaintogavin = true
    ~ zhihao_3_explaintogavin = true
    Ehh, I really don’t hate her, bro. I’m not saying she’s a bad person. She’s not. #speaker_self
    #speaker_right_image:cha_zhihao_gavin_3_angry.png
    You know you’re making strawmans right? #speaker_right
    Wtf why everyone keep talking about strawman? #inner_monologue
    Uh I know you’re angry lah, but can don’t talk so cheem anot? #speaker_self
    You’re twisting what I’m saying. #speaker_right
    #speaker_right_image:cha_zhihao_gavin_3_betrayed.png
    Orh. #inner_monologue
    Am I? #inner_monologue

+ [I should say sorry first]
    Bro, sorry. I didn’t know my joke was offensive. #speaker_self
    But uh. Now I see why. #speaker_self
    ~ zhihao_3_explaintogavin = false
    You know, all those times when I’d tell you about all my dates with her, and you’d laugh along and say you were happy for me? Was that for real? #speaker_right
    Yah! I was happy for you. Serious! #speaker_self
    But you weren’t. #speaker_right
    I mean... I was happy but I was sad also. Cos you were going to have less time for your friends. #speaker_self
    That wasn’t what you tweeted. #speaker_right
    Haiz. Best I don’t say anything liao. #inner_monologue

- You know what I told Nadia about you? That you were a one-in-a-million dude. That you were filial, you were loyal. #speaker_right
That you’re a damn sick gamer and you still never let it get to your head. #speaker_right
I told her you didn’t care about people’s backgrounds because, oh hey, look at your two best friends. A Sikh and a Jesus freak! #speaker_right
But that was my biggest error wasn’t it? Thinking you cut through all that outside noise and took people for who they are. I told her you were immune to bullshit. #speaker_right
I told her to trust me. #speaker_right
//GAVIN gives a mirthless laugh. His eyes convey sadness. #
#speaker_right_image:cha_zhihao_gavin_3_angry.png
But you’re the bullshit. #speaker_right
I wanna vomit. #inner_monologue
When he mentions me it’s all in past tense. #inner_monologue
{ zhihao_3_explaintogavin == true:
    Gavin I’m sorry. I dunno what else I can say. #speaker_self
    I don’t know either. #speaker_right
    I’m really sorry. #speaker_self
    He taking chao long to say something. #inner_monologue
    How? #inner_monologue
    What to do now? #inner_monologue
    You were like a brother to me. That’s all I can say. #speaker_right

- else:
    I’ll make it up to you. I can do whatever you need me to do. #speaker_self
    Zhihao. This isn’t just about me. What you tweeted was what you really felt. #speaker_right
    And I cannot be close to someone who doesn’t support my relationship with Nadia. #speaker_right
}
Shit. #inner_monologue
What’re you saying? #speaker_self
We can’t stay friends anymore. Nadia’s a priority. #speaker_right
What the…? Shit he really mean it sia. #inner_monologue
Uh, how’s Nadia? #speaker_self
#speaker_right_image:cha_zhihao_gavin_3_betrayed.png
She says she’s fine. But I don’t know. #speaker_right
+ [I should meet Nadia] Bo pian. I have to meet Nadia. #inner_monologue
    Can I meet her? I want to apologise to her.  #speaker_self
+ [Ask Gavin to apologise to her for me] How to face Nadia? But I need Gavin to pass my apology to her. #inner_monologue
    Can you tell Nadia I’m sorry?  #speaker_self
- I’ll tell her to join us. In fact she wanted to meet you with me. But I told her I’d speak to you in private first. #speaker_right
Oh. #speaker_self    
#ui:notification
#background:ui_zhihao_message.jpg
Aman: Bro you made the news. Can always call me if you need to talk, yeah? #message
Aman: thesgjournal.co.sg/breakingnews #message
#ui:narrator
-> zhihao_3_6a

=== zhihao_3_6a ===
#knot:zhihao_3_6a
#ui:narrator
#background:bg_zhihao_newsarticle.jpg
WTF the drama never end issit. 
That bloody journalist write this kind of article about me. Haiz.
{ zhihao_3_tweetstorm:
- 2:
    Gamer Lim Zhihao’s Alphas spot hangs in the balance: The ‘racist’ Alphas gamer has apologised for his tweets - but it may come ‘too little too late’, says organiser Ian Lim.
- 4:
    Alphas gamer Lim Zhihao’s career on thin ice: ‘Racist’ Alphas gamer Lim Zhihao apologises for tweets - but a growing petition is calling for his axing.
- else:
    Racism, bigotry, and Chinese privilege in professional gaming: We ask local gamers about Lim Zhihao’s racist Twitter fiasco, and whether industry culture is to blame.
}

#ui:scene
#background:bg_zhihao_bakchormee.jpg
#speaker_right_image:cha_zhihao_gavin_3_betrayed.png
#speaker_right_name:Gavin
What is it? #speaker_right
Shit. #inner_monologue
#speaker_right_image:cha_zhihao_gavin_3_concerned.png
I cannot take it liao. The whole world hates me. Gavin hates me. #inner_monologue
//GAVIN’s expression changes clearly to concern. ZHIHAO’s vision of GAVIN becomes blurry because he’s started to cry (put a filter?). #
Zhihao--hey– Shucks, I don’t have tissue... #speaker_right
Shit lah now the whole canteen can see me cry like some stupid zha bo (female). #inner_monologue
//Blurred vision of someone else (NADIA) next to GAVIN. #
#speaker_left_image:cha_zhihao_nadia_3_concerned.png
#speaker_left_name:Nadia
Nad, do you have tissue? #speaker_right
Oh! Oh no-- Gav. I told you not to pile on him. #speaker_left
He was reading something. #speaker_right
Someone showed me the article just now. Here, Zhihao, take the tissue. #speaker_left
//ZHIHAO accepts the tissue from NADIA. #
Thank you. #speaker_self
You alright? #speaker_left
Yeah. I’m sorry. #speaker_self
I know what you wrote. I was really upset, especially since we know each other and you were always nice to me. At least to my face. #speaker_left
+ [I'm sorry] Nadia, I’m sorry. I shouldn’t have posted that. I dunno why I did, but I don’t hate you. #speaker_self
    I really don’t, sia. #speaker_self
    What were you feeling before you wrote that? #speaker_left
    … I was angry about something else. Some gaming thing. #speaker_self
    And I dunno how it… yeah, I dunno why. #speaker_self
    Aiyah it was a rubbish thing. #speaker_self
    Zhihao, I know you don’t hate me. But you definitely don’t like that I’m “cramping” Gavin’s style, and yours by extension. #speaker_left
    And you meant that part of it. Which was the whole tweet. #speaker_left

+ [I know you were hurt] Nadia, I know you were hurt by what I posted. I only did it cos I was-- #speaker_self
    ...I was, uh… Gavin- #speaker_self
    Shit, how to say what I feel? #inner_monologue
    ...It got hard to go chill with Gavin. Cos both of you always pak tor. #speaker_self
    It’s not cos I hate you or that kind of thing. #speaker_self
    Who said anything about you hating me? #speaker_left
    You missed Gavin’s company. And you saw me as a giant inconvenience who’d change all his habits and then change who he is to you. #speaker_left
    Thing is, if it were a Chinese girl, you’d simply be ranting about time and friendship. #speaker_left
    Or maybe you wouldn’t even have tweeted about it at all -- because it wouldn’t make people laugh. Right? #speaker_left

- I-- no, I... #speaker_self
I want you to know I’m not really angry anymore. Well, a lot less angry. Must have been a tough few days for you. I’ve seen what people tweeted. It’s terrible. #speaker_left
...it’s okay. #speaker_self

//A group of students passes their table. #
#speaker_left_image:cha_zhihao_student_one_3_gossiping.png
#speaker_left_name:Random Student 1
#speaker_right_image:cha_zhihao_student_two_3_gossiping.png
#speaker_right_name:Random Student 2

I told you it’s that racist goon... #speaker_left
Eh omigod he’s crying leh! #speaker_right
Where? Ohh... #speaker_left
WTH is wrong with people. Why can't everybody just leave me alone? #inner_monologue
//GAVIN glares at the group. #
#speaker_left_image:cha_zhihao_nadia_3_concerned.png
#speaker_left_name:Nadia
#speaker_right_image:cha_zhihao_gavin_3_angry.png
#speaker_right_name:Gavin
HEY! Cut it out. #speaker_right
Both of you haven’t touched your food. #speaker_left
#speaker_right_image:cha_zhihao_gavin_3_grim.png
It’s okay, I’m not hungry. Anyway we’ve got to go for Econs now. #speaker_right
//GAVIN gets up. He pushes a five-dollar note across the table to ZHIHAO. #
Zhihao, here's cash for the lunch. Keep the change. For the food. Sorry we have to go. #speaker_right
We always take turns to buy food. Now my treat he don’t even want to take. #inner_monologue
You don’t need to pay me… #speaker_self
Take care. #speaker_right
Gav… #speaker_left
I’m okay lah. Just go with Gavin. #speaker_self
//ZHIHAO watches GAVIN and NADIA leave. NADIA is looking back at him in concern. #
I not okay also cannot say, right. #inner_monologue

-> zhihao_3_7

=== zhihao_3_7 ===
#knot:zhihao_3_7
#ui:narrator
#background:bg_zhihao_home.jpg
That night, at home, while helping Ma in the kitchen.
#ui:scene
#background:bg_zhihao_home.jpg
#speaker_left_image:cha_zhihao_mother_frustrated.png
#speaker_left_name:Ma
Eh when your Gavin friend going put his things in the room? #speaker_left
You better ask him confirm so I can take leave and help him. One person alone cannot move all their barang. #speaker_left
+ [Come clean directly] He’s not actually renting lah. I asked him to bluff you so you got money to pay for Ah Gong. #speaker_self
    Hah?!-- Eh. You stop and face me. You do what? He pay me is with whose money? #speaker_left
    Is my money. #speaker_self
    #speaker_left_image:cha_zhihao_mother_mean.png
    Your money. You paying for your friend? #speaker_left
    No. He stood in for me cos if not you won’t accept my money. #speaker_self
    Why you go take down the ad? Now I need to look for tenant again. Waste time, you know. #speaker_left

+ [Avoid admitting to what you did] Better that we don’t rent out. #speaker_self
    You say what? #speaker_left
    I don’t want to mix my friends and money. #speaker_self
    Haiyah! Then like that how! Now I have to put up ad again. #speaker_left
    #speaker_left_image:cha_zhihao_mother_mean.png
    Next time you don’t help lah, end up also prata. Now we back to square one. #speaker_left

- I can pa-- #speaker_self
{ zhihao_3_gamingoutcome:
 - "quit":
    Oh...I can’t pay. #inner_monologue
    My whole career is dead now. #inner_monologue
    Even if I still have fans, even if I still stream -- people will always call me the racist gamer. #inner_monologue
    As long as I stream, my stupid joke will follow me. People will never let it go. #inner_monologue
    Gavin will never let it go.  #inner_monologue
    VAR zhihao_3_payrental = false
    ~ zhihao_3_payrental = false
    I’ll put up the ad again. Sorry Ma. #speaker_self
- "stay":
    Can I still pay? I dunno if I’m still with Alphas. #inner_monologue
    But if they still give me chance, then I can prove myself. Change my image and make sure people know the real me.  #inner_monologue
    Most important is that I keep my word to pay. I already bluff Ma and now I make her worry again. #inner_monologue
    No matter what outcome, I’ll make sure she won’t  worry about Ah Gong. #inner_monologue
    ~ zhihao_3_payrental = true
    I will pay.  #speaker_self
- "toxic":
    Can I still pay? #inner_monologue
    I must keeping paying. Even if Alphas kicks me out, I can still stream. #inner_monologue
    You know what? If they don’t drop me yet I’ll withdraw. Show people that if they just wanna see me die, they can go jiak sai (eat shit). #inner_monologue
    I’ll show them I’m a strong person. Cos I am. Cos they don’t know me. #inner_monologue
    When I’m successful, they WILL know me. #inner_monologue
    ~ zhihao_3_payrental = true
    Let me pay. #speaker_self
}

-> zhihao_3_8

=== zhihao_3_8 ===
#knot:zhihao_3_8
#ui:narrator
#background:bg_zhihao_home.jpg
A lot of time passed. It's Chinese New Year again, already.
{ zhihao_3_gamingoutcome:
 - "quit":
    I pulled out of Alphas. I wrote Ian an email to say I resign. 
    No matter how many times I say I don’t think like that anymore, people still say I’m haven’t changed. So many months already but still got people dm me to go and die.
    So I quit streaming also. Bo pian. 
    When Ma found the tenant for the master bedroom, I really damn heart pain. Cos I failed Pa.
    Sometimes at night I pretend the whole thing never happened. 
    But whenever I hear the tenant play his techno shit at 1am, or whenever I have to close my window cos of his cigarette smoke, I know how much I failed.   
    And I cannot tell Gavin about these things anymore. 
    When I think about Gavin, I start thinking of Pa also. And now I see it’s a good thing he’s dead – so he won’t know how I failed. 
- "stay":
    Alphas kept me in the end. The backlash at first very bad lah, but Ian said that cos I apologised early, and also cos it’s a hard lesson, he knows I won’t repeat the mistake. 
    Actually it wasn’t really cos I scared I kena kick out by Alphas. It was cos of Gavin. 
    Some people think I still hold the same view, just that I got learn to censor. 
    But I don’t hold that view anymore. Not after I lost a brother in Gavin. Not after Nadia still go look out for me cos she saw I was depressed.
    Am I better now? Maybe I’m a better person, but I don’t feel better.
    The good thing is that I’m successful now. I don’t take it for granted.
-  "toxic":
    Alphas dropped me long ago. You guess how many people signed the petition? 3k. After everyone went to dig up all my past tweets.    
    But it’s best like that. They’re PC, I’m not. And I have to stand up for myself. I still stream.
    I don't have to be PC to be popular. I found out I got a lot of loyal supporters. They mean a lot to me, cos they helped me survive and pay for Ah Gong. I owe my success to them.
    I don’t like to talk about Gavin. I try to keep busy so I don’t get to think about it. Because if I do, I… I dunno how to describe the feeling. 
    It’s something like when I know Pa won’t come back. 
    I never thought it’d happen again – with someone I still see in school. First I lose Pa, now I lose my brother too.
}
#background:bg_zhihao_car.jpg
So fast CNY again. Ma and I are on the way to my uncles' place to bai nian (visit for CNY).
Also, we are late. Again.
#ui:scene
#background:bg_zhihao_car.jpg
#speaker_left_image:cha_zhihao_mother_normal.png
#speaker_left_name:Ma
... #speaker_self
Why you so quiet? #speaker_left
Nothing to talk about. #speaker_self
...You okay anot? #speaker_left
She still dunno what happened cos she don’t follow this online news. #speaker_self
+ [Tell her about what happened] If Ji Gu or Dua Gu talk about me in the news, you don’t listen to them. #speaker_self
    How come? What happened? #speaker_left
    VAR zhihao_3_tellma = true
    ~ zhihao_3_tellma = true
    I wrote a joke and some people didn’t like it. #speaker_self
    Don’t like don’t like lor. Why become news? #speaker_left
    Ji Gu and Dua Gu will talk rubbish. You just ignore. #speaker_self
    What joke you tell? #speaker_left
    Nevermind lah, Ma. #speaker_self
    {zhihao_3_payrental == true:
        Tonight we eat steamboat, okay? I buy all your favourite already. #speaker_left
        Why? #speaker_self
        Long time you never eat. #speaker_left
        What we celebrating? #speaker_self
        Tsk, treat you cannot issit? #speaker_left
        But for what? #speaker_self
        For Ah Gong lah. You always helping pay the home fees. I cannot don’t treat you mah! #speaker_left
    - else: 
        Tonight we eat steamboat okay? Ask our tenant that Mr Chua join. #speaker_left
        He born in ‘99 you call him Mr Chua. #speaker_self
        Must respect a bit lah he paying rent to us what. #speaker_left
        What we celebrating? #speaker_self
        If not for Mr Chua, how to pay for Ah Gong? #speaker_left    
    }


+ [Be vague] Got some drama. But too complicated so Ji Gu and Dua Gu will talk rubbish. #speaker_self
    What drama? They disturb you you better tell me. #speaker_left
    ~ zhihao_3_tellma = false
    Outside drama. They will talk about it. #speaker_self
    {zhihao_3_payrental == true:
        Issit your computer game? #speaker_left
        Something like that. I just don’t like they confirm talk about it. #speaker_self
        ...if it’s money problem you better tell me. We can still rent out the room. Ma still got the agent’s number. #speaker_left
        Don’t have problem lah. You don’t worry about the money. #speaker_self
        You sure anot? #speaker_left
        Yah lah. Is okay. #speaker_self

    - else: 
       Your computer game issit! I thought you stop already? #speaker_left
        I stop liao. I just don’t like they confirm talk about it. #speaker_self
        Aiyah you don’t care them lah. #speaker_left
        Anyway we got the tenant that Mr Chua, don’t need to worry about the money, hah. You focus on your school is enough. #speaker_left
    }

- -> zhihao_3_9

=== zhihao_3_9 ===
#knot:zhihao_3_9
#ui:scene
#background:bg_zhihao_jigu_livingroom.jpg
#speaker_left_image:cha_zhihao_mother_normal.png
#speaker_left_name:Ma
#speaker_right_image:cha_zhihao_jigu_normal.png
#speaker_right_name:Ji Gu

They whole day talk about Ji Gu’s reno. Then REITs. Then Ji Gu’s reno again. #inner_monologue
Nothing about me. #inner_monologue
Swee. #inner_monologue
Ah Hao! That time I see on the Tweeter... #speaker_right
WAH LAO EHHHH... #inner_monologue
Wah, some people sibeh jialat. They dig and dig to sabo you, that's why must be careful what you write! #speaker_right
Eh you say is your computer game why suddenly become something else? What you write? #speaker_left
+ [Ignore Ma and Ji Gu] It’s okay lah. Over liao. #speaker_self
+ [Talk about the incident briefly] I tweeted something they don’t like, so a lot of gamers not happy. #speaker_self
- Oh issit...#speaker_right
{ zhihao_3_gamingoutcome: 
- "quit":
    You got fired right? Haiyoh, people are terrible, you know, just cos they don’t like what you say they come after your rice bowl. #speaker_right
    I quit streaming long time liao. Old news. #speaker_self
    So what you doing now? #speaker_right
    I do VOD reviews for other players, review their gameplay. Help them improve. #speaker_self
    You earn enough anot? #speaker_right
    Testing only. Must see first. #speaker_self 
- "stay":
    Luckily your team never fire you ah. This kind of thing people got lose everything, you know. #speaker_right
    All swee. I still stream also. That thing very long ago liao. #speaker_self
    Why your team want to fire you? #speaker_left
    I didn’t get fired lah. #speaker_self
    They that time want to fire you for what? #speaker_left
    Was a misunderstanding. I apologised and all swee liao. #speaker_self
    Haiyah, as long as you still earning is okay. #speaker_right
- "toxic":
    You got fired right? Haiyoh, people are terrible, you know, just cos they don’t like what you say they come after your rice bowl. #speaker_right
    Sometimes better to just say sorry, make people happy first. #speaker_right
    Apologise to strangers for what? My life is not their business. #speaker_self
    I’m streaming different games now so all is okay. Still got my followers who like me. #speaker_self
    Ma’s face damn hard to read. And she keeping quiet. Why sia? #inner_monologue
}

#ui:narrator
#background:bg_zhihao_car.jpg
In the car, on the way home. 
#ui:scene
#speaker_right_image:pixel.png
#speaker_left_image:cha_zhihao_mother_normal.png
#speaker_left_name:Ma
Your computer game the drama, is that why Gavin don’t want to rent anymore? #speaker_left
{zhihao_3_tellma == true:
    Ma I tell you already, is I get Gavin to bluff you so you’ll take my payment for Ah Gong’s fees. #speaker_self
    I know. But that day your mood can tell. I think to myself, confirm you fight with him that’s why you so fast own up right. #speaker_left
- else:
    Ma, I just don’t want to mix friends and money lah. I say already. #speaker_self
    That day your mood can tell. I think to myself, confirm you fight with him that’s why so fast tell me. #speaker_left
    You think I dunno Gavin give me your money one ah? #speaker_left
}
+ [Admit to it] Yah was my fault. #speaker_self
    So how? #speaker_left
    #speaker_left_image:cha_zhihao_mother_frustrated.png
    Like that lor. He don’t wanna talk to me I also cannot do anything. #speaker_self
    How long already? #speaker_left
    Since that day. #speaker_self

+ [Gloss over it] Whatever lah, we not talking anymore. #speaker_self
    You got try anot? #speaker_left
    #speaker_left_image:cha_zhihao_mother_frustrated.png
    He go his way I go my way. Nothing wrong what. #speaker_self
    If nothing wrong then why since that day you stop going out to find your friends? Even Aman ask you you still stay at home. #speaker_left
    ... #speaker_self

- { zhihao_3_gamingoutcome: 
- "toxic":
    I called him and invited him to our steamboat. Together with Aman. #speaker_left
    Siao ah! #speaker_self
    #speaker_left_image:cha_zhihao_mother_normal.png
    Wah, I better set up Diablo for us, is his favourite-  #inner_monologue
    I tell them I already get the food for you all cannot waste. But only Aman is coming. #speaker_left
    ...eh what. #inner_monologue
    Orh. Gavin got say anything? #speaker_self
    Nothing much. He just wish you and me happy CNY. He say he got church gathering leh. You want to call him anot? #speaker_left
    Of course he won’t come, I’m the idiot to think he said yes. #inner_monologue
    No. No point. #speaker_self
    But thank you, Ma. #speaker_self
    Hmm -> zhihao_3_toxicending
- else: 
    I called him. He’s coming tonight with Aman. #speaker_left
    #speaker_left_image:cha_zhihao_mother_smiling.png
    Siao ah! #speaker_self
    He’s okay. I tell him I already get the food for you all cannot waste. #speaker_left
    Is he really coming cos of me or cos Ma ask him then he paiseh? #inner_monologue
    What did he say? #speaker_self
    Nothing much. After a while he just tell me ‘okay Auntie’. You want to call him anot? Before he comes over? #speaker_left
    Hmm  -> zhihao_3_9a
}


=== zhihao_3_9a ===
#knot:zhihao_3_9a
#ui:scene
#background:bg_zhihao_car.jpg
#speaker_left_image:cha_zhihao_mother_normal.png
#speaker_left_name:Ma

+ [Call Gavin] Wah scary, sia. I dunno what Gavin is thinking. #inner_monologue
    #background:ui_zhihao_phonecall.jpg    
    But if he got say okay to the dinner then means he—- #inner_monologue
    #speaker_right_image:cha_zhihao_gavin_3_grim.png
    #speaker_right_name:Gavin
    #speaker_left_image:pixel.png
    Hey. #speaker_right

+ [Don't call Gavin] Nevermind. #speaker_self
    You sure? #speaker_left
    I talk to him when he comes lor. #speaker_self
    #background:ui_zhihao_phonecall.jpg
    #speaker_right_image:cha_zhihao_gavin_3_grim.png
    #speaker_right_name:Gavin
    #speaker_left_image:pixel.png
    Shit. He call to pangseh issit? #inner_monologue
    Hey.  #speaker_right
- Hey bro.  #speaker_self

+ [You coming later right?] Uh. You coming to my house for dinner later right? #speaker_self
    Yeah. Your mum’s persistent. #speaker_right
    #speaker_right_image:cha_zhihao_gavin_3_concerned.png
    Dunno whether he wanna back out. #inner_monologue
    
    ++ [I better make sure he shows up] Oh haha. Yah she like that one. #speaker_self
        How are you? #speaker_right
        Sama-sama lor. #speaker_self
    ++ [If he really don't want then no point la] Eh, if you really don’t want to come, it’s okay one.#speaker_self
    -- I heard from your mum you’ve been keeping to yourself a lot. #speaker_right
    ++ Aiyah, she drama lah.[]  #speaker_self
    ++ Busy mah. [] #speaker_self
        {zhihao_3_gamingoutcome == "stay":
            I need to stream. #speaker_self
        - else:
            I need to study. #speaker_self
        }

+ [How are things?] How are things? #speaker_self
    Things are good. Did your mum tell you Aman and I are coming over later? #speaker_right
    #speaker_right_image:cha_zhihao_gavin_3_concerned.png
    Yah. #speaker_self
    Awks sia. What do I say? #inner_monologue
    ++ How are you and Nadia? [] #speaker_self
        We’re doing well. Nadia’s killing it as usual with the mid-terms.  #speaker_right
    ++ Good that you and Aman are coming. [] If not sibeh sian Haha. #speaker_self

- I.. um. Look, I know you’ve had a rough set of months. And I’ve been reflecting on this – I wasn’t there for you because I was angry. #speaker_right
But I should have been. #speaker_right
Is he trying to say sorry? But what for? #inner_monologue
Eh, it was my fault lah. I understand if you don’t wanna stay friends. Don’t have to say yes to my mother. #speaker_self
Uh, if you really don’t want to come. #speaker_self
I’ll see you at your place at seven. Happy CNY, by the way. #speaker_right
Woah. For real anot? #inner_monologue
It’s a big weight off my shoulders. I feel like… #inner_monologue
Can just cry sia. #inner_monologue
Haha ‘kay bro. Happy CNY. #speaker_self
 {zhihao_3_gamingoutcome:
 - "stay": -> zhihao_3_stayending
 - "quit": -> zhihao_3_quitending
}


=== zhihao_3_stayending ===
#knot:zhihao_3_stayending
#ui:narrator
#background:bg_zhihao_steamboat.jpg
It’s hard for me to look back on the past year. I lost face, I lost my game rep, I lost friends. The only people who can understand are people who also got hantam-ed online and made the news.
VAR chapter_3_ending = 1
~ chapter_3_ending = 1
VAR story_finished = true
~ story_finished = true
But I dunno any of them, so when this kind of cancellation happens, there is no one you can turn to. No one who can help you rebuild your rep. 
I can say that those days when I was trending, when everyone in SG knew my name and my tweets and never let them go – those days were almost as bad as the days after Pa died. 
Sucks to compare it like that lah but that’s the truth sia. 
#background:bg_zhihao_promo.jpg
But you know what? I’m still standing. And the people who matter are still with me – even after I did them wrong.
I’m a lucky man, and now a damn grateful one. So this is what it’s like so far to be me. No regrets, swee. 
-> zhihao_3_ending

=== zhihao_3_quitending ===
#knot:zhihao_3_quitending
#ui:narrator
#background:bg_zhihao_steamboat.jpg
It’s hard for me to look back on the past year. I lost my rep, I quit my career, I lost friends. The only people who can understand are people who also got hantam-ed online and made the news.
~ chapter_3_ending = 2
~ story_finished = true
But I dunno any of them, so when this kind of cancellation happens, there is no one you can turn to. No one who can help you rebuild your rep. 
I can say that the week I quit streaming, and when Ma put up the master bedroom for rent again – it was almost as bad as the week Pa died. 
So every time I see that Mr Chua at home, it’s damn heart pain sia. Cos I failed to help Ma. I have to tell myself that I still got a long road, and I still got time to make Pa proud again.
#background:bg_zhihao_promo.jpg
But you know what? I’m standing. And the people who matter are still with me – even after I did them wrong. 
I’m a lucky man, and this is what it’s been like, so far, to be me. 

-> zhihao_3_ending

=== zhihao_3_toxicending ===
#knot:zhihao_3_toxicending
#ui:narrator
#background:bg_zhihao_steamboat.jpg
I could have made different decisions in the past. But career-wise, I’m damn steady.
~ chapter_3_ending = 3
~ story_finished = true
For a while, I lost my game rep, and I lost friends. When people die-die want you to lose your job over a joke, you start seeing how everyone can be an asshole – and most people never think of themselves as one.
But I got no regrets standing up for myself - no tweet should cost anyone their ricebowl. No matter how offensive it is.
Maybe it was a good thing I lost my place in Alphas, cos now I know that my real fans stick with my streaming. 
#background:bg_zhihao_promo.jpg
One thing I hope for is that, eventually, Gavin and I will be friends again. And that he’ll forgive me for the one joke I now know I die-die cannot make. If we make up before we graduate, I’ll be the happiest person in the world. Serious.
But I’m already a lucky man for keeping my streaming career. I can’t expect anything more. I can only hope for the best. So here’s my life now, lor. And this is what it’s been like, to be me. 



-> zhihao_3_ending


=== zhihao_3_ending ===
#knot:zhihao_3_ending
#ui:story_end
#reflection_id:13
Reflection 13


-> END


=== story_end_browser ===
#ui:story_end_browser
#reflection_id:13
reflection browser


-> END
