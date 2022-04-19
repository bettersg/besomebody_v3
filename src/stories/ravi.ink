/*


-> ravi_1_1_narration 

=== ravi_1_1_narration ===
#knot:ravi_1_1_narration
#ui:narrator
#background:bg_ravi_schooldrivewayatnight.jpg
Text

-> ravi_1_1


=== ravi_1_1 ===
#knot:ravi_1_1
#ui:scene
#background:bg_ravi_fathercaratnight.jpg
#speaker_right_image:cha_ravi_rahman_normal.png
#speaker_right_name:Abah
Text



#knot:ravi_1_intro
#ui:narrator
#background:ravi_school.jpg
#music:ravi_intro.mp3

#knot:ravi_2_haircut_no
#ui:scene
#background:ravi_school.jpg
#speaker_left_image:cha_ravi_zhihaosmiling.png 
#speaker_left_name:Zhihao 
#speaker_right_image:cha_ravi_ericangry.png 
#speaker_right_name:Eric   

#speaker_right_image:pixel.png 

#knot:ravi_2_haircut_yes
#ui:whatsapp
#background:whatsapp.png
#chat_group_title:Gavin Wong
#chat_group_image:cha_ravi_gavinprofileicon.jpg
#speaker_1_name:Gavin
#speaker_2_name:Eric
#speaker_3_name:Eric
#speaker_4_name:Eric
#timestamp:21.34

#ui:notification
#background:ui_ravi_message.jpg
Gavin: help # message
 
FOR MINIGAMES DO NOT START A NEW KNOT
#knot:ravi_2_minigame
#ui:mcq
#game_id:2
Minigame // must add some text
-> ravi_2_3 // point to next section of story


*/

// DECLARE GLOBAL VARIABLES
VAR character_id = 3
// VAR chapter_1_ending = 0 
// VAR chapter_2_ending = 0 
// VAR chapter_3_ending = 0 
// VAR chapter_4_ending = 0 

-> ravi_1_intro

// CHARACTER INTRODUCTION


=== ravi_1_intro ===
#knot:ravi_1_intro
#ui:narrator
#background:bg_ravi_intro.jpg
#music:ravi_intro.mp3
Ravi Kannasamy #title
VAR chapter_id = 1
~ chapter_id = 1
Hey there. I’m Ravi. I’m 24. Aviation engineer.  
Well, ASPIRING aviation engineer, anyway. I’m still in uni. 
One more year to go until I join the working world! I want to be able to support my family soon.
Family has been just Amma (mother), Revati and I for a while.
As for Appa... Appa (father) is no longer family.
He used to be in the airline industry. He’s part of the reason I wanted to become an aviation engineer in the first place. 
He used to sneak Revati and I into the hangars on the weekends, just to look at those airplanes he’d be working on. 
Just looking at those planes, and imagining them take off to the skies – it filled my heart with a great sense of wonder.
And then...one day, it happened.  It was just another regular day. 
Appa left early in the morning... and didn't come back.
He left us that day. He’s been uncontactable since. We called and called, but he never picked up. 
Sometimes... I think he wanted to be like the airplanes he worked on, free to roam the skies, to go anywhere they pleased. But I might never find out.
Since then, Amma, Revati and I have had to fend for ourselves. 
It’s not been easy, especially for Amma. She works a 12-hour shift as a sales assistant at the department store. 
Revati is doing her A levels, and she’s done part-time jobs too. 
My dream is to make life easier for them. If I can fulfill mine, I would be helping theirs too.  
But first, I have grades to keep up, an internship to find, and then hopefully, a job! Like a good Indian boy haha. 
So that’s me -- Ravi.
And this is what it’s like, to be me.
CHAPTER {chapter_id} #title
Home Truths #title


-> ravi_1_1_narration 

// START STORY

=== ravi_1_1_narration ===
#knot:ravi_1_1_narration
#ui:narrator
#background:bg_ravi_home.jpg
After a tiring day at school, I come home to our little apartment in Tampines.
-> ravi_1_1


=== ravi_1_1 ===
#knot:ravi_1_1
#ui:scene
#background:bg_ravi_home.jpg
#speaker_left_image:cha_ravi_mum_normal.png
#speaker_left_name:Amma
Halooo ma! #speaker_self
Vaada kanna (welcome, darling). Have you eaten? #speaker_left
Yup, I had dinner. I ate with my classmates after class. #speaker_self
Ok. But you should know, you missed a great fish curry. Looks like I’ll have to throw the rest away- #speaker_left
Oh! Maybe I am a little bit hungry after all. Can I have some curry please? #speaker_self
#background:bg_ravi_fishcurry.jpg
Aha! I knew it. I don’t think you’ve ever said no to my fish curry.  #speaker_left
Hmm...I think you’re probably right! #speaker_self
Mmmm... Amma's fish curry... Amma doesn't really talk about her feelings, so she expresses her emotions through her cooking, especially her curries. #inner_monologue
Even the neighbours came for it, sold on the bright heat of masala and turmeric that’d waft through the window grilles (not all our neighbours enjoyed the smell though.) #inner_monologue
The dish spoke celebration, until the day Appa disappeared. That day, we sat around crying as Amma heaped thick curry onto our plates – knowing it was the only comfort we could have, a piece of the past we could bring to life through Amma’s cooking skills. #inner_monologue
She conveyed her love, and sometimes sadness, through it. #inner_monologue
Anyway, go shower, you look so sweaty. Then you can eat. I’ll reheat the curry for you. #speaker_left
+ Hmm ok. See you in 10 minutes.[] #speaker_self
    #ui:narrator
    #background:bg_ravi_home.jpg
    A few minutes later, after the fastest cold shower ever...
    #ui:scene
    #background:bg_ravi_fishcurry.jpg
+ It's ok ma, let's eat while it's hot! []  #speaker_self
- As always, it smells amazing! I feel like I could eat 10 bowls all by myself. Did you do anything different this time? #speaker_self
Ah, so you found my secret ingredient! I put in some garam masala (a spice) that Pushpa Aunty gave to us when we went over last week. Very fragrant! #speaker_left
I think she made it herself. You know how she is. #speaker_left
Oh nice. Last time we visited her, the sambal she made… also power! She could probably run a sambal chain restaurant! I must have dreamt of her sambal so many times… #speaker_self
#background:bg_ravi_home.jpg
... #speaker_left
Ravi, before you start... we need to talk about something.  #speaker_left

+ [Take just one bite first] Oh my god, this is so good!   #speaker_self
    VAR ravi_1_motherempathy = 0
    ~ ravi_1_motherempathy = 0
    The way it blends with the richness of the coconut milk and the kick of the curry leaves. You can really taste the - #speaker_self
    ...Ravi? #speaker_left
    ...Sorry, please continue. #speaker_self
    Yikes...I totally lost myself for a sec there. #inner_monologue
    So...today at the shop.. #speaker_left
    Oh, sorry Amma, could you pass me the vadai (a snack) please? #speaker_self
    ...Here. But let me finish. #speaker_left
    Now I don’t know why I ate that very average mee hoon in uni. I got so hungry waiting for class to get over.  Should have texted you to ask what was for dinner- #speaker_self
    Wait! I’m getting distracted by the food again. I really have to stop eating.  #inner_monologue
    Oh wait. I remember why I didn’t text you. Today is Wednesday, right? Isn’t today supposed to be a late shift for you?  #speaker_self
    
+ [Stop and listen] Amma’s looking very quiet. This can’t be good… #inner_monologue
    ~ ravi_1_motherempathy = 1
    Something feels off about all this … she made fish curry and looks sad  #inner_monologue
    Sure...what do we have to talk about? #inner_monologue
    ... #speaker_left
    Wait a minute, Amma, weren’t you supposed to be working late today? #speaker_self
- Yes. #speaker_left
How come you’re back home early? #speaker_self
That’s what I wanted to talk about... #speaker_left
#speaker_left_image:cha_ravi_mum_worried.png
So, today at the shop...they told me that they had to let me go. #speaker_left
What? #speaker_self
Yeah. The manager told me this morning. #speaker_left
How did this happen? I thought you were doing well. You’ve never missed a day of work. #speaker_self
Well, it didn’t matter. They asked me to hand in my card anyway. #speaker_left
They told me that it was tough for the business to survive lah. #speaker_left
Not enough people coming into the stores these days. And even when people come in, they don’t like us to approach them when they’re shopping. #speaker_left
They’d rather just shop on their own, in quiet. #speaker_left
But still... I thought they would give us some time you know? At least let me finish the month… #speaker_left
Amma looks really sad. I really don’t know what to do to make her feel better, or even what to say...what should I do? #inner_monologue

+ [I'm so sorry to hear that Amma] Oh ma. I am so sorry. I really am. #speaker_self
    ~ ravi_1_motherempathy += 1
    Thank you, Ravi. I know it’s hard for you. It’s hard for me, too. #speaker_left

+ [How could they do this?!] This is so sudden. That’s it? After so many years? How could they?! #speaker_self
    That’s how it is...I thought they would have let me stay a bit longer.  #speaker_left
    I’ve been there for half my life. I’ve been loyal. But all that didn’t help in the end. #speaker_left
    It’s just not fair. Amma worked so hard and this is how they reward her?  #inner_monologue

- Anyway...I think I saw this coming. #speaker_left
What do you mean? #speaker_self
Business isn’t booming. There’s no commission, because there’s no sales. Everyone is buying things online nowadays. #speaker_left
You also buy everything online right? There are so many platforms to choose from. Every bus also has some online sale ad - 11.11, 10.10, Mid-Week sale, Mid-year sale. How to compete?  #speaker_left
Hmm...yeah... #speaker_self
So that’s why lah. #speaker_left
What the hell! If the shopping centre is not doing well, they should fire the CEO! Or the manager! Why fire Amma? She’s been so loyal and hardworking. Fire those idiots on top who are responsible. #inner_monologue
It’s not her fault…  Stupid rich businessmen - all they care about is profit and not people! I can see the tears, welling in her eyes. It’s so unfair. #inner_monologue


+ [I hope you're ok ma] I hope you’re ok ma. #speaker_self
    ~ ravi_1_motherempathy += 1
    I’m ok kanna #speaker_left
    ... #speaker_left
    Amma... you’re crying. #speaker_self
    What do you want me to do? I can’t go back there and beg for my job back. #speaker_left
    It’s just… like I said, I’ve worked there for so long. It’s all I know. #speaker_left
    

+ [Have you told Revati?]  Have you told Revati? #speaker_self
    Yeah, I did. She is in her room. #speaker_left
    What did she say? #speaker_self
    What else? Same thing. She’s upset. #speaker_left
    ...  #speaker_left
    Why wouldn’t she be?  #speaker_left
    Ever since she was in primary school, I’ve been a sales assistant. I really thought I’d be able to work there until Revati finishes uni. #speaker_left

- I thought that I could stay there, and that everything would be fine. #speaker_left
But that’s no longer true. #speaker_left
But it’s ok. What’s done is done. We will have to move on. And also, more importantly, we will have to move out of here. #speaker_left
Move out? Why? #speaker_self
I didn’t tell you or Revati about this, but...kanna (dear), we are already two months late for rent.  #speaker_left
We’ve been barely paying it off before then. I don’t earn a lot of money, and I don’t have much savings to spare. I barely have enough to pay it off. #speaker_left
This place was too big anyway. And I didn’t want to affect Revati. You know she’s studying hard for her A-Levels.  #speaker_left
And for your uni fees next year...I don’t want to touch that money. I can’t afford to. #speaker_left
Two months late? Why didn’t you tell me or Revati? We could have helped. Even now she isn't telling us how much the rent is.  #inner_monologue
If we knew what she'd been dealing with, we could have worked part-time more, we could have made the move sooner… #inner_monologue
And my uni money? I’m not studying just for myself. I need to earn and save for this family. I thought.. my going to uni was good for the family  #inner_monologue
Are my uni fees are the reason we’re about to be forced out of a home? I’m not a kid anymore. I have the right to know about our finances so I can help. #inner_monologue
 
+ [We'll figure this out together. Let me help.] Ok, Ravi, deep breaths. Calm down. Amma is emotional right now.  #inner_monologue
    ~ ravi_1_motherempathy += 1
    She can’t help it, and you can’t blame her for it. You know she didn’t mean anything bad. #inner_monologue
    It’s time to be the man of the house. You have to step up, Ravi. #inner_monologue
    Don’t worry about me. We can figure something out. Maybe we don’t have to move. #speaker_self
    I don’t have a choice! My job is to worry about you. #speaker_left
    And I don’t think we can afford to stay. The landlord has already been very accommodating.  #speaker_left
    He’s already waited 2 months for his rent. I don’t think he’ll be willing to wait for one more. We must move out. #speaker_left
    But you love this place. #speaker_self
    It’s so near to the park, and the neighbours are so friendly...we’ve lived here for so long, Amma.  #speaker_self
    ...Ever since Appa left. #inner_monologue
    Ravi, we have no choice. We have to move on. #speaker_left

+ [Why didn't you tell us?]  I need to let Amma know she cannot keep such things a secret.  #inner_monologue
    Because of her need to ‘protect’ us, we’ve ended up in such a bad state. But it’s my fault too... For just coasting along in my ignorance and not bothering to ask. #inner_monologue
    Oh. We’re two months late? Why didn’t you tell us? #speaker_self
    You know I can’t. I wanted you and Revati to focus on your studies. I couldn’t have you all worrying about me, or finding another job. #speaker_left
    And it’s not like we’re completely broke! I still have enough saved for your uni fees- #speaker_left
    Amma, you don’t have to do it all on your own, you know. Me and Revati are old enough to help. In fact, I should already be helping out. I’ve been such a blissful idiot. #speaker_self
    Ravi, don’t worry about the money. It’s not your responsibility. It’s mine, and it’s solved. #speaker_left
    Come on, Amma. I’m not a kid anymore. At least please let me find a way to chip in so we don’t lose our home. I feel so useless just standing by. #speaker_self
    ...Ravi, it’s not your fault. I want you and Revati to have a bright future. Brighter than mine. #speaker_left
    Which means you have to focus on your uni. Once you’re out and you land a good job, of course it’d be my time to relax. #speaker_left
    Ughh. Amma’s too stubborn already.  #inner_monologue
    Right now, we have no choice. We have to move. #speaker_self

- Ok... I get it. Where are we moving to? How much will it cost?  #speaker_self
#speaker_left_image:cha_ravi_mum_normal.png
I have some good news. It won’t cost anything. #speaker_left
What do you mean? #speaker_self
We’re moving to Pushpa aunty’s house. She has a spare room, now that Kamala has moved out with her husband. #speaker_left
She also needs help around the house. When I called her to ask for help, she was so excited to let us stay with her. #speaker_left
I think it will be nice to give her some company and help her out #speaker_left
And when she was growing up in Chennai (in India), it was normal for relatives to stay with each other. So she's happy to have us. #speaker_left
... but we're not from India Amma - we're from Singapore! #speaker_self
Kanna, we are still Indian, and families stick together where we are from. On the bright side, you can have all the power sambal you like. I’m sure she won’t mind cooking for everyone again. #speaker_left
I like Pushpa Aunty and Amma and Revati love talking to her. It’s good that it’ll save us some money. #inner_monologue
...but I know I can’t study there - three of us in that small house - it’s going to be very noisy! #inner_monologue
I can’t afford any bad grades if I’m getting my family a better life. And hell, a better life is what I’m trying to achieve for us.   #inner_monologue



-> ravi_1_2_narration 
 
=== ravi_1_2_narration ===
#knot:ravi_1_2_narration
#ui:narrator
#background:bg_ravi_pushpa_home.jpg
We packed our lives into bags and started moving in to Pushpa Aunty's house.
-> ravi_1_2


=== ravi_1_2 ===
#knot:ravi_1_2
#ui:scene
#background:bg_ravi_pushpa_home.jpg
#speaker_left_image:cha_ravi_mum_dress_normal.png
#speaker_left_name:Amma
#speaker_right_image:cha_ravi_revati_normal.png 
#speaker_right_name:Revati
We should move the sofa up first, so we have space to arrange it before the rest of the boxes come in. Ravi could you go downstairs with Revati and take it up? #speaker_left
Why can’t the movers bring it up? #speaker_self
Because you know how much they charge for every staircase? $20! And be careful! #speaker_left
Sigh. Ok I’ll be your cheap labour. #speaker_self
My mom still talks to me as if I were a child. Do this. Do that. #inner_monologue
Then doubts if I can manage this, manage that. It’s like she doesn’t trust me enough to do things on my own. #inner_monologue
#speaker_left_image:pixel.png
Oh god, she was right, this IS heavy! #inner_monologu
Revati, can you come down to help? #speaker_self
Wait, I’m unpacking! There’s so much to do. #speaker_right
...I can't move it by myself #speaker_self
...fine. How heavy can half a small sofa be? #speaker_right
#speaker_right_image:cha_ravi_revati_grin.png 
(picks up other end) Oh god, Amma was right, this IS heavy! #speaker_right
Clearly, we’re siblings. #inner_monologue
#speaker_right_image:cha_ravi_revati_confused.png 
I hate this. #speaker_right
Wow her mood just flipped 180. #inner_monologue
Hate what? #speaker_self
Wasting the whole day moving things into a house that’s not even ours. Amma can spin it all she wants .... #speaker_right
but it sucks lah! I don’t understand how we got such a lousy life. What did we do wrong to deserve all this? #speaker_right
Sigh, truth is I ask myself the same thing. But saying that out loud won't help her deal. Maybe I should be the big brother she needs now. #inner_monologue

+ [Look on the bright side] Hey, at least we can afford to study. And we’re not working yet. #speaker_self
    VAR ravi_1_sharefrustrations = false
    ~ ravi_1_sharefrustrations = false
    We have no home, no Appa, and no frigging dignity. I don’t think still being in school makes up for all that. #speaker_right
    Whoa thangachi (little sister), who says we don’t have dignity? #speaker_self
    I don’t know how else to say it… it’s just… it’s embarrassing, you know? #speaker_right
    Sigh. Even school is hard. My teacher keeps scolding me when I don’t do enough practice exams on my own, but I don’t know how to explain to her that I can’t afford to buy all those ten year series books. #speaker_right
    And even if i could, I just don’t have time to do it. It’s not like I’m lazy..#speaker_right
    Nobody ever said you were lazy. #speaker_self
    I think my classmates think I'm too lazy to iron my uniform. And they see my books are all tattered and think I don't take care of my stuff. #speaker_right
    I am trying my best. I think I work harder than all of them, just to stay afloat. #speaker_right
    What did we do to deserve this terrible life?!  #speaker_right
    Sometimes the world is just like that. You didn’t do anything wrong. Amma didn’t either. We can’t control what happens to us, but at least we can control how we deal with it. #speaker_self
    Sigh. Maybe I need to take another job to help pay bills. #speaker_right
    No! I will take care of all that for you. You focus on studies. #speaker_self
    I wonder what life would have been like if Appa had stayed and Amma didn't lose her job. I could have done so many things with my life. #speaker_right
    There’s no point wishing life was different. But this is our life, and we have to make the best of it. It may be harder than other peoples’ lives, but at least we are healthy, and we have each other. Ok? #speaker_self
    
+ [I have the same frustrations] I wish Amma hadn’t kept the rent issue to herself. We definitely could have worked something out. #speaker_self
    ~ ravi_1_sharefrustrations = true
    I’m angry about that, too. Like I know she’s trying to protect us and all but look where it landed us! #speaker_right
    Now it’s about starting up from the bottom. #speaker_self
    I’m just so tired of struggling. First Appa, then losing our place, and now we’re squashed in with Pushpa Aunty. #speaker_right
    It’s like we’re always discarded goods. Or we’re the leftovers. #speaker_right
    Look Revati, we’ve had our fair share of challenges, but we’re not leftovers. Why’re you always comparing us to food, anyways? #speaker_self
    I’m not joking, Anna. Where’s our dignity, man! #speaker_right
    My classmates think I'm too lazy to iron my uniform. And they see my books are all tattered and think I don't take care of my stuff. #speaker_right
    Sometimes I just want to scream at them and say that this is my only set of uniform, I don't have an iron that works, and my books are all second hand! I AM trying my best. #speaker_right
    I think I work harder than all of them, just to stay afloat. #speaker_right
    I don't get dropped off at the gate by a nice daddy car. I take the bloody bus. #speaker_right
    Okay I really need to do a better job comforting her. Sharing my frustrations made it worse. #inner_monologue
    You know Pushpa Aunty loves having you and Amma around! She sounded really excited. And it’s not a one-way thing, she needs us to help her out too. #speaker_self
    Oh don’t pretend you’re happy about it, anna. You won’t be able to study with the noise. #speaker_right
    Gah she knows me too well. #inner_monologue

- Revati, look at it this way. We’re in a really crappy situation now, but things can only get better from here. And at least you have my corny jokes to keep you laughing. Right? #speaker_self
… #speaker_right
We all know you’re not agreeing out loud because I’m your bro, but you love my jokes. #speaker_self
#speaker_right_image:cha_ravi_revati_normal.png
Ah, that smirk. Now she’s looking more herself. #inner_monologue
Shuddup anna (big brother). So annoying… #speaker_right
My pleasure. Eh don’t drop the sofa! #speaker_self
#speaker_left_image:cha_ravi_mum_dress_happy.png
That took a while! #speaker_left
Yah… as a long as a sofa should take. #speaker_self
Don’t be rude, kanna! Maybe we just had more things that we thought we did. Now’s a good time to sell some extra clothes, jewellery… #speaker_left
There she goes, worrying about money again.  #inner_monologue
So, let’s see… Revati and I will sleep in the extra room. We can share Kamala’s old bed, for now.  #speaker_left
For washing up, we can use the small toilet, the one behind, near the kitchen.... #speaker_left
Wait a minute, what about me? Where should I sleep? #speaker_self
For tonight, you can sleep on the sofa. #speaker_left
Wait, on the sofa? #speaker_self
#speaker_left_image:cha_ravi_mum_dress_normal.png
There just isn’t enough space in the extra room. I told you, there’s just Kamala’s bed. Revati and I will need to share it.  #speaker_left
There’s some room on the floor, but not enough to lay down a mattress. The sofa is better for your back. Better than the floor, anyway. #speaker_left
I still have an entire list of stuff you need to do, starting with clearing out the storage room.  #speaker_left
I haven’t even prepared for class yet...I have an early class tomorrow and Prof. Tan’s course is no joke. He already yelled at me for being just 2 minutes late once!  #inner_monologue
Not to mention, this place is so far from uni. it’s going to take, like, an extra hour to get there. #inner_monologue
Maybe I need to take a stand. #inner_monologue

+ [Comply] I guess maybe I can do it tomorrow, if I come home from uni fast enough. #inner_monologue
    I’ll have to cancel my other plans. This is more important. #inner_monologue
    ~ ravi_1_motherempathy += 1
    Ok sure. I’ll do it tomorrow, after school. #speaker_self
    You can’t...we need to clear up everything. We can’t leave it lying around like this. #speaker_left
    ...ok, fine. I’ll do it, but not for too long. What do I need to do? #speaker_self
    Just fold the cardboard boxes first. Then I’ll tell you. #speaker_left
    There’s a lot more to be done. #speaker_left
    Ok… #speaker_self
    Sigh. #inner_monologue
    I’ll pass you a blanket you can use when you sleep, after you’re done. Next, we have to- #speaker_left
    Amma, I have an early class tomorrow... #speaker_self
    You know the prof, the strict one I told you about?  #speaker_self
    #speaker_left_image:cha_ravi_mum_dress_worried.png
    He’ll kill me if I go to his class late, or worse, fall asleep... #speaker_self
    And my class is at 9. It’s so far away, I’ll need to leave at 7. At least Revati is near to her school. #speaker_self
    #speaker_right_image:cha_ravi_revati_concerned.png 
    Oh. In that case, your sister and I will move everything. But you’ll have to help again tomorrow, ok? #speaker_left
    #speaker_right_image:cha_ravi_revati_normal.png 
    Okay, I will. #speaker_self

+ [Protest] If this goes on, who knows when her “list of stuff” ends? I need to stop now, by any means necessary. #inner_monologue
    Why ma! #speaker_self
    Why what? #speaker_left
    I’m so tired. I just want to crash! #speaker_self
    #speaker_left_image:cha_ravi_mum_dress_worried.png
    Yeah you can. After you help clear up everything. We can’t leave it lying around like this. #speaker_left
    Amma, I have an early class tomorrow! #speaker_self
    So you want your sister and I to move everything? On our own? #speaker_left
    I’ve already moved so much! #speaker_self
    And my class is at 9. It’s so far away, I’ll need to leave at 7. #speaker_self
    The prof will kill me if I go to his class late.  #speaker_self
    At least Revati is near to her school. #speaker_self
    #speaker_right_image:cha_ravi_revati_concerned.png 
    Can you do just a bit? #speaker_left
    Amma, I wish I could, but I still haven’t prepared for tomorrow’s class yet. It’s already really late. #speaker_self
- Anna (brother), why don’t you help a bit? #speaker_right
Just whatever Amma needs for the storage room. Then we can all go to sleep. We can finish this quickly. #speaker_right
I think I’ll go stay in Lukman’s house tonight. His place is nearer to campus.  #speaker_self
Much easier to make it to class tomorrow. I’m sure he has an extra bed to spare me. #speaker_self
#speaker_right_image:cha_ravi_revati_normal.png 
Besides, I don’t think I can get any rest on this sofa. Either my feet are dangling out, or I have to curl up like an armadillo. #speaker_self


{ravi_1_motherempathy >= 3 : 
    -> ravi_1_2_empathy
}
{ravi_1_motherempathy < 3 : 
    -> ravi_1_2_notempathy
}

=== ravi_1_2_empathy ===
#knot:ravi_1_2_empathy
#ui:narrator
#background:bg_ravi_pushpa_home.jpg
So much happened in those few days. 
Moving out from a place we lived nearly all our lives, staying with Pushpa Aunty, and learning so much about Amma. 
I tried my best to be there for her, and to comfort her.
Moving so many boxes, everything that we’ve ever owned, into a small room. 
And all of that, on top of uni. I’m so tired. 
I’m thankful we managed to stay with Pushpa Aunty – we can save money this way, for a while. 
But I think I’ll just ask Lukman to help me with the readings, and I’ll just sleep as soon as I can. 
I’m so tired, I could fall asleep just sitting...here...ZZZZZ… 


-> ravi_1_3

=== ravi_1_2_notempathy ===
#knot:ravi_1_2_notempathy
#ui:narrator
#background:bg_ravi_pushpa_home.jpg
So much happened in those few days. 
Moving out from a place we lived nearly all our lives, staying with Pushpa Aunty, and learning so much about Amma. 
Moving so many boxes, everything that we’ve ever owned, into a small room. 
And all of that, on top of uni. I’m so tired. 
I don't know why this had to happen to us, again. Why am I so unlucky? 
Why can't my life just be a little easier?
I guess I should be grateful that at least we managed to stay with Pushpa Aunty – we can save money this way, for a while. 
But I think I’ll just ask Lukman to help me with the readings, and I’ll just sleep as soon as I can. 
I’m so tired, I could fall asleep just sitting...here...ZZZZZ… 

-> ravi_1_3



=== ravi_1_3 ===
#knot:ravi_1_minigame
#ui:mcq
#game_id:7
Minigame 7 // must add some text


#knot:ravi_1_3
#ui:narrator
#background:bg_ravi_pushpa_home.jpg
It’s been two weeks since we’ve made the move. 
 But I can’t do this forever though. I can’t go to Lukman’s almost every day. He’s probably getting sick of my face already. The first time was fun, kind of like a sleepover. 
 The second time was like we were roommates. The third, fourth, fifth times...he’s probably expecting me to pay rent or something. 
 His parents must be really annoyed with me too. They don’t say it, but I can feel their eyes in the back of my skull whenever I go over. I can’t keep being a burden to Lukman either.
 I need to find some other place to stay. Maybe stay on my own if I can. That might be nice, for a change. I’ve always shared a room with Revati, anyway.
#background:bg_ravi_rentals1.jpg
 I’ve been scouring so many websites, trying to find a good place to rent. PropertyMagic, 999co, Room4Rent – you name it, I’ve tried it. 
 Hmm... rental properties might be hard to find with my tight budget. 
 -> ravi_1_4_narration 


=== ravi_1_4_narration ===
#knot:ravi_1_4_narration
#ui:scene
#background:bg_ravi_rentals1.jpg
Hmm...this listing sounds good. one bedroom apartment, 11th floor, 5 minutes away from university? This must be a dream... wait $2222 per month?? This must be a nightmare! Who can afford that? Maybe if I just sort by “price”… #inner_monologue
#background:bg_ravi_rentals2.jpg
 Oh, this room sounds about right. Seems promising. It’s a small room – maybe other people are staying there too? But it’s cheap, and pretty close to uni. #inner_monologue
 Maybe I can make friends with whoever’s staying there. Or better yet, I might be able to talk them down to my price. They should take some pity on a student.#inner_monologue
#background:bg_ravi_rentals3.jpg 
 Let me see if he’s offering any other rooms ... oh wow, he has two! Maybe I can rent the other room instead – it’s a bit bigger though, so it’s probably more expensive... I’ll see how it goes.#inner_monologue
 Who do I talk to? I see an agent’s name here. “Agent James” huh? Sounds like a reliable guy. Actually, no. Sounds like James Bond wannabe.#inner_monologue
 Oh, his phone number is here. Maybe I should drop him a text. Well, here goes nothing.#inner_monologue

-> ravi_1_4


=== ravi_1_4 ===
#knot:ravi_1_4
#ui:whatsapp
#background:whatsapp.png
#chat_group_title:Property Agent James
#chat_group_image:ico_ravi_james.png
#speaker_1_name:James
Hi, is this James? #speaker_self
I saw the listing on Room4Rent. The one for two different rooms? #speaker_self
I would like to rent a room, if that’s possible! #speaker_self
Hi, yes! This is James. Pleasure to “e-meet” you. #speaker_1
The one in Clementi? #speaker_1
Still available. Got two - big room with bathroom and a smaller room #speaker_1

#ui:narrator
#background:bg_ravi_pushpa_home.jpg
Ah...nobody I know says “e-meet”. This man must be a professional agent after all! This looks good. Maybe I’ll be able to get a room faster than I thought. #inner_monologue
#ui:whatsapp
#background:whatsapp.png
#chat_group_title:Property Agent James
#chat_group_image:ico_ravi_james.png
#speaker_1_name:James

Great! Yes, I am interested in the rooms. #speaker_self
Which room you're interested in? #speaker_1
The smaller room please. #speaker_self
The one for $500 per month. #speaker_self
It’s shared housing you know right? The landlord is staying there also. #speaker_1
Yep! That’s fine with me. #speaker_self
Ok, how many people are renting? #speaker_1
The landlord got strict policy - only one tenant per room. #speaker_1
Yeah, I understand. #speaker_self
It’ll just be me renting the room. Don’t worry about it. #speaker_self
Will you have visitors over? #speaker_1
No...no girlfriend. Don’t think my family will visit either. #speaker_self

#ui:narrator
#background:bg_ravi_pushpa_home.jpg
Wow… way to rub it in. Was that really necessary? But ok, I can work on that next time. The room is more important. #inner_monologue
#ui:whatsapp
#background:whatsapp.png
#chat_group_title:Property Agent James
#chat_group_image:ico_ravi_james.png
#speaker_1_name:James

Ok, no girlfriend right? Great. #speaker_1

#ui:narrator
#background:bg_ravi_pushpa_home.jpg
Great, he says. Sheeeeesh! #inner_monologue
#ui:whatsapp
#background:whatsapp.png
#chat_group_title:Property Agent James
#chat_group_image:ico_ravi_james.png
#speaker_1_name:James

To rent the room, there’s a process we need to go through. #speaker_1
Firstly, can I have your profile? #speaker_1
Profile? Sorry, what do you mean? #speaker_self


#ui:narrator
#background:bg_ravi_pushpa_home.jpg
What kind of profile? You’re setting up a dating profile for me ah? #inner_monologue
#ui:whatsapp
#background:whatsapp.png
#chat_group_title:Property Agent James
#chat_group_image:ico_ravi_james.png
#speaker_1_name:James

What are you doing? Working here? #speaker_1
Oh. That’s what you meant by profile. #speaker_self
Nah, I’m just a student. Still studying in uni. #speaker_self
Ok. What’s your background? #speaker_1
I’m sorry. Background? #speaker_self

#ui:narrator
#background:bg_ravi_pushpa_home.jpg
I think if I say my background is currently a blank wall he’ll just block me. #inner_monologue
#ui:whatsapp
#background:whatsapp.png
#chat_group_title:Property Agent James
#chat_group_image:ico_ravi_james.png
#speaker_1_name:James

Your details lah. #speaker_1
Name, IC all that. #speaker_1
Just fill up for me. #speaker_1

Name:  /n  Pax:  /n  Occupation:  /n  Ethnicity:  /n Budget:  /n Years of lease:  /n  Expected shift in date:  /n  #speaker_1
+ [Agree to fill in the details] Sure, give me a second, #speaker_self
+ [Just insist on getting the rental details]  I just need the small room for $500. Can you please send over the details? #speaker_self
    Yes, available. But I need to know your details first. Standard procedure. #speaker_1
    Aiyoh. Ok, ok, fine. Totally not relevant though. #speaker_self
- Done, here you go. /n Name: Ravi Kannasamy /n Pax: 1  /n Occupation: Student  /n Ethnicity: Indian  /n Budget: $500  /n Years of lease: 1  /n  Expected shift in date: Aug 20 #speaker_self
Ok, great. I check with landlord first. #speaker_1
Ok, thank you! #speaker_self
15:02 #timestamp
Hi Ravi. #speaker_1
That was fast. #speaker_self
So, what did he say? #speaker_self
Sorry, landlord says cannot. #speaker_1
But don’t worry. I have other room for you.  #speaker_1
Other location. You want? Yishun got one room. Jurong also got. #speaker_1
Sorry, why cannot? Was the room already taken? I can still take the bigger room. #speaker_self
Sorry, no. The room isn’t taken yet. #speaker_1
Huh? Then what? #speaker_self
Landlord say this room not suitable for Indian, sorry. #speaker_1

#ui:narrator
#background:bg_ravi_pushpa_home.jpg
WHAT?!? What does he mean the room not suitable for Indians? Oh god is this one of those horrible landlords I've read about online? I never thought this would happen to me.  #inner_monologue

#ui:whatsapp
#background:whatsapp.png
#chat_group_title:Property Agent James
#chat_group_image:ico_ravi_james.png
#speaker_1_name:James
Uh.... #speaker_self
+ [Stay polite] Why is it not suitable? #speaker_self
    I don’t know lah. #speaker_1
    VAR ravi_1_agent = "polite"
    ~ ravi_1_agent = "polite"
    Landlord just say cannot. I also really can’t ask him why. #speaker_1
    I also don’t know what he’ll say if I do ask. Sometimes landlord just tells me these things and my job is just to tell you. #speaker_1
    
    Wait, is this because of the whole Indian cooking thing? #speaker_self
    I’ve seen people post horror stories like this online before. #speaker_self
    Just tell him that the only thing I know how to cook are instant noodles! 😂😂  #speaker_self
    Uh I think it’s not just cooking la.  #speaker_1
    What do you mean, not just cooking? Tell me, what else? #speaker_self
    Aiyah, I don’t know la. #speaker_1
    The landlord say no Indian. His property, his decision right? I can’t argue with him also. If he angry then later he change agent. #speaker_1
    Don’t worry, I have other room for you. I have a good room in Yishun for you. #speaker_1
    But Yishun is too far from my uni. #speaker_self
    Yishun is too far from everything! This place is close to my uni. It’s the perfect place for me. #speaker_self
    
    ++ [Try to persuade landlord that I am not like "those" Indians] Eh but you tell him that I don't cook, and I'm a student in university ok. Very clean. Not like what he might think or hear from others. #speaker_self
        VAR ravi_1_notlikeotherindians = true
        ~ ravi_1_notlikeotherindians = true
        Aiyah why so troublesome? Eh pls understand I cannot do anything without landlord permission. I don't think he will care about those reasons la, trust me. Not like I don’t want to help you ok! #speaker_1
        Yes, but this is not right. #speaker_self
        Right, not right, the landlord decided lah. #speaker_1
        
    ++ [Accept the landlord's decision] Sigh. I don't think this is right but what can I do la. #speaker_self
        ~ ravi_1_notlikeotherindians = false
        #ui:narrator
        #background:bg_ravi_pushpa_home.jpg
        I guess this is what the older generation are like. Even the government said that they are not willing to accept a non-Chinese as their Prime Minister, so I guess this is their mental model. Sigh. #inner_monologue
        #ui:whatsapp
        #background:whatsapp.png
        #chat_group_title:Property Agent James
        #chat_group_image:ico_ravi_james.png
        #speaker_1_name:James        
        Fine.
        
    -- But you seem like a nice guy. Let me see what I can do to help. #speaker_1
    What about the room in Jurong? #speaker_1
    I check on the other room for you? #speaker_1
    Yes please. The one in Jurong. How much is that? #speaker_self
    Cheaper. $450 only. #speaker_1
    Smaller room but only one other person in the house. Landlord not staying there. #speaker_1
    
+ [Get angry] Why is it not suitable? #speaker_self
    I don’t know lah. #speaker_1
    ~ ravi_1_agent = "angry"
    Landlord just say cannot. I also really cannot ask him why. #speaker_1
    This is ridiculous. #speaker_self
    You are saying no because of me being Indian? #speaker_self
    No no not me! Is the landlord's decision. I want also cannot do anything. #speaker_1
    Did you even check with the landlord? #speaker_self
    You replied within 2 minutes. #speaker_self
    
    Yes, I did. He replied me very fast #speaker_1
    
     ++ [Try to persuade landlord that you are not like "those" Indians] Did you tell him I’m Singaporean? #speaker_self
        ~ ravi_1_notlikeotherindians = true
        Yes #speaker_1
        And? What did he say? I am local born ok! Did NS! #speaker_self
        Sorry, landlord said no Indian. Said all types cannot. Sorry.  #speaker_1
        
    ++ [Criticise the Agent's handling] I think this is just you making this up. #speaker_self
        ~ ravi_1_notlikeotherindians = false
        You scared the house will smell of curry is it? #speaker_self
        It’s not just your smell lah. #speaker_1
        Not JUST smell? So you think Indian got a smell issit? #speaker_self
        No, that’s not what I meant. #speaker_1
        I mean it’s not just your cooking lah. #speaker_1
        First of all, I’m NOT going to be cooking ok. #speaker_self
        Secondly, whether I cook or not is not important. SO it’s ok for other people to cook, but not Indians? #speaker_self
    
    -- Eh, I'm not the bad guy la. The landlord say no Indian. Not I say. #speaker_1
    His property, his decision right? I can’t argue with him also. If he angry then later he change agent. #speaker_1
    Don’t worry, I have other room for you. #speaker_1
    I have a good room in Yishun for you. #speaker_1
    I want nothing from a racist agent. #speaker_self
    Hello boss. Don’t anyhow throw name like that. #speaker_1
    I didn’t say no ok. It’s the landlord. #speaker_1
    It’s not my choice whether you can rent the room ok? #speaker_1
    I’m trying to help you also. Not like I say you can stay means you can what. #speaker_1
    Huh then he say no Indian, you just reply ok. You’re not helping me. Have you at least tried convincing him to let me stay? #speaker_self
    I told you I can’t argue with him. I don’t want him to change agent. Anyway you know how people are like lah. #speaker_1
    What do you mean? Racist people? #speaker_self
    Aiyah, you know how some people are like that. Times changed but their mindsets still from don’t know when. This landlord older generation la. Even gahmen also say they  not ready for a non-chinese prime minister! #speaker_1
    Anyway even if I argue with him, you want to stay with him meh? He’s staying at the place eh. Don’t know what he’ll treat you like in person with this kind of mindset. #speaker_1
    I have another room in Yishun. You interested? I think this landlord is better la. Don’t worry about this one. I can’t do more than that already. #speaker_1
    Please understand. I’m only the agent. #speaker_1
    Yishun is too far. #speaker_self
    The room in Jurong. How much is that? #speaker_self
    Cheaper. $450 only. #speaker_1
    Smaller room but only one other person in the house. Landlord no stay. No problem. #speaker_1


#ui:narrator
#background:bg_ravi_pushpa_home.jpg
- Why do I feel like a foreigner in my own country? I don’t want to be forced into a house like this. #inner_monologue
I thought “regardless of race”? Did we not say it every damn morning like machines? Or is there a different pledge for landlords? #inner_monologue
But damn, a room for myself for $450 sounds good. Maybe I should check with the uni as well though. See if they have any options for me. #inner_monologue
#ui:whatsapp
#background:whatsapp.png
#chat_group_title:Property Agent James
#chat_group_image:ico_ravi_james.png
#speaker_1_name:James
Hmm, sounds good.  #speaker_self
Ok. So how? Can? #speaker_1

+ [Try looking for university housing] Let me get back to you later? #speaker_self
    -> ravi_1_5_narration
+ [Yup, sounds good! I'll take it.]  Yup, I'll take it.  #speaker_self
    -> chapter_1_ending_2b



=== ravi_1_5_narration ===
#knot:ravi_1_5_narration
#ui:narrator
#background:ui_emailinbox.png
Maybe I should try emailing the uni. Maybe I can get a room if I’m lucky enough. I’ve always wanted to try and stay on campus, anyway. Seems fun.
VAR ravi_1_emailuniversity = true
~ ravi_1_emailuniversity = true
Let’s just hope the school admin is better than the agent…
-> ravi_1_5

=== ravi_1_5 ===
#knot:ravi_1_5
#ui:email
#emailheader:Compose Email
#emailfrom:Ravi <ravi@email.com>
#emailfromicon: ico_ravi_ravi.png
#emailto:Univ Housing <admin@univ.edu.sg>
#emailsubject: Query about dorm room
To whom it may concern, #speaker_self

I’m writing to inquire about the possibility of housing in the university dorm. My student number is A0155007R. #speaker_self
I understand that I might be a little late, but I need to move out immediately due to family matters. It would be great if I could stay on campus, if possible.  #speaker_self
Do let me know if there are any options available. Any room is fine. Please let me know if you need more details.#speaker_self
Thank you, #speaker_self
Ravi #speaker_self

#ui:narrator
#background:ui_emailsending.png
 Ok, that sounded formal enough….
#background:ui_emailsent.png
 Oh, they replied already! That was quick. Let’s see…

-> ravi_1_5a

=== ravi_1_5a ===
#knot:ravi_1_5a
#ui:emailinbox

#newemailfrom: Rebecca
#newemailprofileicon:ico_ravi_rebecca.png
#newemailsubject:Query about dorm room
#newemailpreview: Hello Ravi, Thanks for your email. I'm ...
.

-> ravi_1_5b


=== ravi_1_5b ===
#knot:ravi_1_5b
#ui:email
#emailheader:Read Email
#emailfrom:Univ Housing <admin@univ.edu.sg>
#emailto:Ravi <ravi@email.com>
#emailfromicon: ico_ravi_rebecca.png
#emailsubject: Query about dorm room
#replyemaildate:On Wed 6 Oct 2021, Ravi <ravi@email.com> wrote:  
#replyemailtext: To whom it may concern /n I’m writing to inquire about the possibility of housing in the university dorm. My student number is A0155007R. /n I understand that I might be a little late, but I need to move out immediately due to family matters. It would be great if I could stay on campus, if possible. /n Do let me know if there are any options available. Any room is fine. Please let me know if you need more details.  /n Thank you, /n Ravi 
Hello Ravi, /n /n Thanks for your email. I’m afraid you are a little late. Housing occupancy has been settled before the beginning of the semester. You would need to wait for the next semester to get a room. /n /n You mentioned that you had to move due to family matters. While we may not be currently able to offer you a room, the school is concerned for the wellbeing of its students. Is there anything else we could do to help? /n /n  Regards, /n  Rebecca #speaker_1

#ui:narrator
#background:ui_emailinbox.png
 Ah, I knew it. Rooms on campus are always snapped up.

-> ravi_1_5c

=== ravi_1_5c ===
#knot:ravi_1_5c
#ui:email
#emailheader:Compose Email
#emailto:Univ Housing <admin@univ.edu.sg>
#emailfrom:Ravi <ravi@email.com>
#emailfromicon: ico_ravi_ravi.png
#emailsubject: Query about dorm room
#replyemaildate:On Wed 6 Oct 2021, Univ Housing <admin@univ.edu.sg> wrote:  
#replyemailtext: Hello Ravi, /n I’m afraid you are a little late. Housing occupancy has been settled before the beginning of the semester. You would need to wait for the next semester to get a room. /n You mentioned that you had to move due to family matters. While we may not be currently able to offer you a room, the school is concerned for the wellbeing of its students. Is there anything else we could do to help? /n Regards, /n /n Rebecca

Hello Rebecca,  #speaker_self
Thank you for your reply.  #speaker_self
I am a little out of options. I don’t have space at home to study or sleep, and I would really love if I could somehow stay on campus. #speaker_self
I hope you could check for me whether there was any space left in the dorm at all. Like I said, I’m ok to take any room. #speaker_self
Thank you, #speaker_self
Ravi #speaker_self

#ui:narrator
#background:ui_emailsending.png
Maybe I have to go with the Agent after all.
#background:ui_emailsent.png
Wait, a reply just came in. Wah this Rebecca is super on the ball.

-> ravi_1_5c2

=== ravi_1_5c2 ===
#knot:ravi_1_5c2
#ui:emailinbox

#newemailfrom: Rebecca
#newemailprofileicon:ico_ravi_rebecca.png
#newemailsubject: Query about dorm room
#newemailpreview: Hello Ravi, We have one room available ...
.



-> ravi_1_5d


=== ravi_1_5d ===
#knot:ravi_1_5d
#ui:email
#emailheader:Read Email
#emailfrom:Univ Housing <admin@univ.edu.sg>
#emailfromicon: ico_ravi_rebecca.png
#emailto:Ravi <ravi@email.com>
#emailsubject: Query about dorm room
#replyemaildate:On Wed 6 Oct 2021, Ravi <ravi@email.com> wrote:  
#replyemailtext: Hello Rebecca, /n Thank you for your reply. /n I am a little out of options. I don’t have space at home to study or sleep, and I would really love if I could somehow stay on campus. /n I hope you could check for me whether there was any space left in the dorm at all. Like I said, I’m ok to take any room.  /n Thank you, /n Ravi 
Hello Ravi, /n /n We have one room available now but I'm actually supposed to release it later. One of the foreign exchange students is moving back home for an emergency next week. Given your difficult situation, I think I can offer it to you first. /n  /n It’s a single room in the Farquhar Hall with an aircon. There is a shared bathroom on the same floor. The room’s $700 per month, without food. If you want food, you’ll have to choose a meal plan. /n  /n Would you like to take the room? If so, please let me know as soon as possible so that the school can make the necessary arrangements. /n /n Regards, /n Rebecca #speaker_1

#ui:narrator
#background:ui_emailinbox.png
At least it’s an option. But ... it’s a little over budget. My savings are enough for $450 a month, but $700 is a stretch for now.
On the other hand, I’ll never be late for class again! I might save money on transport too. And I won’t have to deal with any racist landlords.

+ [Take the dorm room] -> ravi_1_5e_take
+ [Decline the room, take the rental] -> ravi_1_5e_decline


=== ravi_1_5e_take ===
#knot:ravi_1_5e_take
#ui:email
#emailheader:Compose Email
#emailto:Univ Housing <admin@univ.edu.sg>
#emailfrom:Ravi <ravi@email.com>
#emailfromicon: ico_ravi_ravi.png
#emailsubject: Query about dorm room
#replyemaildate:On Wed 6 Oct 2021, Univ Housing <admin@univ.edu.sg> wrote:  
#replyemailtext: Hello Ravi,  /n Good news! We have one room available now. One of the foreign exchange students is moving back home for an emergency.  /n It’s a single room in the Farquhar Hall with an aircon. There is a shared bathroom on the same floor. The room’s $700 per month, without food. If you want food, you’ll have to choose a meal plan.  /n Would you like to take the room? If so, please let me know as soon as possible so that the school can make the necessary arrangements.  /n Regards,   /n Rebecca
Hello Rebecca, #speaker_self
VAR ravi_1_dormhousing = true
~ ravi_1_dormhousing = true
Thank you so much! I would like to take the room. It would be amazing to stay on campus, and this solves a few of my problems! #speaker_self
I’m ok without the meal plan. Please let me know what else I need to do to move in! #speaker_self
Thank you, #speaker_self
Ravi #speaker_self

#ui:narrator
#background:ui_emailsending.png
.
#background:ui_emailsent.png
.


-> ravi_1_5e_take2

=== ravi_1_5e_take2 ===
#knot:ravi_1_5e_take2
#ui:email
#emailheader:Read Email
#emailfrom:Univ Housing <admin@univ.edu.sg>
#emailfromicon: ico_ravi_rebecca.png
#emailto:Ravi <ravi@email.com>
#emailsubject: Query about dorm room
#replyemaildate:On Wed 6 Oct 2021, Ravi <ravi@email.com> wrote:  
#replyemailtext: Hello Rebecca, /n Thank you so much! I would like to take the room. It would be amazing to stay on campus, and this solves a few of my problems! /n I’m ok without the meal plan. Please let me know what else I need to do to move in!  /n Thank you, /n Ravi 
Hello Ravi,  /n /n Great! Please let me know your earliest possible move-in date, so we can arrange for the access card and keys. There are forms to fill up which I will follow up with in a separate email. /n /n There will most likely be an orientation session at the dorm as well, with the Residential Assistant. Each floor has a Residential Assistant, who is a student volunteer assigned to deal with any issues faced by the students living in the dorm.  /n Hope you will enjoy the rest of your semester staying on campus! /n /n Regards,  /n Rebecca #speaker_1
-> chapter_1_ending_1

=== chapter_1_ending_1 ===
#knot:chapter_1_ending_1
#ui:narrator
#background:bg_ravi_pushpa_home.jpg
 Yes! I don’t know how this will go, but at least I don’t have to deal with stupid questions from the agent. And I’ll definitely save on transport. 
VAR chapter_1_ending = 1
~ chapter_1_ending = 1
 It sounds like I’ll be able to make some friends too. Orientation? This feels like year one all over again. Not that I mind, it does sound fun.
Maybe I’ll finally find a girlfriend? Then I can tell the agent off. Man, why did he have to ask whether I have a girlfriend or not? 
Anyhow, cheers to independence! I’ve taken a further step in adulting, and I guess that’s something to be proud of…
Better let Amma know the news.

-> ravi_1_reflection


=== ravi_1_5e_decline ===
#knot:ravi_1_5e_decline
#ui:email
#emailheader:Compose Email
#emailto:Univ Housing <admin@univ.edu.sg>
#emailfrom:Ravi <ravi@email.com>
#emailfromicon: ico_ravi_ravi.png
#emailsubject: Query about dorm room
#replyemaildate:On Wed 6 Oct 2021, Univ Housing <admin@univ.edu.sg> wrote:  
#replyemailtext: Hello Ravi,  /n Good news! We have one room available now. One of the foreign exchange students is moving back home for an emergency.  /n It’s a single room in the Farquhar Hall with an aircon. There is a shared bathroom on the same floor. The room’s $700 per month, without food. If you want food, you’ll have to choose a meal plan.  /n Would you like to take the room? If so, please let me know as soon as possible so that the school can make the necessary arrangements.  /n Regards,   /n Rebecca
Hello Rebecca,  #speaker_self
Thank you so much. #speaker_self
~ ravi_1_dormhousing = false
Unfortunately, the room is a little too expensive for me at the moment. As such, I am unable to take the room. #speaker_self
Apologies for any inconvenience caused. I hope you find somebody to take that room soon. #speaker_self
Thank you, #speaker_self
Ravi #speaker_self

#ui:narrator
#background:ui_emailsending.png
.
#background:ui_emailsent.png
.
-> ravi_1_5e_decline2

=== ravi_1_5e_decline2 ===
#knot:ravi_1_5e_decline2
#ui:email
#emailheader:Read Email
#emailfrom:Univ Housing <admin@univ.edu.sg>
#emailfromicon: ico_ravi_rebecca.png
#emailto:Ravi <ravi@email.com>
#emailsubject: Query about dorm room
#replyemaildate:On Wed 6 Oct 2021, Ravi <ravi@email.com> wrote:  
#replyemailtext: Hello Rebecca, /n Thank you so much. Unfortunately, the room is a little too expensive for me at the moment. As such, I am unable to take the room. /n Apologies for any inconvenience caused. I hope you find somebody to take that room soon.  /n Thank you, /n Ravi 
Hello Ravi, /n /n We understand. In that case, unfortunately, you will have to make other arrangements. /n I can keep an eye out for a room opening up, but nothing else is available at the moment. I can’t guarantee that any rooms will be cheaper though. /n /n  All the best. Please feel free to contact the school if you require any financial assistance. /n /n Regards, /n Rebecca #speaker_1

-> chapter_1_ending_2

=== chapter_1_ending_2 ===
#knot:chapter_1_ending_2
#ui:narrator
#background:bg_ravi_pushpa_home.jpg
Sigh. This is way over my budget. But I’m not going to apply for financial assistance. I don’t want to be THAT guy. I'll find a way to make the cash.
It’s still better than sleeping on that sofa though. 
Looks like I have to deal with finding my own room and agents again.  I should try to get back at that racist landlord and agent...Maybe I post the convo online? 
Hmm... actually I don’t want to end up on Mothership and read through all the comments. Just makes my own life harder later if people think of me as that troublesome tenant.
I’ll just take the room in Jurong and be done with it. Save some money. Don’t think I can get a better deal. 
~ ravi_1_dormhousing = false
~ chapter_1_ending = 2
Hope this landlord is better.
Better let Amma know the news. Anyhow, cheers to independence! I’ve taken a further step in adulting, and I guess that’s something to be proud of…

-> ravi_1_reflection

=== chapter_1_ending_2b ===
#knot:chapter_1_ending_2b
#ui:narrator
#background:bg_ravi_pushpa_home.jpg
I’ll just take the room in Jurong and be done with it. Save some money. Don’t think I can get a better deal. 
~ ravi_1_dormhousing = false
~ chapter_1_ending = 2
Hope this landlord is better.
Better let Amma know the news. Anyhow, cheers to independence! I’ve taken a further step in adulting, and I guess that’s something to be proud of…

-> ravi_1_reflection

=== ravi_1_reflection ===
#knot:ravi_1_reflection
#ui:chapter_reflection
#reflection_id:7
Reflection 7



-> ravi_2_intro












// CHAPTER 2





=== ravi_2_intro ===
#knot:ravi_2_intro
#ui:narrator
#background:bg_ravi_bedroom.jpg
One month after the move. #title
Moving out on my own was rough. 
Amma didn’t take the news well, as expected. She preferred me to save money and stay home.
But I need to focus on my studies so that I can do well and get us out of this rut.
Saving rental money versus failing out of university ... the choice was clear to me.
But she was right, the monthly rent was a big bite out of my small savings.

~ chapter_id = 2
#background:black.jpg
CHAPTER {chapter_id} #title
Coffee Shop Kannasamy #title


-> ravi_2_1_narration


=== ravi_2_1_narration ===
#knot:ravi_2_1_narration
#ui:narrator
#background:bg_ravi_bedroom.jpg
{ravi_1_dormhousing == true: 
At least in the dorm I’ve got more time to study. 
And make a few friends, which is a luxury I could not afford before. I’m so glad I don’t have to deal with bad landlords.
- else: 
At least in this rental room I’ve got peace and quiet to study, and nobody to distract or bother me.
And this landlord seems pretty chill. I guess not all of them are bad la.
}
I miss my family though, being here alone.
 
-> ravi_2_1

=== ravi_2_1 ===
#knot:ravi_2_1
#ui:whatsapp 
#background:whatsapp.png
#chat_group_title:Revati
#chat_group_image:ico_ravi_revati.png
#speaker_1_name:Revati
#timestamp:21.34
Hey Thangachi (little sister) #speaker_self
How have you guys been doing #speaker_self
Just wanted to check in #speaker_self
Aww #speaker_1
Do you miss us? #speaker_1
I’d be lying if I say I didn’t #speaker_self
Living on my own is kind of new for me #speaker_self

Yeah.  It’s weird to not see you around #speaker_1
But I mean all is good. Amma is looking for a job #speaker_1
And I’m getting rekt by my exam ten year series. Thanks for buying that for me btw. But I’ll manage #speaker_1
How about you? Room good? Have you put up all your ugly posters already? There's still a box of them left here  #speaker_1
Well... it’s as good as it’ll get #speaker_self
Living on my own is surprisingly expensive #speaker_self
I didn’t realise how much money I had to spend... like on food alone #speaker_self
Don’t know is it because I eat too much or my taste buds spoiled by Amma's cooking #speaker_self
But yeah like my savings are running out at this rate #speaker_self
I need to see how I can cut costs #speaker_self
Have you considered looking for a part time job? #speaker_1
+ [I know I should] I know I should… I haven’t #speaker_self
    But I don’t have the time right now to look for one #speaker_self
    Classes are busy and I’m looking for an internship too #speaker_self
    Can’t do both at once #speaker_self
    Anyway I don’t think anybody will hire at short notice #speaker_self

+ [I want to focus on studies] I just want to focus on school for now. #speaker_self
    Classes are busy and I’m looking for an internship too #speaker_self
    Can’t do both at once #speaker_self
    Anyway I have a better way to save money. Just eat maggi mee every day for almost every meal! #speaker_self
- Btw can you tell Pushpa Aunty I won’t be coming over for dinner today? #speaker_self
I have something on. Tyty #speaker_self
Huh #speaker_1
Why not? You going on a date?!? #speaker_1
+ [Why would that be so shocking?] Eh no need to sound so shocked ok #speaker_self
    Just because I don't report my daily movements to you doesn't mean I don't have a social life ok. #speaker_self
    Wait for real? You're going on a date Anna (brother)? #speaker_1
    Uh.. no. But uh, one day I will.  #speaker_self
    Haha. Lemme know when you meet someone so I can warn the poor girl abt your lame jokes #speaker_1
+ [Lol I wish] Lol I wish #speaker_self
    Sadly no. Not a priority right now anyway #speaker_self
- I’m planning to visit a new cafe #speaker_self
You remember Marie? #speaker_self
The food girl? #speaker_1
Yeah lol #speaker_self
The food girl. I’ll tell her you called her that #speaker_self
Don’t HAHA later she will be mad at me #speaker_1
But yes what about her #speaker_1
Well she left her job at an MNC and opened up a new café #speaker_self
It’s called Resipi Alegria #speaker_self
I plan to visit her later #speaker_self
My other friends visited alr haha #speaker_self
I didn’t have time thanks to classes #speaker_self
But post-midterm week has been quite chill #speaker_self
Ohhh #speaker_1
So you’re going to be eating there? #speaker_1
Sadly no also haha #speaker_self
I’m broke rmb #speaker_self
LOL I’ll just grab a drink #speaker_self
And go home cook instant noodles I guess #speaker_self
Peak cuisine #speaker_self
Oh ok sure #speaker_1
Last call,  you sure you can’t make it tonight? #speaker_1
Pushpa Aunty is cooking fish curry #speaker_1
 🥲  #speaker_self
 I can’t, I only have this slot to visit her new cafe.  #speaker_self

-> ravi_2_2_narration

=== ravi_2_2_narration ===
#knot:ravi_2_2_narration
#ui:narrator
#background:bg_ravi_cafe.jpg
Finally here. Took a while to find Marie's new café. 
Whoa! Sure looks fancy.
The place isn’t too packed right now. I guess 4 p.m. on a Thursday is a weird time to have coffee.
There’re not too many customers either. There’s a couple in the corner, and this reallllllly pretty girl sitting at the counter. I should definitely visit more often if this is the crowd, hehe.
Wait, no time to get distracted. Where is she... ah, there’s Marie! 

-> ravi_2_2

=== ravi_2_2 ===
#knot:ravi_2_2
#ui:scene
#background:bg_ravi_cafe.jpg
#speaker_right_image:cha_ravi_marie_normal.png
#speaker_right_name:Marie
Hey! #speaker_self
Hey Ravi! What are you doing here? #speaker_right
Playing scrabble lah what you think? #speaker_self
Getting a caffeinated beverage from your fine establishment. #speaker_self
#speaker_right_image:cha_ravi_marie_cheeky.png
Wah, big words from the man who hasn’t turned up once since I opened! #speaker_right
Sorry la, Marie! Wish I could have come sooner. I’ve been busy. #speaker_self
With what? Chasing girls? #speaker_right
No time for girls, man. #speaker_self
You always had time for girls leh. #speaker_right
Aiyoh. I dated ONE girl for like a month when I was a teenager, and you think I’m a Romeo.  #speaker_self
Well you were always the charmer la #speaker_right
Yeah.. well.. A lot has changed since then. #speaker_self
I changed after Appa left. #inner_monologue
I wish I was still the charmer she thinks I am. #inner_monologue
I wish .... I wasn’t afraid of what a girl would see if she read too deeply into my eyes.#inner_monologue
#speaker_right_image:cha_ravi_marie_normal.png
Haha indeed, you suddenly look more like a real adult. And you’re wearing real clothes, not baggy T-shirts everywhere  #speaker_right
Anyway, would you like a coffee? #speaker_right
Yes please! #speaker_self
Ok check out the menu, tell me what you like. It's on the house!  #speaker_right

+ [Iced Latte] Oh, I’ll take an iced latte. #speaker_self
    Want to try our green tea latte instead? I just added it to the menu. Trust me, it's amazing. #speaker_right
    Nah, not really a fan of green tea. #
    First time I’ve ever heard that. Who isn’t a fan of green tea? #speaker_right
    Hmm, how about our hazelnut latte? #speaker_right
    Sorry, I’m allergic to hazelnuts. #speaker_self
    ...Seriously? #speaker_right
    Yeah... #speaker_self
    #speaker_right_image:cha_ravi_marie_laughing.png
    Ok. A small, boring iced latte for a small, boring Ravi. #speaker_right
    Eh, don’t like that leh... #speaker_self
    Fine... one iced latte coming up. #speaker_right
    Thank you! #speaker_self

+ [Chilli Coconut Agave Cafe Latte]  Wow. I’d like to try the ... “Chilli Coconut Agave Café Latte"? I think… #speaker_self
    #speaker_right_image:cha_ravi_marie_cheeky.png
    Waaah. Man after my own heart. That’s my favourite. #speaker_right
    Haha...really? Are you kidding me? #speaker_self
    No, I’m not. I mean come on man, I made the menu. #speaker_right
    Oh…it’s just that chilli coconut agave coffee doesn’t sound...that dope… #
    It is! Trust me on this. #speaker_right

- So, have time to catch up? Since we hardly hang out nowadays, after all. #speaker_right
#speaker_right_image:cha_ravi_marie_normal.png
I mean, I don’t mind. But is it ok? Will your customers mind their barista just chatting at the counter? #speaker_self
Sure they won’t mind! I mean, there’s not that many people around right now. #speaker_right
The couple just want to be left alone. And that girl there is Valerie, one of my regulars. #speaker_right
Comes in nearly every afternoon. She’s probably heard a hundred of my conversations at least. I talk to her a lot too. I’m sure she won’t mind. #speaker_right
Did Marie say that her name was “Valkryie”? Weird name. Better not look at her too much. She might catch me staring. #inner_monologue
Anyway, how's everything? How's Revati? I remember meeting her for your birthday. Oh, and that biryani your mum cooked. Getting hungry just thinking about it. #speaker_right

+ We are ok lah... [] Well, I mean there’s been some bumps in the road. #speaker_self  
+ Not so great [] to be honest. #speaker_self

- What happened? #speaker_right
#speaker_right_image:cha_ravi_marie_concerned.png
Mum lost her job. #speaker_self
Oh dear. #speaker_right
And we have moved out to our aunt’s place. #speaker_self
All of you? #speaker_right
Yeah. Well, I got my own place now. Just a small room. #speaker_self
That sounds...stressful. #speaker_right
It is. #speaker_self
Is your mum ok? #speaker_right
Well… she puts up a brave front for everything. #speaker_self
I feel like she doesn’t want to share her fear with us. But I can see it in her eyes. I caught her sobbing the other day. While boiling milk. #speaker_self
Asked her what’s wrong. And she was like, cutting onions for dinner. Come on! #speaker_self
Of course she doesn’t want to appear weak to her kids.  She’s been your rock. #speaker_right
Yeah. And I’m stuck between that and a hard place. #speaker_self
Hey. You got to try and think from her perspective. #speaker_right
Have you thought about how you can help out? She’s your mother, you know, with A LOT of weight on her shoulders. #speaker_right
She doesn’t want to put any of it on you. #speaker_right
I want to help out. But what can I do? Except finish my course, get my internship, get a job. #speaker_self
That will take you, like, a couple of years right? #speaker_right
Yeah. #speaker_self
How about helping her out now? Go for a walk with her. Watch a movie. Speak to her more often. Show her you’re not just mopey lil’ boring Ravi. She needs you, man.  #speaker_right
Yeah, all that is fine. But still we hardly have money to cover our meals. #inner_monologue
... #speaker_self
Hey man, what are you thinking about? #speaker_right
Earth to Ravi...? #speaker_right
... #speaker_self
Dude, don’t just live in your head. Talk to me! #speaker_right
+ [I should talk to Marie. Maybe she can help.] Well...it’s just that I can do all that, but it won’t change our financial situation.  You know what I mean? #speaker_self
    Well, I’m not saying it will. I don’t think your mum is expecting that either. But you can at least be a good son to her. #speaker_right
    Sometimes just reaching out is what it takes to make the other person feel better. #speaker_right
    It’d still be putting a band-aid on a fracture. #speaker_self

+ [I can’t talk to Marie about this right now. ] It’s nothing. Yeah, you’re right. #speaker_self
    Come on man. What’s wrong? Tell me. #speaker_right
    Hey... I can’t, not right now. #speaker_self
    Why not? Aren’t we friends? We’ve known each other for so long. #speaker_right
    Even if I can’t help you, I can at least be a listening ear. #
    Ok… It’s just that...I am just very aware of how limited my “help” is. #speaker_self
    Of course, I can talk to her. Spend time with her. #speaker_self
    But that won’t help our financial situation.  It’d be like putting a band-aid on a fracture. #speaker_self
- Hmm...how about getting a proper cast? #speaker_right
What do you mean? #speaker_self
Get a job. With us. We’re looking for part-time help. I can only serve that many customers at once. #speaker_right
#speaker_right_image:cha_ravi_marie_normal.png
Seriously? #speaker_self
Seriously. Plus, I wouldn’t mind having more people to talk to. I’m sure Valerie’s getting tired of my rants. I could always use a new victim. Both for my rants and my coffee experiments. What do you say? #speaker_right
Oh my goodness! Yes! I would love to work here. It’ll be like the good old days. #speaker_self
Great! Can you make coffee? #speaker_right
Oh...no... #speaker_self
Honestly, I can’t even boil water right. #speaker_self
Perfect. I’ll be your teacher. Your guide to the wonderful world of baristas and brewing. You better pay attention if you want to work here! #speaker_right 
+ [Are you taking pity on me? ] Eh you’re not just doing this to take pity on me right? #speaker_self
    I run a business. I can’t afford to just be kind. I need someone I can trust behind the cash register, which is hard to find. Trust me, you’re helping me. #speaker_right 
+ Thank you so much for this opportunity! [] #speaker_self
    I’ll be the best bistara ever! #speaker_self
    Barista. And don’t thank me yet, because I might be a terrible boss.

- Thank you! #speaker_self

#knot:ravi_2_minigame
#ui:mcq
#game_id:8
Minigame 8 // must add some text

-> ravi_2_3_narration

=== ravi_2_3_narration ===
#knot:ravi_2_3_narration
#ui:narrator
#background:bg_ravi_cafe.jpg
It was hard work, and Marie had an even tougher job teaching me. 
But after what felt like forever, I finally learnt how to make a decent cuppa.
When I got my first month’s pay, a huge weight lifted off my shoulders. It was the best feeling I had in a long while. 
{ravi_1_dormhousing == true: 
I could just cover my dorm room rent... and skipped enough meals to pay for Revati’s books and school supplies too. 
 - else :
 I could easily cover my rental costs... and even had enough left over to pay for Revati’s books and school supplies too!
 }
When you have money issues always hanging over your head, not having to worry about how to pay things off is the best kind of luxury. The kind you only feel once you’ve lived both scenarios.
The last 6 weeks working here have been pretty good. I get in to help with the lunch crowd and work till closing. It's pretty chill, I can get some homework done during the lull time.
At about 4 p.m., our regular patron shows up at sits at the counter right in front of me. Hmm.. she's a bit late. Maybe she isn't coming..
Oh wait. Speak of the devil.


-> ravi_2_3

=== ravi_2_3 ===
#knot:ravi_2_3
#ui:scene
#background:bg_ravi_cafe2.jpg
#speaker_left_image:cha_ravi_valerie_normal.png
#speaker_left_name:Val
Ah, it’s you again. Running a bit late today? #speaker_self
And it’s you again. Yeah, I was. Had to finish up a painting for class. I wanted to make sure the paint was dry before I left. #speaker_left
#speaker_left_image:cha_ravi_valerie_angry.png
I didn’t know you had to watch paint dry in art school. #speaker_self
And I didn’t know you had to make fun of customers as a barista. #speaker_left
#speaker_left_image:cha_ravi_valerie_normal.png
Ok ok. Would you like your usual today? #speaker_self
Only if it’s as good as the last time. #speaker_left
Mmmm.... If you told me you just learnt how to make coffee a few weeks ago, I’d find it hard to believe you. #speaker_left
Well, I had a good teacher. #speaker_self
Or maybe, I was just a really good student. #inner_monologue
It’s almost like you put a secret ingredient in there or something. #speaker_left
Well... the secret ingredient is... #speaker_self

+ ...love.[] 
    I wish I dared to say that out loud. #inner_monologue
    Imagine if I did though!#inner_monologue
    Not like it’ll work out. She’s just the regular here, and I’m just the barista. #inner_monologue
    {ravi_1_dormhousing == true: 
    And if I were to taker her out on a date, Resipi Alegria is pretty much the only place I can afford because of the staff discount.  #inner_monologue
     - else :
    And if I were to taker her out on a date, no way I can afford a nice restaurant - even with the savings I have on my crappy rental. Oh god, what if she finds out about my crappy rental! #inner_monologue
     }
    What the hell am I doing thinking about taking this girl on a date. #inner_monologue
    Anyway, she’s out of my league. Art classes? Regular fancy lattes? Pilates and crossfit?   #inner_monologue
    This girl is smart and sophisticated, and she’s confident– the kind of confidence built from money and stability. Oh, and she’s gorgeous as hell. #inner_monologue
    Seriously, I should just forget it. #inner_monologue
    Nothing. I don’t add anything.   #speaker_self
    Maybe I’m that good.  #speaker_self
    #speaker_left_image:cha_ravi_valerie_flirt.png
    Oh, thank goodness! Haha... You paused so long I thought you were going to say “the secret ingredient is love” or something. #speaker_left
    Wait, what?  #inner_monologue


+ [...honey] To be honest, Marie told me to put some honey in your coffee if you came in. She said you’d get it. I don’t know what she meant by that though but I added our best manuka honey. #speaker_self
    Oh no. Now that’s a bad move. She’s gonna see that it’s Marie who understands her tastes well, and I’m just the bonehead following instructions. #inner_monologue
    Argh! Why Ravi why… #inner_monologue
    Ah...Marie. I really tell her too much. But it’s ok, it does taste good.  #speaker_left
    Especially because you made it. #speaker_left
    What did they talk about? Does Val have layered conversations like that all the time? Honey and code and insights…  #inner_monologue
    Oh man, this girl so interesting, but she’s way out of my league. #inner_monologue
- Anyway. Mr. Barista. Care for a conversation? #speaker_left
#speaker_left_image:cha_ravi_valerie_happy.png
By conversation, do you mean “complain about your day to Mr. Ravi Kannasamy”? #speaker_self
Yes. Last time I checked, that’s part of the services here at the great Resipi Alegria, no? #speaker_left
This always happens. She comes in, orders her usual, or – if she’s in an extra good mood – orders that crazy Chilli Coconut Agave Latte. #inner_monologue
We mostly talk about her day. She’s always asking me about mine, but nothing’s really new in my life... and I can’t tell her she’s the highlight.  #inner_monologue
She’s tried getting me to open up about my background. #inner_monologue
But when I get those glimpses of her interests, her family, her goals… I’d clam up on mine.  #inner_monologue
She and I are at different rungs of the social hierarchy. She’s at the top, free to pursue her passions, all her resources and provisions taken care of. I’m just trying to make it to the next day and provide for Amma and Revati. #inner_monologue
When she talks about her pursuits, I feel so impressed by her achievements. And yet, the fact that she doesn't recognise how lucky she is, being able to feed all her focus to just passion...  #inner_monologue
What if I were born well-off? Would I be as accomplished as Val?  #inner_monologue
Okay, maybe not. She probably has way more brains and talent. And looks, too. #inner_monologue
SO, I’ve been sooo busy nowadays. I’m juggling all these extra modules I’m taking, and I’m preparing a painting for that National Youth Fine Arts Competition this year. You know the one I’ve yakking about? #speaker_left
Yeah, what about it? #speaker_self
#speaker_left_image:cha_ravi_valerie_normal.png
The first prize winner this year gets an all-expenses paid semester abroad at the University of the Arts, London! That’s one of the best art schools in the world! #speaker_left
Oh wow! Do you think you stand a chance? #speaker_self
I sure hope so. And I still have those CIP projects to handle too. I just really need sleep. And coffee. That’s why I’m here, I guess. #speaker_left
Come in more often! I’ll tell my colleagues to save your favourite seat for you. #speaker_self
That’s sweet of you, Ravi. But don’t worry. I’ll make sure to come in during your shifts. I always do. #speaker_left
#speaker_left_image:cha_ravi_valerie_flirt.png
So you can have yet another rant session? #speaker_self
No, so I can see you again, obviously. #speaker_left
#speaker_left_image:cha_ravi_valerie_happy.png
Haha.... Good one. #speaker_self
Oh man. I can’t tell if she’s just being sarcastic. #inner_monologue
So, now that you’ve heard all that I’m dealing with at the moment, can you do me a favour? #speaker_left
#speaker_left_image:cha_ravi_valerie_normal.png
Sure. What do you want? #speaker_self
I can really do with some cheering up. #speaker_left
I’m not quite sure what would work #inner_monologue

+ [Play an online art quiz with her] Alright. Since you love art, I wanted to challenge you to a duel!  #speaker_self
    Hah! Bring it on. You don't know who you're up against. #speaker_left
    It's called "Modern Art or Toddler?" - I'll guess first then you, ok?  #speaker_self
    You don't know who you're up against. #speaker_left
    #speaker_left_image:pixel.png
    #background:bg_ravi_art1.jpg
    Ok, here we go with the first question. I'll guess first. #speaker_self
    ++ [Modern Art]
        VAR ravi_2_modernart = 1
        ~ ravi_2_modernart = 1
    ++ [Toddler]
        ~ ravi_2_modernart = 0
    -- Oh - that’s Kandinsky. ‘Black Lines.’  #speaker_left
    You got it correct {ravi_2_modernart == 1: and so did I}! #speaker_self
    #background:bg_ravi_art2.jpg
    I guess that was easy for you. My turn again: #speaker_self
    ++ [Modern Art]
        ~ ravi_2_modernart += 1
    ++ [Toddler]
    -- It’s a Joan Mitchell.  #speaker_left
    Woah! Right again. Someone's been studying eh? #speaker_self
     #background:bg_ravi_art3.jpg
    Ok, last question.  #speaker_self
    ++ [Modern Art]
        ~ ravi_2_modernart += 1
    ++ [Toddler]
    -- Hmm. Looks like a de Kooning, but then I don’t think it is…  Well, it’s not done by a kid, for sure. I'll go with Modern Art. #speaker_left
    Full marks, wooh!  #speaker_self
    {ravi_2_modernart == 3: 
        I managed to get them all right too - including that last lucky guess! The last one is modern art... but with a twist! #speaker_self
        - else:
        Looks like your knowledge of art is better than mine! Ok that should go without saying. The last one is modern art... but with a twist! #speaker_self
    }
    Who’s it by? #speaker_left
    Believe it or not, it’s by a chimp. Congo the chimpanzee. Circa 1957. #speaker_self
    HAHAHAHAHA! No shit! An actual monkey? #speaker_left
    #speaker_left_image:cha_ravi_valerie_incredulous.png
    #background:bg_ravi_cafe2.jpg
    Yeah. So ridiculous!  Apparently this sold for like a zillion dollars. Now I need to re-evaluate my life choices. Maybe I should quit being a barista and train some monkeys to do art. #speaker_self
    Well please don't quit, because otherwise I wouldn't get to hang out with my favourite Mr Barista every day. Plus if you were a zillionaire you might not have time for me. #speaker_left

+ [Tell her a lame joke]
    Well, I’m not much of a comedian. But maybe I can tell you a joke? #speaker_self
    Sure, humour me. #speaker_left
    #speaker_left_image:cha_ravi_valerie_incredulous.png
    So...Why did the coffee file a police report? #speaker_self
    Because it was mugged! #speaker_self
    #speaker_left_image:cha_ravi_valerie_normal.png
    Ah, if I’m going to be honest, that joke feels a bit lukewarm. #speaker_left
    Not good enough? Hmm, how about this one. #speaker_self
    “A girl walks into Resipi Alegria, and orders a coffee to go. #speaker_self
    The coffee gets up and leaves”. #speaker_self
    #speaker_left_image:cha_ravi_valerie_happy.png
    Haha... Is the girl supposed to be me? Who’s the coffee? You? #speaker_left
    Haha... I don’t know! I just added you in for the joke. #speaker_self
    Don’t worry. I’ll always come in, but I’ll never ask you to leave. #speaker_left
    #speaker_left_image:cha_ravi_valerie_flirt.png

- Wow. From the way she smooth-talks, you’d think she actually likes me. #inner_monologue
I guess a guy can dream. #inner_monologue
Well, anyway, it’s late. I need to go soon. Thanks for today, Ravi. I really needed it. #speaker_left
#speaker_left_image:cha_ravi_valerie_normal.png
Could I have a Chilli Coconut Agave Café Latte to go please? #speaker_left
Make sure you spell my full name right this time, not just Val or The Regular. #speaker_left
Uh, I’m sorry about that. #speaker_self
Valkyrie is a weird name, but I’m quite certain I spelt it correctly... #inner_monologue
Just so we’re clear, the name’s Valerie, not Valkyrie. #speaker_left
#speaker_left_image:cha_ravi_valerie_flirt.png
OH MY GOD. This whole time I thought you were named Valkyrie. #speaker_self
(laughs) Because of my tattoo? Call me judgy but I’ll never ink my own name on my arm. Too basic. #speaker_left
#speaker_left_image:cha_ravi_valerie_happy.png
Aren’t Valkyries like great warriors or angels or something? It fits you. OK Valerie does, too. #speaker_self
Just to make sure you don’t mess it up again, I’ll spell it out for you this time so you'll never forget it. #speaker_left
#speaker_left_image:cha_ravi_valerie_flirt.png
Is that your phone over there? #speaker_left
Yeah, why- #speaker_self
(GRABS RAVI’S PHONE) #speaker_left
Hey! What are you doing? #speaker_self
(typing) It’s V A L E R I E #speaker_left
Right, right. Got it. Could I please have my phone back? #speaker_self
#background:bg_ravi_valnumber.jpg
And my number is 8161427. Saved. #speaker_left
Got it. Wait..what? #speaker_self
#background:bg_ravi_cafe2.jpg
I really have to go right now. But make sure you call me tonight, okay, Ravi? I have something I really want to say to you. See you around. #speaker_left
Wow. Uh...I’ll call you, Valkyrie. I mean, Valerie. See you. #speaker_self
#speaker_left_image:pixel.png
Great, I came off like a total idiot. I must be the only person who got her name wrong. #inner_monologue
What does she see in someone like me? Does she see Mr. Barista, or plain old Ravi? #inner_monologue
Oh wait, she doesn’t know plain old Ravi, and that’s my own fault. #inner_monologue
{ravi_1_dormhousing == true: 
    Once she finds out I live in a tiny dorm room, or that I can’t afford to buy her a coffee let alone a nice meal, or that my family situation is so messed up… sigh. #inner_monologue
     - else :
    Once she finds out I live in a rented bedroom that looks like a dungeon, or that I can’t afford to buy her a nice meal, or that my family situation is so messed up… sigh. #inner_monologue
     }

-> ravi_2_4_narration

=== ravi_2_4_narration ===
#knot:ravi_2_4_narration
#ui:narrator
#background:bg_ravi_bedroom.jpg
I’ve been thinking about it the whole day, and I still don’t get why Val was flirting with me.
#background:bg_ravi_valnumber.jpg
She’s made it so easy, giving me just one job to do. I just have to call her. And yet I'm so nervous. 

+ [Call Val] -> ravi_2_4_call
+ [Don't call Val] -> ravi_2_4_nocall

=== ravi_2_4_call ===
#knot:ravi_2_4_call
#ui:narrator
#background:bg_ravi_valnumber.jpg
Should I call her? Maybe I should! 
But what if she doesn't actually like me?  I don’t want to risk losing her as a friend. 
If I don't call her, I wouldn’t need to bring her over to Pushpa Aunty’s place to meet my family. And I wouldn’t need to meet hers. 
That way, I won’t risk disappointing both of us. 
But not knowing if we will work out – I’ll regret it for the rest of my life.
-> chapter_2_ending_1

=== ravi_2_4_nocall ===
#knot:ravi_2_4_mpcall
#ui:narrator
#background:bg_ravi_valnumber.jpg
Should I call her? Sigh. So many questions in my head.
That was a bold, smooth move she made. Maybe because she was just bored. Or because I was just an easy target to practice her flirting game.
Or because flirting with the barista is fun when you’ve yet to work out why he’s even a barista.
#ui:notification
#background:ui_ravi_message.jpg
Marie: Heyo! #message
#ui:narrator
#background:bg_ravi_bedroom.jpg
Ah, my dear boss lady. Looks like I’m gonna have more shifts.
#ui:notification
#background:ui_ravi_message.jpg
Marie: No new shifts yet but got you sth better. Val dmed me for your no. And I gave it to her;) #message
#ui:notification
#background:ui_ravi_phonecall.jpg
VALERIE # message
// #background:bg_ravi_valcalling.jpg
#ui:narrator
#background:bg_ravi_bedroom.jpg
Wow. Wowww. She’s a Valkyrie alright. She takes what she wants.
But... Our friendship is too much to lose. Better to keep what we have now than risk us not working out. 
Even if Val still accepts me after knowing about my family and our situation, her parents won’t. I’m broke, I’m neighbourhood-schooled, and – oh! Cherry on the cake – I’m Indian. 
I should know how it is with the Chinese majority. I can't even rent a flat from them - how would they feel if I were to date their daughter?
And ...I like Val too much to rock her boat. 
I think it’s best NOT to pick up this call.
What’s that French phrase she taught me? 
-> chapter_2_ending_2



=== chapter_2_ending_1 ===
#knot:chapter_2_ending_1
#ui:narrator
#background:bg_ravi_valnumber.jpg
There’s that phrase Val taught me. Carpe diem - seize the day. 
VAR chapter_2_ending = 1
~ chapter_2_ending = 1
If there’s a time for it, it’s now. Right. Here it goes, no regrets...

-> ravi_2_reflection

=== chapter_2_ending_2 ===
#knot:chapter_2_ending_1
#ui:narrator
#background:bg_ravi_bedroom.jpg
 C’est la vie. That’s life. It’s painful, it’s unfair. 
~ chapter_2_ending = 2
It’s what it is. Sorry, Val.

-> ravi_2_reflection


=== ravi_2_reflection ===
#knot:ravi_2_reflection
#ui:chapter_reflection
#reflection_id:8
Reflection 8



-> ravi_3_intro





// CHAPTER 3





=== ravi_3_intro ===
#knot:ravi_3_intro
#ui:narrator
#background:bg_ravi_bedroom.jpg
{chapter_2_ending == 1: 
    So, the impossible happened: Val and I got together. I am still in shock - how can a girl like that be with a guy like me?! 
    That’s the first great change in my life.
    The second change is - I’ve landed an engineering internship! Not only will I fulfil my semester credits, I’m gonna get a taste of office life! 
    It feels like I’ve won the lottery twice. I’m excited, but now I’m also feeling anxious for my first day tomorrow.
- else :
    So, what happened for Val and me? The impossible.
    After I decided not to answer her call, she strode into the cafe the next day and told me if I wasn’t going to take the next step, I’d need to give her an honest reason why. 
    Before I could answer, she asked me if I liked her. Point-blank. 
    Of course I said yes. Then she looked me square in the eye and said I’d better prove it with a date.
    So, uh, we’re together now. I still can't believe it. That’s the first great change in my life.
    The second change is - I’ve landed an engineering internship! Not only will I fulfil my semester credits, I’m gonna get a taste of office life! 
    It feels like I’ve won the lottery twice. I’m excited, but now I’m also feeling anxious for my first day tomorrow.
     }

~ chapter_id = 2
#background:black.jpg
CHAPTER {chapter_id} #title
The Internship #title


-> ravi_3_1


=== ravi_3_1 ===
#knot:ravi_2_1_narration
#ui:whatsapp
#background:bg_ravi_bedroom.jpg
#background:whatsapp.png
#chat_group_title:Family
#chat_group_image:ico_ravi_family.png
#speaker_1_name:Revati
#speaker_2_name:Amma
#timestamp:21.31
Earlier before you left you said you had something on today? #speaker_2
Didn’t hear you properly. Next time don’t speak when you eat. #speaker_2
Anna said he was going to start his uni internship tomorrow #speaker_1
Yes haha #speaker_self
I needed an internship to fulfil my university credits #speaker_self
And I’ve been applying for a while #speaker_self
Wow! Good that you managed to find one. #speaker_2
Did your boss at the café give you any trouble? #speaker_2
+ [She's very understanding] Marie? No, she’s very understanding #speaker_self
    We’re friends after all #speaker_self
    She gave me time to prepare for interviews and make my internship applications #speaker_self
    I don’t think I would have got the internship if not for her actually #speaker_self
    Can you do anything on your own? #speaker_1
    🙄 #speaker_self
+ [I just manage my time well] I squeezed out time for interviews and applications somehow  #speaker_self
    I suspect Marie let you have lots of flexibility Anna #speaker_1
    Well, to tell the truth, she was quite nice la. We're friends after all. #speaker_self
- Anyway the internship starts tomorrow #speaker_self
It’s going to be for 3 months #speaker_self
I hope I don't mess it up #speaker_self
Don’t worry kanna. #speaker_2
I know you can do it. #speaker_2
You’ve been very responsible recently. #speaker_2
You are a man now! #speaker_2
Only in Amma's eyes... 😂  #speaker_1
HAHAHA #speaker_self
Thank you Amma and thangachi (sister) #speaker_self
Wish me luck! #speaker_self

-> ravi_3_2

=== ravi_3_2 ===
#knot:ravi_3_2
#ui:narrator
#background:bg_ravi_meetingroom.jpg
8.20 a.m. Turbine Engineering Pte Ltd Aerospace Meeting Room 3. 
It’s Day One of the internship. 
#ui:scene
#background:bg_ravi_meetingroom.jpg
#speaker_left_image:cha_ravi_roger_normal.png 
#speaker_left_name:Roger
#speaker_right_image:cha_ravi_qian_normal.png 
#speaker_right_name:Qi An
// speaker_right_image:cha_ravi_marcus.png 
// speaker_right_name:Marcus
This is it. Ok, Ravi. You've got this. #inner_monologue
“Ravi Kannasamy, engineering intern.” So this is what adulting sounds like. Neat.  #inner_monologue
God, I’m so nervous. I’m wearing my lucky socks but they’re not helping. But of course. Socks aren’t lucky.  #inner_monologue
Right. Ok. I’m good art what I do. And I’m doing it for Amma. And Revu. Shoot my hands are shaking.
 #inner_monologue
The email said to report at 830. Maybe I shouldn’t have come so early. #inner_monologue
// Qi An appears – looks relaxed* #
// Marcus appears – looks very serious* #
Oh my god, there are people who came earlier than me! Hopefully I can make some friends. #inner_monologue
I’m like the only Indian here.   #inner_monologue
// *Roger appears* #
There’s somebody they’re all talking to. He looks important. Oh boy, here we go. I’m really feeling it now. #inner_monologue
Hello everyone. Good Morning. Welcome to Turbine Engineering Pte Ltd for your internship programme. You will be able to learn much more about aviation engineering in the next few weeks. #speaker_left
...Quite sunny today ah? Sorry ah, I’m not very good at this kind of corporate introduction. #speaker_left
So how’s everyone doing? #speaker_left
Nobody wants to speak...I guess they’re as nervous as I am, too. #inner_monologue
#speaker_right_image:cha_ravi_marcus_normal.png 
#speaker_right_name:Marcus
...Good, sir. How are you sir? #speaker_right
Wow, this Marcus fella. So formal. Makes me feel like I’m back in NS again. #inner_monologue
Good. Good. What’s your name again? #speaker_left
Marcus Mak sir. M.A.R.C.U.S space M.A.K. I answer to Marcus. #speaker_right
Wow maybe he’s not just formal, he’s a complete robot! #inner_monologue
Ok, and what about you? #speaker_left
- oh, me?? Hello! #speaker_self
Yes, hello. What’s your name? #speaker_left
Ravi. #speaker_self
Oh good, easy name ah. #speaker_left
Haha, yes. #speaker_self
Ravi what ah? #speaker_left
Kannasamy. Ravi Kannasamy. #speaker_self
Kandaswamy ah? #speaker_left
+ [Correct him] Kannasamy. With two Ns. #speaker_self
    Oh ok. Ravi KandasaNNy right? Better I just call you just Ravi haha! Anyway, I’m Roger. #speaker_left
    Uh #speaker_self
    It’s Kannasamy... but I think I better not push this otherwise I might upset him on my first day. Anyway it’s not a big deal. #inner_monologue
+ [Ignore it] Sigh. It’s Kannasamy... It's not even that hard. #inner_monologue
    But I think I better not push this otherwise I might upset him on my first day. Anyway it’s not a big deal. #inner_monologue
- I’ll be your supervisor. You will be rotated around different teams, but you’ll start with the Systems Team first, focusing on AI integration, which is my team.  #speaker_left
I’ll brief you all about this team and the other teams later. #speaker_left
HR has already set up your emails and assigned you computers. All of you will be seated in the interns' room.  #speaker_left
You will have an Orientation Booklet placed at your desks. Read it ah, it should give you all the info you’ll need. #speaker_left
Thank you, sir. #speaker_right
#speaker_right_image:cha_ravi_qian_normal.png 
#speaker_right_name:Qi An
Thank you.#speaker_right
Ok, follow me. I’ll bring you to my colleague who’s giving the tour. She’ll also give you your passes  to enter the office. #speaker_left
[In Chinese] lkvki wthzc yalao snidl jdyos mljhq pwvpc zgcgi wfyku vufui lkvki wthzc yalao snidl jdyos mljhq pwvpc zgcgi wfyku vufuilkvki wthzc yalao snidl jdyos mljhq pwvpc zgcgi wfyku vufui #speaker_left
Oh sorry Ravi, there’s a welcome lunch. Dim sum. You eat right? #speaker_left
Yes I do! #speaker_self
[In Chinese] lwnbq ysnmu dwaec uytaj bvixn qlhcg wbhxz lnbtp rfbbr  12:30 ok? #speaker_left
Sure! #speaker_right
#speaker_right_image:cha_ravi_marcus_normal.png 
#speaker_right_name:Marcus
Yes, sir.#speaker_right
Wait what? What did he say? Is it ok to ask? Crap. #inner_monologue
+ [Ask Roger directly] Excuse me, Roger? Sorry, I didn’t quite get that. #speaker_self
    Ah, sorry. Lunch is at 1230. Meet me downstairs later if you’re coming. #speaker_left
    Ok, thank you! #speaker_self
+ [Don't ask him] Hmm… hope it isn’t anything important. I'll figure it out later. #inner_monologue
    Yes!  #speaker_self
    #speaker_left_image:cha_ravi_qian_normal.png 
    #speaker_left_name:Qi An
    Eh sorry ah guys, what did he say at the end?  #speaker_self
    Weren’t you listening? You should always pay respect to your seniors and superiors.  #speaker_right
    I mean, I WAS listening...he said something in Chinese, didn’t he？ #speaker_self
    Oh! Yeah, he said lunch was at 12.30. We can meet him downstairs later. #speaker_left
    Ok, thank you! #speaker_self

- I know Roger didn’t mean any harm, but couldn’t he have just told all of us the same thing at the same time? He probably just didn’t think it through.  #inner_monologue
Anyway. Let me go get my pass! Can’t wait to get started. I want to see how the rest of the office looks like. #inner_monologue
So, Qi An and...Marcus, right? #speaker_self
Affirmative. #speaker_right
#speaker_left_image:cha_ravi_qian_normal.png 
#speaker_left_name:Qi An
Yup! #speaker_left
Crazy huh, first day? #speaker_self
Yeah. Let’s talk at lunch later. I’m going to meet my uncle first. #speaker_left
He works here? #speaker_self
Yeah. He’s the CEO. #speaker_left
Oh wow. That’s cool! #speaker_self
Yeah, Marcus, let’s go, I’ll introduce you to him. See you later Ravi. #speaker_left
Let us move. #speaker_right
Ok! uh ... see you later guys #speaker_self
Wait, why wasn’t I invited? Did they know each other before this internship? They did seem quite chummy earlier when they were talking to Roger jus- #inner_monologue
(turns and bangs into glass door) OWWW! #speaker_self
Wah. Are you alright? #speaker_left
Owww... Yeah I’m ok. Just a small bruise on my forehead. #speaker_self
Wow. Really a crazy first day for you. Keep your eyes open, bro. #speaker_left
Affirmative. It’s best to see where you are going. You reduce clumsiness that way. #speaker_right
Haha, yeah... so embarrassing. #speaker_self
Marcus, let’s go. #speaker_left
#speaker_left_image:pixel.png 
#speaker_right_image:pixel.png 
Why am I so unlucky today? Must be the nerves.  #inner_monologue
Just put your head down and work, Ravi. Keep your head up and walk. And keep your eyes open. #inner_monologue


-> ravi_3_3

=== ravi_3_3 ===
#knot:ravi_3_3
#ui:narrator
#background:bg_ravi_cafeteria.jpg
And just like that, a week passed. My internship is going ok, if I do say so myself! I got my hands on the machinery and equipment they used, and learned a lot more than in uni.
There's one thing that bugs me - I can’t seem to make friends. The interns share the same room, but we hardly talk. Doesn’t help that Marcus is so robotic and Qi An is so aloof. And they usually chat in Chinese.
Well, there's also another thing that bugs me. I think Qi An and Marcus made some comments about me when they were chatting. I don’t want to confront them, but what they said really hurt me. 
I know they think it’s funny, but it’s not. I mean, I’ve had my fair share of such comments before. But come on, we’re already in uni. It’s time to grow up.
With all that's happened, I'm glad that it's lunch now. 
#ui:scene
#speaker_left_image:cha_ravi_valerie_normal.png
#speaker_left_name:Val
Hmm...what should I get for lunch today- #inner_monologue
Hi!!!! #speaker_left
WOAH! You scared me. #speaker_self
Wait a minute, how did you even get in? How did you get past security? #
I have my tricks. #speaker_left
Seriously... #speaker_self
I’m really thankful for Val. She’s really cheery once you get to know her. And headstrong, too. She kind of inspires me whenever I feel overwhelmed by work. #inner_monologue
Not that everything was smooth-sailing when we first got together though... #inner_monologue
I told them I’ve come to meet the great Mr. Ravi Kannasamy. And they said, “Yes ma’am, of course, this way please.” #speaker_left
Val...seriously! #speaker_self
Why are you so worked up! I’m here to see you. #speaker_left
No, but they shouldn’t have let you in! You need a pass. #speaker_self
Wow. Someone’s wound up. I spoke to the security guard and he said I could wait until you came out. And then I kinda just slowly shuffled over into the reception area. He seemed too engrossed on his phone. And now I’m here. #speaker_left
Could you not do things like this please? I work here, if you don’t realise. You can’t just waltz in like this. #speaker_self
Ok I’m sorry, no waltzing. I’ll let you know when I’m coming next time. #speaker_left
Thank you. #speaker_self
I’m starving. What's good here? #speaker_left
Oh - the canteen is already full. #speaker_self
No it’s not, I see a couple of seats over there! There’s two seats left. We can ask to share. #speaker_left
#speaker_right_image:cha_ravi_marcus_qian.png
#speaker_right_name:Marcus & Qi An
Wait a minute, no! Don’t do that! #speaker_self
What’s wrong? #speaker_left
Those people are my colleagues. #speaker_self
So? #speaker_left
So, I don’t want to sit with them. #speaker_self
Why can’t we just go sit with them? #speaker_left
Because … I don’t want to. #speaker_self
Then why don’t we go somewhere else? #speaker_left
I have to be back in the office at 1 sharp. We have a meeting. #speaker_self
You’re acting really weird, you know that? #speaker_left
I’m sorry. Is it weird of me to want to do something? It’s not too much of me to ask to not to do something I don’t want to do, is it? I just don’t want to sit with them. That’s it. #speaker_self
Ok, I am leaving. I’m not sure what’s wrong with you today, but I’m not dealing with it. #speaker_left
No... wait. #speaker_self
Ravi, I come down all the way to have lunch with you. And you’re behaving like a kid. If you don't tell me what's wrong, there's no point in me staying. #speaker_left
Please don’t make a scene. #speaker_self
I’m the one making a scene? You don’t even have the guts to go sit at a table with your colleagues. And you’re blaming me? Goodbye. You can call me when the real Ravi is back. #speaker_left
It’s because of me, isn’t it? #speaker_left
No, no, why would it be because of you? #speaker_self
I don’t know either! Is it my dress sense? Or the fact that you don’t want your engineer friends to know you’re dating a girl in arts school? What’s wrong with the arts? #speaker_left
No, no, Val, it’s not that...it’s- #speaker_self
What is it then? Tell me.  #speaker_left
I won’t make a scene or raise my voice, but Ravi, please, talk to me. Why can’t we sit with them? Would you rather go somewhere else to eat? #speaker_left
I can’t tell her why it’d be a bad idea to sit with them. I know it would upset her. They’ve made so many mean comments at work. Racist and sexist jokes, too. #inner_monologue
I don’t know what they’d say if they found out we were dating. They’d probably make fun of Valerie too, even if they don’t think it’s hurtful... #inner_monologue
+ [Play it cool with her] -> ravi_3_3a
+ [Tell her the truth] -> ravi_3_3b

=== ravi_3_3a ===
#knot:ravi_3_3a
#ui:scene
#speaker_left_image:cha_ravi_valerie_normal.png
#speaker_left_name:Val
#speaker_right_image:cha_ravi_marcus_gossipy.png
#speaker_right_name:Marcus
Ok, you know what. It’s ok. Let’s just wait for a while. I’m sure we can find seats here. #speaker_self
You sure? I don’t know what’s wrong with your colleagues, but I can just go too if today isn’t a good time for lunch. We can always eat another day. #speaker_left
It’s ok. I’m sure someone will leave soon. Let’s just wait here. #speaker_self
[Marcus whispers something to Qi An] #speaker_right
#speaker_right_image:cha_ravi_qian_gossipy.png
#speaker_right_name:Qi An
[Qi An whispers back]  #speaker_right
#speaker_right_image:pixel.png
Hey Ravi, are you feeling alright? You’re sweating like crazy all of a sudden. Here, take a tissue. #speaker_left
...thank you. On second thought, let’s go elsewhere. #speaker_self
Did they spot us? I saw them whispering to each other. I hope not. #inner_monologue
Ok, now that we’ve left, please tell me what’s going on. Did something happen with those guys? #speaker_left
Nothing. I just don’t want to make a scene here. Let’s just grab lunch at the WagDonald’s. The queue is probably shorter too. #speaker_self
I can’t tell her. How do I tell her how toxic those two are. I don’t feel like I belong here. And I don’t see this changing any time soon. They make me feel so small. I know they don’t like me. Or even understand me. Sigh.  #inner_monologue

-> ravi_3_4


=== ravi_3_3b ===
#knot:ravi_3_3b
#ui:scene
#speaker_left_image:cha_ravi_valerie_normal.png
#speaker_left_name:Val
#speaker_right_image:cha_ravi_marcus_qian.png
#speaker_right_name:Marcus & Qi An
Well, they’re not very nice people, to be honest. #speaker_self
What do you mean? #speaker_left
I have been working here for a month. And the only time they have said anything remotely friendly to me has been NEVER. I just shut up and do what I’m told. When I can understand it. #speaker_self
What do you mean, “When you understand it”? #speaker_left
Val, they just talk all the time with each other -- and mostly in Chinese. I miss meeting times because they just make their own plans and don’t tell me when they change. I just do my reports and shut up. Just hear them laugh at their stupid jokes. #speaker_self
AAAH. I’m so FRUSTRATED! Sometimes I wish I NEVER took this internship. #speaker_self
Where did that come from? This is not me. I miss Amma. And I miss Revu. I haven’t even seen them this week. And I’m being very rude to Valerie. My hands are shaking. #inner_monologue
Ravi, I don’t know what they did to you, but you’ve wanted this internship forever. #speaker_left
And what do you mean by stupid jokes? #speaker_left
You know how guys are. They make jokes about me. Not about something like my appetite. You know what they joke about. And they’ve made jokes about some of our female colleagues too. They act like nobody can hear them. I can’t take it. #speaker_self
Wow...thanks for being honest, Ravi. I never knew anything about this. #speaker_left
Sorry, Val...I just didn’t tell you because I knew it would upset you. I thought I could deal with it by myself. #speaker_self
Thank goodness we didn’t sit with them then. If not the only thing they’ll be eating for lunch is my knuckle sandwich. #speaker_left
Speaking of sandwich, we can go to Metros nearby for lunch. They're giving away free cookies - sugar always cheers you up. #speaker_left
Oh, Val, you know how to make me happy. #speaker_self

-> ravi_3_4

=== ravi_3_4 ===
#knot:ravi_3_4
#ui:whatsapp
#background:whatsapp.png
#chat_group_title:Interns @ Turbine Engineering
#chat_group_image:ico_ravi_turbine.png
#speaker_1_name:Qi An
#speaker_2_name:Marcus
#speaker_3_name:Roger
#timestamp:16.27
Hey, you finish work alr? I downstairs #speaker_1
// add inner monologue interface to whatsapp
Is he asking me? Can’t be right? #inner_monologue
Negative. T-minus 30 minutes. My tasks will be complete by then. #speaker_2
😤 😤 😤 #speaker_1
Faster leh. I want to go catch happy hour! #speaker_1
Noted with thanks. I’ll expedite my work. #speaker_2
Faster ok! #speaker_1
Anyway, what are your thoughts? #speaker_1
Thoughts? On what? #speaker_2
You know, what do you think? About...that #speaker_1
I am confused. Please elaborate. #speaker_2
Ravi and that girl he was fighting with in the canteen. You didn’t see ah? #speaker_1
// inner monologue
They really don’t realise I’m on this chat... #inner_monologue
Negative. I was too focused on my chicken beryani #speaker_2
Well, I think it’s his gf leh #speaker_1
Ravi can get a girlfriend? He seems so robotic. #speaker_2
No offence, but has he looked in a mirror? #inner_monologue
I also say. Chinese girl some more. #speaker_1
// same
Oi…they better not be saying stuff about Val. #inner_monologue
A Chinese girl? Why would a Chinese girl date Ravi? Was she cute or not? #speaker_2
Wah Marcus you really get it man. That’s the spirit #speaker_1
Cutting straight to the heart of the matter! #speaker_1
7 / 10 #speaker_1
Maybe a bit higher, but under 8. #speaker_1
I mean let’s be real tbh #speaker_1
// inner_monologue
tbh?! wth ... #inner_monologue
Ravi got gf. I got you. 😅 What’s wrong with this world? #speaker_1
How come the ugly guys get the girls ah? #speaker_1
I can’t get any matches on my dating apps #speaker_1
Splinter, TehMeetDonut, Stumble all nothing #speaker_1
Then Ravi from nowhere also can get gf #speaker_1
How come our an neh (derogatory term for indian) don’t get some Rani or Vani ah? #speaker_1
Now less girls for me to pick man #speaker_1
What is an an neh? #speaker_2
You don’t know what an an neh is ah? #speaker_1
Ravi la, his type #speaker_1
Aiyah anyway life’s unfair I tell you #speaker_1
This kind still say I got Chinese privilege #speaker_1
If I really got Chinese privilege then where is my chiobu?  #speaker_1
Eh... this chat group is the main one. Oh crap.  #speaker_1
<This message has been deleted> #speaker_2
<This message has been deleted> #speaker_1
<This message has been deleted> #speaker_1
<This message has been deleted> #speaker_1
<This message has been deleted> #speaker_1
<This message has been deleted> #speaker_1
Wrong group sorry #speaker_1
<This message has been deleted> #speaker_2
<This message has been deleted> #speaker_2
<This message has been deleted> #speaker_2
<This message has been deleted> #speaker_2
// inner monologue
They finally noticed. I knew they were mean, but not this horrible. I didn’t realise I was THAT invisible. They really ran their mouths huh? Said what they were thinking? #inner_monologue
I’m disappointed. No, I’m angry. NO – I’m ENRAGED. FURIOUS. If Valerie were in my shoes she’d find their addresses, go to their houses and punch them in the face. #inner_monologue
 I can’t take this anymore. I don’t know how I’m supposed to look them in the eyes tomorrow. What should I do? #inner_monologue
. #clear
+ [Confront them] -> ravi_3_4a
+ [Play dumb] -> ravi_3_4b

=== ravi_3_4a ===
#knot:ravi_3_4a
#ui:whatsapp
#background:whatsapp.png
#chat_group_title:Interns @ Turbine Engineering
#chat_group_image:ico_ravi_turbine.png
#speaker_1_name:Qi An
#speaker_2_name:Marcus
#speaker_3_name:Roger
#timestamp:16.37
Hey. I saw all that. #speaker_self
Oh no. This is a bad situation. #speaker_2
Hey bro, sorry ah haha #speaker_1
I was just joking #speaker_1
Don’t “bro” me. #speaker_self
I KNOW you weren’t joking #speaker_self
You really insulted both me and my girlfriend #speaker_self
You think it’s ok to make these jokes? #speaker_self
Grow up la #speaker_self
Hey man, I’m sorry. I really didn’t mean to offend you #speaker_1
What did you mean then? #speaker_self
I’ve been quiet this whole internship #speaker_self
Don’t think I didn’t hear what you tell Marcus all the time #speaker_self
I’m going to talk to somebody about this #speaker_self
I don’t care that you act like a bigshot just because you know the CEO or whatever #speaker_self
// add speaker info
(roger is typing…) #timestamp
Hey boys. I’m in this chat too you know #speaker_3
Oh no. This bad situation just got worse. #speaker_2
I don’t know what you guys were talking about #speaker_3
And I can’t read the messages that were deleted #speaker_3
But take it offline. Don’t do this in our work group #speaker_3
Ravi, come see me in my office tomorrow. #speaker_3
What did I do wrong? What about Qi An? #speaker_self
I don’t know what Qi An wrote. he deleted it already but he apologised already #speaker_3
You need to learn to be more professional. #speaker_3
I hope this puts an end to this, whatever this was. Got it? #speaker_3
Affirmative. #speaker_2
...Alright. #speaker_self
// inner
This isn’t fair. I didn’t do anything wrong. #inner_monologue
Roger didn’t see what Qi An wrote. I’m sure I can tell him tomorrow. Roger’s a nice guy, he’ll listen to me. But I don’t have any proof. I didn’t take any screenshots. #inner_monologue
And even if Roger did understand, what can he do about it? It’s already over. The messages are gone already. #inner_monologue
This is getting out of hand. I can’t go on like this. I am asking to be transferred to another department starting tomorrow. Or better still, quit this internship. #inner_monologue

// chapter 3 ending 1

-> ravi_3_5

=== ravi_3_4b ===
#knot:ravi_3_4b
#ui:whatsapp
#background:whatsapp.png
#chat_group_title:Interns @ Turbine Engineering
#chat_group_image:ico_ravi_turbine.png
#speaker_1_name:Qi An
#speaker_2_name:Marcus
#speaker_3_name:Roger
#timestamp:16.37
Hey guys. Any plans today? #speaker_self
Oh hey Ravi... No...just going to finish up and go for family dinner. #speaker_1
Negative. Still clearing my work. #speaker_2
Really? Because I could swear I saw like 300 messages here that just vanished all of a sudden. #speaker_self
I got a notification for each and every message you know #speaker_self
My phone was vibrating like crazy eh #speaker_self
Huh? What are you talking about #speaker_1
Must be a bug haha #speaker_1
Possibly. #speaker_2
A bug ah? Oh phew #speaker_self
I didn’t read the full thing but I saw something about my girlfriend #speaker_self
In case you guys don’t know I’m attached #speaker_self
Must be a weird bug, I think it showed me some message I sent her in this chat instead? Weird #speaker_self
Haha, yah, must be #speaker_1
Wah congrats bro I didn’t know you had a girlfriend #speaker_1
Can she speak tamil though #speaker_1
Why would you ask that? #speaker_self
Oh, uh...nvm #speaker_1
Yeah why did I ask that #speaker_1
Oh ok. Anyway I don’t want to waste your time. #speaker_self
Enjoy your family dinner, I’m heading home too. See you tomorrow! =) #speaker_self
This is getting out of hand. I can’t go on like this. I am asking to be transferred to another department starting tomorrow. Or better still, quit this internship. #inner_monologue

// chapter 3 ending 2
+ [End of Chapter 3] -> END
+ [Flow on to Chapter 4]  -> ravi_3_5
// this is only for debug


=== ravi_3_5 ===
#knot:ravi_3_minigame
#ui:mcq
#game_id:8 
// replace with 9 later *** IMPORTANT
Minigame 9 // must add some text


#knot:ravi_3_5
#ui:notification
#background:ui_ravi_phonecall.jpg
VALERIE # message
#ui:scene
#background:bg_ravi_valnumber.jpg
#speaker_left_image:cha_ravi_valerie_concerned.png 
#speaker_left_name:Val (phone)
Hey #speaker_left
Hey Val. #speaker_self
How are you? #speaker_left
As good as can be. #speaker_self
It is hard, Ravi. I can see you struggling. #speaker_left
+ I'll get by, somehow[] #speaker_self
+ I can see myself struggling. [] But I can’t seem to do anything about it. #speaker_self
- I’m here for you. #speaker_left
I’m not here for me. I can’t even find myself, Val. There is a huge weight sitting on my neck. And I can’t seem to lift it. I’ve never felt this sick before. #speaker_self
I’m so sorry. I had no idea. #speaker_left
You know, when you think you saw something? But it isn’t actually there? #speaker_self
Hmm...yes? #speaker_left
That’s what every day feels like. Like it never happened. But it left a stain on me that I can’t seem to rub off. #speaker_self
That is heavy. #speaker_left
It is. I can’t seem to move myself anywhere. Work is going horrible. I don’t see my family any more. Even when I do, I don’t know what to tell them. I don’t have the heart to tell them. 
I just eat. Sambar, fish curry. Then I make up some excuse and leave. I can’t sleep at night. I’m awake, looking at my phone, scrolling through an endless stream of tik toks. 
I sleep when I start to see the sun, out of fear of not getting enough sleep, which I don’t anyway. I have to be up at 7am. I gag when I brush my teeth. Like I want to puke. But nothing comes out. #speaker_self
Ravi. I don’t know what to say..other than… #speaker_left
Other than what? #speaker_self
I’m so sorry. I feel like I added to all the pressure. #speaker_left
+  No! Val! You’re my one bright spot.[] #speaker_self
    If I’m the bright spot, then something isn’t right. #speaker_left
+  Oh Val, I haven’t been very nice to you. [] #speaker_self
    Tbh I was a bit confused. But I know that person at that stupid kopitiam isn’t you. I just didn’t know why. #speaker_left
    It’s not me. Who was that guy? Let me beat him up. #speaker_self
- I’ve been a shitty boyfriend huh? #speaker_self
This isn’t about me. #speaker_left
I care about you a lot, you know. #speaker_self
I know. I wouldn’t be with you if you didn’t. #speaker_left
Thank you #speaker_self
“Thank you?” Am I one of your “colleagues” now? So formal. #speaker_left
Eh don’t liddat. I’m just trying to be polite. #speaker_self
Can I tell you something? #speaker_left
I know you will. #speaker_self
I feel like you’re trying to be so many things you’re forgetting to be yourself. #speaker_left
Am I? #speaker_self
Coffee shop Ravi and Kopitiam Ravi are so different. #speaker_left
Haha #speaker_self
Ooh hear that sound? #speaker_left
What sound? #speaker_self
Something strange. #speaker_left
Huh? #speaker_self
Sounded like a laugh. Your laugh. Haven’t heard that in a while. #speaker_left
+ You’re so lame. [] #speaker_self
    You have no idea. #speaker_left
    Actually, I do. Nobody else has a spotify list specifically for brushing teeth. #speaker_self
+  You always know how to cheer me up [] #speaker_self
    I have a hundred more ideas to cheer you up, still unused! Like... #speaker_left
- Have you ever tried brushing your teeth to Megan Thee Stallion? #speaker_left
I can’t say I have. #speaker_self
You’ll feel shiny eeeeee! #speaker_left
Ok I’ll try tomorrow morning haha. #speaker_self
Promise you’ll do it? Or at least do something that’ll cheer you up? #speaker_left
+ [I will] Yeah. Thank you Val. #speaker_self
    Yay! That’s more like the Ravi I know and love. #speaker_left
    #speaker_left_image:cha_ravi_valerie_incredulous.png 
    Wait..what? #speaker_self
    Shit #speaker_left
    Shit? #speaker_self
    I mean. Not shit. I ... I do love you. #speaker_left
    I know. It’s just weird to hear you say it. #speaker_self
    Weird? #speaker_left
    I mean...not weird. But you, know, strange. #speaker_self
    #speaker_left_image:cha_ravi_valerie_flirt.png 
    Ok. Keep analysing the philosophies of me kinda pouring my heart out and letting me know it is unfathomable to your imagination that I could possibly love you. #speaker_left
    Um..sorry. I just didn’t expect it. #speaker_self
    It’s cool. You’ve always been a bit of a space cadet. Head always up in the clouds, Mr. Aeronaut. #speaker_left
    I think it goes without saying... #speaker_self
    When things go without saying, they just go without saying. So, say it, if you mean it. #speaker_left

+ [It's hard] It’s hard. I don’t think I can just magically switch into sunshine mode. #speaker_self
    I don’t expect you to. It’ll be a while before you get back to the Ravi I know and love. #speaker_left
    #speaker_left_image:cha_ravi_valerie_incredulous.png 
    Wait..what? #speaker_self
    Shit #speaker_left
    Shit? #speaker_self
    I mean. Not shit. I.. I do love you. #speaker_left
    #speaker_left_image:cha_ravi_valerie_flirt.png 
    I know. It’s just weird to hear you say it. #speaker_self
    Weird? #speaker_left
    I mean...not weird. But you, know, strange. #speaker_self
    I know the feeling. It’s strange for me too. #speaker_left
    Um..sorry. I just didn’t expect it. #speaker_self
    Well, it doesn’t change the fact that I, at this moment, without a doubt, love you. #speaker_left
    I think it goes without saying... #speaker_self
    When things go without saying, they just go without saying. So, say it, if you mean it. #speaker_left

- I love you. #speaker_self
Great. Now that that’s out of the way… #speaker_left
Ufff #speaker_self
What? #speaker_left
We are so cheesy #speaker_self
Extra cheese, baby. #speaker_left
#speaker_left_image:cha_ravi_valerie_happy.png 
Feels good getting things off my chest. #speaker_self
Good. You dwell in your own thoughts like that, you’re gonna have to start paying rent. #speaker_left
I’m a lousy tenant. #speaker_self
But a great engineer. And an amazing barista. God, I sound like one of those manic pixie dream girls, whose entire character arc consists of trying to get the hero back to his hero-ness. #speaker_left
But gifted with a certain charming self-awareness which makes the protagonist’s progress all the more fulfilling. #speaker_self
Oi, what makes you think you’re the protagonist in this story? I cannot be protagonist, is it? #speaker_left
You’re the wing beneath my winds! #speaker_self
It’s the other way around lah bodoh. You’re good at many things, but singing isn’t one of them. Anyway, good night. I should really go to sleep. Got an early start tomorrow. #speaker_left
Want me to sing you a lullaby? #speaker_self
I’d rather kiss a jellyfish. #speaker_left
And tomorrow, what are you doing? Apart from jellyfish-kissing. #speaker_self
Going to a UX class. I told you. #speaker_left
Ah yes. #speaker_self
What are you up to? #speaker_left
Made no plans. Might sleep in. #speaker_self
Maybe go see your family. I think it’ll be nice. #speaker_left

-> ravi_3_6


=== ravi_3_6 ===
#knot:ravi_3_6
#ui:narrator
#background:bg_ravi_bedroom.jpg
Sunday, 4.15 pm. 
I wonder how Amma is doing. And I miss Revu. I've been so busy, I haven't seen them in a while. I should probbaly go over to Aunty Pushpa's place to see them.
And maybe I should tell them about Val. 
Or maybe now is not the right time. Hmm, maybe wait a bit, eh? But I want to tell them! 
...But now is not the right time. 

#ui:scene
#background:bg_ravi_pushpa_home.jpg
#speaker_left_image:cha_ravi_mum_dress_normal.png
#speaker_left_name:Amma
#speaker_right_image:cha_ravi_revati_normal.png 
#speaker_right_name:Revati
Hi Revu! #speaker_self
Oh, the prodigal son returns! Poor Amma isn’t here to welcome her darling son back. What a travesty. #speaker_left
So drama lah you! #speaker_self
Then what? You haven’t come home in, like, three weeks?? #speaker_left
Yeah, I know. Been busy. Where’s Amma? #speaker_self
What kind of excuse is that? Amma has just gone to the store I think. She is going to ask why you haven’t cut your hair when she comes back? #speaker_left
I like it with a little curry puff on top haha #speaker_self
Oh, we have some curry puff from the mamak shop next door. Want? #speaker_left
+ [Yes]  Yes, I’m super hungry!  #speaker_self
    Sardine or potato?  #speaker_left
    Potato, you know me.  #speaker_self
    Yeah, you’re a couch potato! #speaker_left
+ [No] No, maybe later.  #speaker_self
    Creamy potato filling. Just the right blend of flavourful spices.  Buttery, flaky dough calling out for you to crunch it.    #speaker_left
    Uff. I can’t say no.  #speaker_self
    Good. There’s a paiseh piece left.  #speaker_left
- mmmm sooo good mmmmfffnomnom #speaker_self
It’s good right? #speaker_left
Yeah I should take some for Val. She’ll love it. #speaker_self
Val? Who’s Val? #speaker_left
Oh shoot, what is wrong with me...damn you curry puff for distracting me! #inner_monologue
+ [A friend] Oh, just a friend. #speaker_self
    “Just a friend?” Hmm... #speaker_left
+ [A customer] Oh, just a regular customer. #speaker_self
    “Just a regular customer?” Hmm... #speaker_left
- Really! #speaker_self
Don’t pull this innocent act on me. I’ve known you since I was born. #speaker_left
Ugh. Ok. She’s my girlfriend. #speaker_self


Waaaaaah! You also can get girlfriend ah? #speaker_left



Why does everyone keep saying that? #speaker_self


Eh, who else is saying that? Only I’m allowed to make fun of you. #speaker_left


Guys at work. Anyway... #speaker_self


Huh, guys at work? And what’s her name?? #speaker_left


Valerie. #speaker_self


Eeee so exciting! #speaker_left


Haha... #speaker_self


Show me a picture! #speaker_left


...I don’t have any. #speaker_self


Useless. Show me her IG la! #speaker_left


Oh yeah. Here you go. #speaker_self



Dude, she’s hot. #speaker_left


Yeah, dude. Thanks, I guess? #speaker_self


How did you get with her? #speaker_left


Through my charm, good looks, and oozing machismo. #speaker_self


Machismo your head lah. The only thing you’re oozing are bad jokes. She probably took pity on your terrible hairstyle and thought you needed help. #speaker_left

Something like that. #


So...are you going to tell mum? #speaker_left

+ [Yes] Yeah, think I should tell her. #speaker_self
    
    You should! #speaker_left
    
    Really? #speaker_self
    
    Yeah. Are you scared? #speaker_left
    
    Yeah. I don’t know what she’ll say. #speaker_self

+ [Hmmm, maybe not] Hmmm... I'm scared, Revu. #speaker_self
    
    Of what?! #speaker_left
    
    Of what she might say. #speaker_self

- You’re so annoying. Mum will be super happy! Just the other day, she was asking me if I knew if you were dating someone. #speaker_left


What?? #speaker_self


Yeah. We talk a loooot about you. #speaker_left


I’m just scared of, you know, what she’ll say about me dating a Chinese girl. #speaker_self


Do you like her? Is she cool? #speaker_left


Yeah #speaker_self


Then she’s cool with me. And she’s cool with Amma. #speaker_left


I don’t know man. There was a whole thing at work. #speaker_self


Ok. And that’s supposed to matter because? #speaker_left


These guys had a whole whatsapp chat about me and Val. It was embarrassing. #speaker_self


Well, I am not your colleague. And Amma is not your colleague. And if people at work are acting like it’s the middle ages, then it’s time you spoke to them about it. Coz, that’s not cool. #speaker_left


I will. #speaker_self


Oh wait, Amma is here. AMMA, RAVI HAS A GIRLFRIEND! #speaker_left



Shut up!!! #speaker_self


Who has a girlfriend? #speaker_right


Hello Amma. How was your day? I think there are some curry puffs I think. Oh no wait, I finished all of them haha. Where were you Amma? How was your day? #speaker_self

Oh god, stupid revuuuu! I’m blabbering! #inner_monologue


Oh hello kanna! I’ve never seen you this excited. You’ve lost weight. As usual. #speaker_right


Oh do we have to be a cliche? I’ve become fitter. Look at my muscles. #speaker_self

You call them muscles? More like mussels. #speaker_left


What? #speaker_self


Mussels, like the little snotty things inside a shell. Like you. #speaker_left


You think you so funny is it! #speaker_self



Funnier than you lah! #speaker_left


Not funnier than that little moustache on your lip twitch-twitch-twitch blowing in the wind. #speaker_self


Amma! #speaker_left


Ravi, stop bullying your sis. What’s this about a girlfriend? #speaker_right


Ho ho ho! #speaker_left


Uh..nothing ma. She’s just blabbering. #speaker_self


நேதஂதிகஂகு தானஂ எனஂ காது குத்திசஂசா? (Do you think my ears were pierced yesterday?)? Who is this girl? #speaker_right


Uh..just a friend ma. #speaker_self


Just a friend. And a girl... #speaker_left


Why are you acting like a kid? #speaker_self


Leave her alone. Who’s this girl? #speaker_right


Valerie...she’s really cool. She loves Indian food and... #speaker_self



...Indian guys... #speaker_left


Revati, can you shut up for a second please? #speaker_self


Ravi, stop yelling at her! #speaker_right


She’s being so annoying ma! #speaker_self


Yeah I know. Doesn’t mean you can yell at her like that. #speaker_right


Sorry.. #speaker_self


Anyway, tell me. Valerie ah? #speaker_right


Yeah amma. Just met her a couple of months ago. #speaker_self


Very cute too! #speaker_left


Is she? #speaker_right


Yeah. She looks like some indie movie actress haha #speaker_left


Oh god my sis will be the death of me. #inner_monologue


Like which Hindi movie actress? #speaker_right


No! Indie! Like independent movies. You know, super cool, super cute, super quirky. #speaker_left


She is also super friendly ma. You’ll like her. #speaker_self


Yeah that’s what I said! #speaker_left


Ok. Busy with girlfriend ah? Is that why you haven’t come over in so long? #speaker_right


It’s not like that ma. #speaker_self


Then what? Didn’t come for dinner here. No call also? #speaker_right


Just super busy with work ma. #speaker_self



Doesn’t matter. You make sure you come see us ok? Girlfriend or no girlfriend. Busy or not busy. #speaker_right


It’s just that...it’s not been easy ma. #speaker_self


Why kanna? #speaker_right


Work has been hard. And I’ve been working at the cafe too. And I have...a girlfriend now… #speaker_self


Don’t think you can talk to me, is it? #speaker_right


That’s not what I meant, ma. I did feel like I could talk to you. But I don’t want to make it hard for you with my problems also, you know? #speaker_self


Kanna, your problems are my problems. If you don’t tell me, we can’t solve it. Come sit down. #speaker_right


It’s ok ma. Can we just watch a movie or something? We can talk about this another time? #speaker_self


No. I’m going to make coffee. Think about what you want to talk about. #speaker_right

Oh where do I even begin. Val is Chinese. My colleagues are stupid. And I really have lost weight. #inner_monologue


So tell me about Valerie #speaker_right


She’s quite tall I think. Almost as tall as Ravi! #speaker_left


Revu, be quiet. Ravi, tell me. #speaker_right

+ She’s a regular at the coffee shop [] #speaker_self
    Bet you made a heart shape on her coffee #speaker_left
    Please lah. I’m not that lame. #speaker_self
    
+ She's tall[,] She’s also very kind. And clever. #speaker_self
    Kind and clever. All the things you’re not. Great. #speaker_left
    Please lah. I’m clever ok? And very kind to you, you brat.  #speaker_self
- She’s Chinese, is it? #speaker_right
Yeah  #speaker_self


Hmmm #speaker_right


Oh no. This is going to be a problem huh? I thought we could skirt over this topic. But cannot lah. #inner_monologue

I knew it. #speaker_right

Huh, how did you know? #speaker_self

You always had a thing for Chinese girls. That girl, Marie? #speaker_right

Eee no! Marie is like my sister. #speaker_self

Oh, good to know there’s one more to suffer with me. #speaker_left

Hmm, I thought there was something going on between you two. #speaker_right

Nothing ma. She’s my boss now anyway. Best boss ever! #speaker_self

Cannot find a good Indian girl? #speaker_right

I knew it. This question. It was always going to be like this. What can I say without offending her? #inner_monologue

+ [I tried] The one Indian girl I asked out said no. #speaker_self
    Oh, that’s news! #speaker_right
    Yeah, when I was, like 14. She said I was too dark. I cried the whole night. #speaker_self
    Oh, I remember that day. Your eyes were swollen. You told me it was because Liverpool lost! #speaker_right
    Yeah, that was the friend. Chandni. Stupid girl. #speaker_self
    
+ [I never looked ] I really wasn’t looking for an Indian girl. #speaker_self
    Why? Not good enough for you? #speaker_right
    
    No! I really wasn’t looking for any girl! #speaker_self
    
    Yeah, you think I was born yesterday? #speaker_right

    Amma! Really! #speaker_self

- Anyway. You know why I’m asking you, right? #speaker_right
Oh god, here it comes. Mum is going to say no. How can I break it to Val that my family is...racist? #inner_monologue


Because you want me to end up with an Indian girl? #speaker_self


No! Because I know it’s not easy. #speaker_right


Not easy? #speaker_self


Because it’s not common. And some people have a problem with it. #speaker_right


I know! These guys at work. They were making fun of me. And her. And I kinda don’t want to work there any more. #speaker_self


At your internship? #speaker_right


Yeah. They said some pretty nasty things. Like how can someone like me get a girlfriend. And a chinese girlfriend.. #speaker_self


And what did you say? #speaker_right



What can I say? The boss also doesn’t think anything is wrong. I don’t know what to do. Because if I yell at them, I’m the bad guy. If I don’t, then I’m the weakling. #speaker_self


And Valerie? What does she say? #speaker_right



She says she likes me a lot..and wants to be with me. #speaker_self


Ok. Then what’s the problem? #speaker_right


Problem is...I don’t know if I can be with her like this. Like, people passing comments. #speaker_self


Ravi, this is not you. You date a Chinese girl, or Indian girl, or Indonesian girl...I don’t care. #speaker_right


Really? #speaker_self


Yes! Did you really think I would have a problem with you dating someone? You think I’m one of your colleagues? #speaker_right


You tell him! I told him the same thing! #speaker_left



Look, kanna. We are all going through a very tough time. I don’t need to tell you this. We have to tackle things together. #speaker_right


I know..but I thought… #speaker_self


Don’t keep thinking...talk to me! #speaker_right


Sorry, I just thought I would have to deal with some things myself. I don’t want to burden you. #speaker_self

Yes, there are some things you have to deal with yourself. But don’t think you have to save the family on your own. Burden, it seems. I have been working for 30 over years. I know it’s hard. #speaker_right
Look, it’s ok to date who you like. It’s ok to expect to be respected at work. #speaker_right 
Amma, so it’s ok? #speaker_self


Ok for what? #speaker_right


For me to date Valerie? #speaker_self


Revati, can you beat up your brother for me please? #speaker_right


With pleasure! #speaker_left


Ravi, have you not been listening to me? #speaker_right


I’m listening, ma. #speaker_self


There will be many obstacles. People won’t like the way you look. Or the way you speak. Or think you smell. There are very nice people. And not so nice people. You can’t control that. If you want to live away from us, that’s ok. But you can’t lose your way like this. And think we won’t support you. #speaker_right


And these once-in-a-blue-moon visits won’t do. #speaker_left


Aiyoh sorry lah. #speaker_self


It’s ok. You’ve always been the slow one in the family. I’m sure Valerie thinks so too. #speaker_left

She actually does. #speaker_self


Bring her home one day. Anyway, this internship. It is more important now. #speaker_right


Yes, it is. #speaker_self


So, have you decided? #speaker_right


About? #speaker_self


About what to do about your situation. #speaker_right


I don’t know. There is too much to think about. #speaker_self


When you look at everything together, it can be overwhelming. #speaker_right

Yeah, But I don’t even know where to start. It’s very complicated you know...I wish Appa was here... #



Why? #speaker_right 
// angry


He’s the reason I wanted to get into aeronautics in the first place. #speaker_self


He’s also the reason I had to take care of you all, by myself. #speaker_right


That’s why ma, I wish he was here. #speaker_self


How can you say that, Ravi? #speaker_left


It’s ok. Let him talk. #speaker_right


It’s not like that, ma. Can’t I wish for something? #speaker_self


Why don’t you wish for some gold and a condo while you’re at it. And oh, curry puff over right? You can also wish for some free curry puffs? #speaker_right


Amma, why are you getting angry? #speaker_self


I’m not. Go on, keep wishing, Ravi. #speaker_right


Amma, calm down. Ravi, you’re a real idiot. #speaker_left


I don’t know what I said that is so wrong #speaker_self



Why don’t you wish for some buddhi (brain)? #speaker_right


Amma, why are you getting so upset? #speaker_self


Yeah, I am sorry. I am only here to make you some fish curry and approve your girlfriends right? #speaker_right

Why is Amma so angry? I can’t miss my pa? Maybe I shouldn’t have said what I said. But she literally just said I am supposed to speak my mind. And here I thought we were having a moment. #inner_monologue

+ [Stay calm] That’s not what I said, ma. #speaker_self
    You don’t need to say any more. #speaker_right
    You want me to speak my mind, and then you get angry when I do. #speaker_self
+ [Fire back] This is why I don’t come to the house.  #speaker_self
    Oh, big man. #speaker_right
    You want me to speak my mind, and then you get angry when I do.   #speaker_self
- I said, speak your mind. I also told you not to bring up appa. #speaker_right


Whatever. If he was here, we wouldn’t be fighting like this. #speaker_self


Po Da (Go away)! You like flying planes right? Fly away like your appa. #speaker_right


Enough! Both of you! Stop fighting! #speaker_left


Sorry kanna. I didn’t mean to raise my voice. #speaker_right


It’s ok ma. I know why you’re angry. Ravi, can you, for a second, think about what you’re saying. Your words affect people you know. #speaker_left


Works both ways. #speaker_self


I’m tired of both of you talking to each other like this. Ravi, whatever you’re going through, we’ll be there. But you got to look at what’s here and now right? #speaker_left



YOU have to be there for me? I don’t want that. I want to be there for you. #speaker_self


Why is that? #speaker_left


Because I’m your brother. #speaker_self



Works both ways. #speaker_left


I know, but I’m the man here. #speaker_self


So? #speaker_left


So I have a responsibility. #speaker_self


Why, are we not capable of taking care of each other? You think because I’m a girl that I need big brother to support me? #speaker_left
Or Amma who wiped your ass when you were a kid needs saving? And only from you? Or our father, who even after all your wishing, is missing? #speaker_left


But you’re so little. And Amma is doing everything on her own. #speaker_self




And we should stick together. #speaker_left


I know. But who can I talk to about work ma? #speaker_self


Are you forgetting I have been working for so many years. Nothing you can learn from me, is it? #speaker_right


But you worked at a department store ma. It’s not the same. #speaker_self


Ravi! #speaker_left


He’s right. It’s not the same. But I can tell you this much. Not one of the days I have worked I have expected anything less than respect from anyone. And that respect, I give back to them. Whether you’re flying planes, or selling shoes you need to be happy with yourself. #speaker_right
If you are doing something for the sake of it, or just because Appa did it, then you will always feel small. The department store paid for your food. It paid for your clothes. It paid for your school. And your university. And even when they asked me to go, I had to respect that. #speaker_right


What is wrong with me? Can’t believe I am speaking to mum like that. #inner_monologue


I’m sorry. #speaker_self


You don’t have to be sorry. #speaker_right



Still, I’m sorry. I don’t know why I said all those things. My head is constantly full of doubt, and I feel like my dream will just stay that, you know, a dream. #speaker_self


You can realise your dream. But first, realise why the dream is important for you. Don’t anyhow think it’s for us, or for appa. Is it really what you want to do? #speaker_right



Yes. It still is. #speaker_self


Then you have a few decisions to make. Starting with speaking to your boss and your colleagues. Last time whenever I had a problem I brought it up. So many managers over my time. Some good lah. Some were so rude. Whether they help or not is out of your hands. But if you don’t speak up, then no chance. #speaker_right



Yeah #speaker_self


Do you want to stay in this internship? #speaker_right

+ [Stay?] I think I want to stay. I can sort it out. Thank you ma. #speaker_self

    
    Ok. Then you know what you have to do. #speaker_right
    
    
    Yeah. I’m gonna speak to them next week. #speaker_self
    
    
    Whatever they say, stay calm. Don’t get angry.Remember,ஆறுவது சினம் (Anger should be calmed) Then you lose your ground. #speaker_right
    
    
    I will try ma. Thank you. #speaker_self
    
    
    You decide what’s best for you. Be Ravi. Not a scaredy-poke. #speaker_right

+ [Quit?] I think I want to quit ma. I don’t want to stay in a place like that. #speaker_self

    Ok. Then can you do another internship? #speaker_right
    
    
    I would have to look for one. #speaker_self
    
    
    Would it be a problem? #speaker_right
    
    
    Think it will be a bit hard because it’s a bit hard to get an internship outside the window. But I will try. #speaker_self
    
    
    
    You decide what’s best for you. Be Ravi. Not a scaredy-poke. #speaker_right
-Amma didn’t raise a scaredy-poke. #speaker_left
No she didn’t. #speaker_self
Oh no she didn’t. #speaker_right

FINAL EMAIL SEQUENCE GOES HERE


-> ravi_3_reflection


=== ravi_3_reflection ===
#knot:ravi_3_reflection
#ui:chapter_reflection
#reflection_id:9
Reflection 9





-> END
