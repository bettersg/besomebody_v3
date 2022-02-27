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
#background:bg_zhihao_home.jpg
xxxx

-> zhihao_1_1


=== zhihao_1_1 ===
#knot:zhihao_1_1
#ui:scene
#background:bg_zhihao_home.jpg
#speaker_left_image:cha_zhihao_mum_normal.png
#speaker_left_name:Amma
xxx

-> zhihao_1_2_narration 
 
=== zhihao_1_2_narration ===
#knot:zhihao_1_2_narration
#ui:narrator
#background:bg_zhihao_pushpa_home.jpg
xxx
-> zhihao_1_2


=== zhihao_1_2 ===
#knot:zhihao_1_2
#ui:scene
#background:bg_zhihao_pushpa_home.jpg
#speaker_left_image:cha_zhihao_mum_normal.png
#speaker_left_name:Amma
#speaker_right_image:cha_zhihao_revati_normal.png 
#speaker_right_name:Revati
xxx

-> zhihao_1_3



=== zhihao_1_3 ===
#knot:zhihao_1_minigame
#ui:mcq
#game_id:11
Minigame 11 // must add some text


#knot:zhihao_1_3
#ui:narrator
#background:bg_zhihao_pushpa_home.jpg

xxxx
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
