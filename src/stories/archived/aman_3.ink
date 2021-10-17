VAR aman_1_ending_1 = true
VAR aman_2_5_change_look = true
VAR aman_2_6_secret = true

-> aman_3_intro






=== aman_3_intro ===
#knot:aman_3_intro
#ui:narrator
#background:aman_1_intro.jpg
#music:aman_intro.mp3
.
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
#speaker_left_image:zhihao_smiling.png 
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
// {aman_1_ending_1: 
//     Haha! I remember once in BMT, he pushed his hair in front of his face and pretended to be a pontianak. 
//     Scared the crap out of all the bunkmates!
// }
// = aman_3_1_punch
Na, come and punch la. You do the honours. #speaker_left
Ain’t gonna veto that... #speaker_self
#background:new_message_notification.jpg
-> aman_3_1_whatsapp


=== aman_3_1_whatsapp ===
#knot:aman_3_1_whatsapp 
#ui:whatsapp
#background:whatsapp.png
#chat_group_title:Jothi
#chat_group_image:jothi.jpg
#speaker1_name:Jothi
#timestamp:22.17
Come home. Now. #speaker_1
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
It looked like the scene from one of my mum's movies.
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
{aman_1_ending_1: 
    Only AFTER you cut your hair in the first place! #speaker_left	
}
{not aman_1_ending_1: 
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

 
 
 


-> END