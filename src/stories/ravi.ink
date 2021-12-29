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
Ravi Kannaswamy #title
VAR chapter_id = 1
~ chapter_id = 1
Hey there. I’m Ravi. I’m 24. Aviation engineer.  
Well, ASPIRING aviation engineer, anyway. I’m still in uni. 
One more year to go until I join the working world! I want to be able to support my family soon.
Speaking of family, it’s been just Amma, Revati and I motoring along.
As for Appa... Appa is no longer in the family.
He used to be in the airline industry too. He’s part of the reason I wanted to become an aviation engineer in the first place. 
He used to sneak Revati and I into the hangars on the weekends, just to look at those airplanes he’d be working on. 
Just looking at those planes, and imagining them take off to the skies – it filled my heart with a great sense of wonder.
And then...one day, it happened. 
It was just another regular day of work. Appa left early in the morning... and didn't come back.
He left us that day and he’s been uncontactable since. We called and called, but he never picked up. 
Sometimes I think he wanted to be like the airplanes he worked on, free to roam the skies, to go anywhere they pleased. But I might never find out.
Sounds dramatic, but that's my story.
Since then, Amma, Revati and I have had to fend for ourselves. 
It’s not been easy, especially for Amma. She works a 12-hour shift everyday as a sales assistant at the department store. 
Revati is doing her A levels, and she’s done part-time jobs too. 
My dream is to make it a little easier for them. If I can fulfill mine, I would be helping theirs too.  
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
Oh! Maybe I am a little bit hungry after all. Could I have some curry please? #speaker_self
Aha! I knew it. I don’t think you’ve ever said no to my fish curry. Not once in 24 years. #speaker_left
Hmm...I think you’re probably right! #speaker_self
Amma always cooks fish curries for important occasions. Revati and I had it for almost every birthday we had growing up. #inner_monologue
I remember having it at parties, family functions – sometimes, we’d cook some for the nosy neighbours as well. I don’t think we’ve ever celebrated anything without it. #inner_monologue
Amma also cooked fish curry when there was bad news. Like the day Appa left the family. We sat around, crying over fish curry. #inner_monologue
It’s definitely Amma’s signature dish, to say the least. #inner_monologue
Anyway, go shower, you look so sweaty. Then you can eat. I’ll reheat the curry for you. #speaker_left
+ Hmm ok. See you in 10 minutes.[] #speaker_self
+ It's ok ma, let's eat while it's hot! []  #speaker_self
#background:bg_ravi_home.jpg
- As always, it smells amazing! I feel like I could eat 10 bowls all by myself. Did you do anything different this time? #speaker_self
Ah, so you found my secret ingredient! I put in some garam masala that Pushpa Aunty gave to us when we went over last week. #speaker_left
It’s very fragrant. I think she made it herself. You know how she is. #speaker_left
Oh nice. Pushpa Aunty always gives us the best things! Usually food. #speaker_self
Last time we visited her, the sambal she made… also power! I think it’s the best sambal I’ve ever had.  #speaker_self
She should really look into selling it. She could probably run a chain restaurant selling nothing but sambal.  #speaker_self
I must have dreamt of her sambal so many times… #speaker_self
Yeah... she’s really good at cooking, isn’t she. #speaker_left
... #speaker_left
Ravi, could you wait for just a minute? We need to talk about something. This is important. #speaker_left

+ [Keep eating] Oh my god, this is so good! How in the world did Amma Pushpa Aunty make this?  #speaker_self
    VAR ravi_1_motherempathy = 0
    ~ ravi_1_motherempathy = 0
    The way it blends with the richness of the coconut milk and the kick of the curry leaves. You can really taste the - #speaker_self
    ...Ravi. Listen to me. #speaker_left
    ...Sorry, please continue. #speaker_self
    Yikes, how embarrassing...I totally lost myself for a sec there. #inner_monologue
    What do we have to talk about? #speaker_self
    So...today at the shop.. #speaker_left
    What happened? Oh, sorry Amma, could you pass me the vadai please? #speaker_self
    ...Here. But let me finish. #speaker_left
    Now I don’t know why I ate that very average mee hoon in uni. I got so hungry waiting for class to get over.  #speaker_self
    I didn’t have lunch, so my stomach was growling. My classmates really overhyped the mee hoon. Should have texted you to ask what was for dinner- #speaker_self
    Wait! I’m getting distracted by the food again. Curse you, Amma, and your culinary magic! #inner_monologue
    I really have to stop eating. I’ll put the bowl down for now. #inner_monologue
    Oh wait. I remember why I didn’t text you. Today is Wednesday, right? #speaker_self
    
+ [Stop and listen] Amma’s looking very quiet. This can’t be good… #inner_monologue
    ~ ravi_1_motherempathy += 1
    Amma’s looking very quiet. This can’t be good… #inner_monologue
    Sure...what do we have to talk about? #inner_monologue
    Something feels off about all this … I can’t help but feel uneasy. #inner_monologue
    ... #speaker_left
    Wait a minute, amma, weren’t you supposed to be working today? #speaker_self
- Yes. #speaker_left
Isn’t today supposed to be a late shift for you? How come you’re back home early? #speaker_self
That’s what I wanted to talk about... #speaker_left
#speaker_left_image:cha_ravi_mum_worried.png
So, today at the shop...they told me that they had to let me go. #speaker_left
What? #speaker_self
Yeah. The manager told me this morning. #speaker_left
How did this happen? I thought you were doing well. You’ve never missed a day of work. #speaker_self
Well, it didn’t matter. They asked me to hand in my card anyway. #speaker_left
I asked why I had to be let go. They told me that it was tough lah. #speaker_left
Not enough people coming into the stores these days. And even when people come in, they don’t like us to approach them when they’re shopping. #speaker_left
They’d rather just shop on their own, in quiet. #speaker_left
But still... I thought they would give us some time you know? At least let me finish the month… #speaker_left
Amma looks really sad. I really don’t know what to do to make her feel better, or even what to say...what should I do? #inner_monologue

+ [Comfort her] Oh ma. I am so sorry. I really am. #speaker_self
    ~ ravi_1_motherempathy += 1
    Thank you, Ravi. I know it’s hard for you. It’s hard for me, too. #speaker_left
    I haven’t seen ma so sad in a long time. I don’t know what to say to her.  #inner_monologue

+ [Question her] This is so sudden. That’s it? After so many years? #speaker_self
    That’s how it is...I thought they would have let me stay a bit longer.  #speaker_left
    I’ve been there for half my life. I’ve been loyal. But all that didn’t help in the end. #speaker_left
    It’s just not fair. Amma worked so hard and this is how they reward her?  #inner_monologue

- Anyway...I think I saw this coming. #speaker_left
What do you mean? #speaker_self
After all, these days, work is hard. Business isn’t booming. There’s no commission, because there’s no sales. #speaker_left
And everyone’s buying everything online nowadays. There are so many apps to choose from.  #speaker_left
You’ve seen all the annoying ads, right? #speaker_left
Even I can’t get some of those songs out of my head. The ads work. #speaker_left
Youngsters like you also like the internet more. You also buy everything online right?  #speaker_left
Hmm...yeah... #speaker_self
So that’s why lah. #speaker_left
I know Amma is trying to be tough right now...even if sales were not as good as before, it doesn’t mean she should just be fired!  #inner_monologue
It’s not her fault...I can see the tears, welling in her eyes. It’s so unfair. #inner_monologue

+ {ravi_1_motherempathy >= 1} [Comfort her] I hope you’re ok ma. #speaker_self
    ~ ravi_1_motherempathy += 1
    I’m ok kanna #speaker_left
    ... #speaker_left
    But you’re crying. #speaker_self
    What do you want me to do? I can’t go back there and beg for my job back. #speaker_left
    It’s just… like I said, I’ve worked there for so long. It’s all I know. #speaker_left
    

+ [Question her]  Have you told Revati? #speaker_self
    Yeah, I did. She is in her room. #speaker_left
    What did she say? #speaker_self
    What else? Same thing. She’s upset. #speaker_left
    ...  #speaker_left
    Why wouldn’t she be? Like I said, I’ve worked there for so long.  #speaker_left
    Ever since she was in primary school, I’ve been a sales assistant. And now, all of that suddenly coming to an end.  #speaker_left
- I really thought I’d be able to work there until Revati finishes uni. #speaker_left

I tried my best to be a good employee. I made sure to go early every day, and to be the last one to leave. #speaker_left
I cleaned the shop during breaks, I never took a sick day. #speaker_left
I thought that I could stay there, and that everything would be fine. #speaker_left
But that’s no longer true. #speaker_left
#speaker_left_image:cha_ravi_mum_worried.png
But it’s ok. What’s done is done. We will have to move on. And also, more importantly, we will have to move out of here. #speaker_left
Move out? Why? #speaker_self
I didn’t tell you or Revati about this, but...kanna, we are already two months late for rent.  #speaker_left
We’ve been barely paying it off before then. I don’t earn a lot of money, and I don’t have much savings to spare. I barely have enough to pay it off. #speaker_left
This place was too big anyway. And I didn’t want to affect Revati. You know she’s studying hard for her A-Levels.  #speaker_left
And for your uni fees next year...I don’t want to touch that money. I can’t afford to. #speaker_left
Two months late? Why didn’t you tell me or Revati? We could have helped. You don’t tell us how much the rent is.  #inner_monologue
We didn’t even know what you’ve been dealing with all this time. We could have helped before this. We could have worked part-time, we could have made the move sooner… #inner_monologue
And my uni money? I’m not studying just for myself you know? Is it a lot of money?  #inner_monologue
I need to earn and save for this family. I thought I’m doing good for us.  #inner_monologue
You make it sound like such a problem for us. It’s almost like my uni fees are the reason we’re about to be forced out of a home!  #inner_monologue
Am I a burden to you?  #inner_monologue
 
+ [Comfort her] Ok, Ravi, deep breaths. Calm down. Amma is emotional right now.  #inner_monologue
    ~ ravi_1_motherempathy += 1
    She can’t help it, and you can’t blame her for it. You know she didn’t mean anything bad. #inner_monologue
    It’s time to be the man of the house. You have to step up, Ravi. #inner_monologue
    Don’t worry about me. We can figure something out. Maybe we don’t have to move. #speaker_self
    I don’t have a choice! My job is to worry about you. #speaker_left
    And I don’t think we can afford to stay. I need to find a new job.  #speaker_left
    And the landlord has already been very accommodating.  #speaker_left
    He’s already waited 2 months for his rent. I don’t think he’ll be willing to wait for one more. We must move out. #speaker_left
    But you love this place. #speaker_self
    It’s so near to the park, and the neighbours are so friendly...we’ve lived here for so long, Amma.  #speaker_self
    Ever since Appa left. #inner_monologue
    Ravi, we have no choice. We have to move on. #speaker_left

+ [Question her]  I need to find out why she kept the rent a secret from us. #inner_monologue
    // ~ ravi_1_motherempathy -= 1
    More importantly, I need to know why she mentioned my uni fees like that. She didn’t mention Revati’s school fees!  #inner_monologue
    Are my uni fees that much of a burden? #inner_monologue
    Oh. We’re two months late? Why didn’t you tell us? #speaker_self
    You know I can’t. I wanted you and Revati to focus on your studies. I couldn’t have you all worrying about me, or finding another job. #speaker_left
    And it’s not like we’re completely broke! I still have enough saved for your uni fees- #speaker_left
    So it’s my fault, right? You keep talking about the uni fees, you make it sound like it’s my fault we’re moving out! #speaker_self
    Is it because I’m the one taking up all the money? Because of my studies? #speaker_self
    When did I say that? #speaker_left
    You don’t have to say anything. #speaker_self
    ...Ravi, it’s not your fault. I chose to save for your uni fees, because I want you and Revati to have a bright future. Brighter than mine. #speaker_left
    But to reach that future, we have to deal with the problem now. #speaker_self
    We have no choice. We have to move on. #speaker_self

- Ok... I get it. Where are we moving to? How much will it cost?  #speaker_self
#speaker_left_image:cha_ravi_mum_normal.png
I have some good news. It won’t cost anything. #speaker_left
What do you mean? #speaker_self
We’re moving to Pushpa aunty’s house. She has a spare room, now that Kamala has moved out with her husband.  #speaker_left
She also needs help around the house. When I called her to ask for help, she was so excited to let us stay with her. #speaker_left
Taking care of the house on your own is not easy. Poor thing. She must also be a bit lonely nowadays.  #speaker_left
I think it will be nice to be there and help her out too. Give her some company. #speaker_left
And ... on the bright side, you can have all the power sambal you like. I’m sure she won’t mind cooking for everyone again. #speaker_left
Why did this have to happen now? Why did this have to happen at all? Amma is saying this just so we don’t feel too bad.  #inner_monologue
It’s good that it’s going to save us some money. Still...we have lived here for so long, it feels strange to get uprooted all of a sudden. #inner_monologue
Anyway, I like Pushpa Aunty, but I know I can’t study there - three of us in that small house - it’s going to be very noisy!  #inner_monologue
As it is, my course is extremely tough. This is not making it any easier. #inner_monologue



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
#speaker_left_image:cha_ravi_mum_normal.png
#speaker_left_name:Amma
#speaker_right_image:cha_ravi_revati_normal.png 
#speaker_right_name:Revati
Can you help me bring my suitcase up? Think it’s still downstairs. It’s the red one. #speaker_left
The Samsonite? #speaker_self
...I don’t know why I asked that. It’s not like anyone else is moving in today. #inner_monologue
Yeah, that one. Can you manage? It’s a little heavy. #speaker_left
Why can’t the movers bring it up? #speaker_self
Because you know how much they charge for every staircase? $20! #speaker_left
*sigh* Ok I’ll be your cheap labour. #speaker_self
Even until today, my mom talks to me as if I were a child. Do this. Do that. #inner_monologue
Then also doubts if I can manage this, manage that. It’s like she doesn’t trust me enough to do things on my own. #inner_monologue
Like, am I supposed to do everything? Or am I just useless? #inner_monologue
Oh god, she was right, this IS heavy! #inner_monologu
Revati, can you come down to help? #speaker_self
Wait, I’m unpacking! There’s so much to do. #speaker_right
...Please? #speaker_self
...fine. How heavy could one suitcase be? #speaker_right
(picks up suitcase) Oh god, Amma was right, this IS heavy! #speaker_right
I guess that’s how you can tell we’re siblings. #inner_monologue
#ui:narrator
#background:bg_ravi_pushpa_home.jpg
10 minutes later.
#ui:scene
#background:bg_ravi_pushpa_home.jpg
#speaker_left_image:cha_ravi_mum_normal.png
#speaker_left_name:Amma
#speaker_right_image:cha_ravi_revati_normal.png 
#speaker_right_name:Revati
That took a while! #speaker_left
Yah…why were the suitcases so heavy? What did you put in them? Rocks? #speaker_self
Don’t be rude, kanna! Maybe we just had more things that we thought we did. Now’s a good time to sell some extra clothes, jewellery… #speaker_left
There she goes, worrying about money again. I wish she had told us about all our money woes sooner. We could have worked something out. #inner_monologue
So, let’s see… Revati and I will sleep in the extra room. We can share Kamala’s old bed, for now.  #speaker_left
For washing up, we can use the small toilet, the one behind, near the kitchen.... #speaker_left
(stops her abruptly) Wait a minute, what about me? Where should I sleep? #speaker_self
For tonight, you can sleep on the couch. #speaker_left
Wait, on the couch? #speaker_self
There just isn’t enough space in the extra room. I told you, there’s just Kamala’s bed. Revati and I will need to share it. Unless you want to sleep with me and Revati?  #speaker_left
Don’t know if the bed has space for the 3 of us though...and I don’t think Revati would want to share a bed with 2 other people either. It was already difficult getting her to share it with me. #speaker_left
...Maybe not. #speaker_self
There’s some room on the floor, but not enough to lay down a mattress. The couch is better for your back. Better than the floor, anyway. #speaker_left
Other than that, I still have an entire list of stuff you need to do, starting with clearing out the storage room.  #speaker_left
We need some space to put all the suitcases. You can fold all the old cardboard boxes, and stack them up there. #speaker_left
Ok. I still need to study though. Maybe it’s because she was usually busy at work, but she needs to understand that my life is mine too! I need my study time, I can’t just be free labour forever. #inner_monologue
I have an early class tomorrow and Prof. Tan’s course is no joke. He already yelled at me for being just 2 minutes late once! I haven’t even prepared for class yet... #inner_monologue
Not to mention, this place is so far from uni. it’s going to take, like, an extra hour to get there. #inner_monologue
Maybe I need to take a stand. #inner_monologue

+ [Comply] I guess maybe I can do it tomorrow, if I come home from uni fast enough. #inner_monologue
    I’ll have to cancel my dinner plans. This is more important. #inner_monologue
    ~ ravi_1_motherempathy += 1
    Ok sure. I’ll do it tomorrow, after school. #speaker_self
    I’m so tired from moving all those suitcases. #speaker_self
    You can’t...we need to clear up everything. We can’t leave it lying around like this. #speaker_left
    ...ok, fine. I’ll do it, but not for too long. What do I need to do? #speaker_self
    Just fold the cardboard boxss first. Then I’ll tell you. #speaker_left
    There’s a lot more to be done. #speaker_left
    Ok… #speaker_self
    Sigh. #inner_monologue
    Good job folding all those boxes! That was fast. You don’t seem that tired. #speaker_left
    Then I must be a really good actor then. Why does Pushpa Aunty have so many boxes??? #inner_monologue
    I’ll pass you a blanket you can use when you sleep, after you’re done. Next, we have to- #speaker_left
    Amma, I have an early class tomorrow... #speaker_self
    You know the prof, the strict one I told you about?  #speaker_self
    He’ll kill me if I go to his class late, or worse, fall asleep... #speaker_self
    And my class is at 9. It’s so far away, I’ll need to leave at 7. At least Revati is near to her school. #speaker_self
    #speaker_right_image:cha_ravi_revati_concerned.png 
    Oh. In that case, your sister and I will move everything. But you’ll have to help again tomorrow, ok? #speaker_left
    #speaker_right_image:cha_ravi_revati_normal.png 
    Okay, I will. #speaker_self

+ [Protest] I can’t keep doing this! It’s already so late.  #inner_monologue
    If this goes on, who knows when her “list of stuff” ends? I need to stop now, by any means necessary. #inner_monologue
    Why ma! #speaker_self
    Why what? #speaker_left
    I’m so tired. I just want to crash! #speaker_self
    Yeah you can. After you help clear up everything. We can’t leave it lying around like this. #speaker_left
    Amma, I have an early class tomorrow! #speaker_self
    So you want your sister and I to move everything? On our own? #speaker_left
    I’ve already moved so much! #speaker_self
    And my class is at 9. It’s so far away, I’ll need to leave at 7. #speaker_self
    The prof will kill me if I go to his class late. Or worse, fall asleep during class. #speaker_self
    At least Revati is near to her school. #speaker_self
    #speaker_right_image:cha_ravi_revati_concerned.png 
    Can you do just a bit? #speaker_left
    Amma, I wish I could, but I’m really tired. I still haven’t prepared for tomorrow’s class yet. It’s already really late. #speaker_self
- Anna (brother), why don’t you help a bit? #speaker_right
Just whatever Amma needs for the storage room. I will do the rest. #speaker_right
Then we can all go to sleep. We can finish this quickly. #speaker_right
Ok. But, I think I’ll go stay in Lukman’s house tonight. His place is nearer to campus.  #speaker_self
Much easier to make it to class tomorrow. I’m sure he has an extra bed to spare me. #speaker_self
#speaker_right_image:cha_ravi_revati_normal.png 
Besides, I don’t think I can get any rest on this couch. Either my feet are dangling out, or I have to curl up like an armadillo. #speaker_self


{ravi_1_motherempathy >= 3 : 
    -> chapter_1_ending_1
    else 
    -> chapter_1_ending_2
}

=== chapter_1_ending_1 ===
#knot:chapter_1_ending_1
#ui:narrator
#background:bg_ravi_pushpa_home.jpg
So much happened in those few days. 
VAR chapter_1_ending = 1
~ chapter_1_ending = 1
Moving out from a place we lived nearly all our lives, staying with Pushpa Aunty, and learning so much about Amma. 
I tried my best to be there for her, and to comfort her.
Moving so many boxes, everything that we’ve ever owned, into a small room. 
And all of that, on top of uni. I’m so tired. 
I’m thankful we managed to stay with Pushpa Aunty – we can save money this way, for a while. 
But I think I’ll just ask Lukman to help me with the readings, and I’ll just sleep as soon as I can. 
I’m so tired, I could fall asleep just sitting...here...ZZZZZ… 

-> ravi_1_reflection

=== chapter_1_ending_2 ===
#knot:chapter_1_ending_2
#ui:narrator
#background:bg_ravi_pushpa_home.jpg
So much happened in those few days. 
~ chapter_1_ending = 2
Moving out from a place we lived nearly all our lives, staying with Pushpa Aunty, and learning so much about Amma. 
Moving so many boxes, everything that we’ve ever owned, into a small room. 
And all of that, on top of uni. I’m so tired. 
I don't know why this had to happen to us, again. Why am I so unlucky? 
Why can't my life just be a little easier?
I guess I should be grateful that at least we managed to stay with Pushpa Aunty – we can save money this way, for a while. 
But I think I’ll just ask Lukman to help me with the readings, and I’ll just sleep as soon as I can. 
I’m so tired, I could fall asleep just sitting...here...ZZZZZ… 

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
#background:bg_ravi_pushpa_home.jpg

It’s been a few weeks since we’ve made the move. I’d had so much delicious food, I think I’ve gained weight. How am I going to pass IPPT?
My schedule nowadays is a bit boring. I come here after class, get a scrumptious dinner (yay for Pushpa aunty!), do my schoolwork, then head over to Lukman’s to rest. It was going well, for a while.
 ButI can’t do this forever though. I can’t go to Lukman’s every day. He’s probably getting sick of my face already. The first time was fun, kind of like a sleepover. 
 The second time was like we were roommates. The third, fourth, fifth times...he’s probably expecting me to pay rent or something. 
 His parents must be really annoyed with me too. They don’t say it, but I can feel their eyes in the back of my skull whenever I go over. I mean, I even hang around on the weekends. It must be awkward for them too. I can’t keep being a burden to Lukman either.
 I need to find some other place to stay. Maybe stay on my own if I can. That might be nice, for a change. I’ve always shared a room with Revati, anyway.
 So that brings me to what I’m doing nowadays. I’ve been scouring so many websites, trying to find a good place to rent. PropertyMagic, HouseHero, Room4Rent – you name it, I’ve tried it. But I can’t afford to rent most places. Not too many options for my budget.

~ chapter_id = 2
CHAPTER {chapter_id} #title
Room For Improvement  #title


-> ravi_2_1_narration 


=== ravi_2_1_narration ===
#knot:ravi_2_1_narration
#ui:narrator
#background:bg_ravi_rentals1.jpg
Hmm...this listing sounds good. one bedroom apartment, 11th floor, 5 minutes away from university? This must be a dream! **** $2222 per month?? This must be a nightmare! Who can afford that? Maybe if I just sort by “price”… ****
#background:bg_ravi_rentals2.jpg
 Oh, this room sounds about right. Seems promising. It’s a small room – maybe other people are staying there too? But it’s cheap, and relatively close to uni. 
 Maybe I can make friends with whoever’s staying there. Or better yet, I might be able to talk them down to my price. They should take some pity on me. I’m just a student.
 Let me see if he’s offering any other rooms ... oh wow, he has two! Maybe I can rent the other room instead – it’s a bit bigger though, so it’s probably more expensive... I’ll see how it goes.
#background:bg_ravi_rentals3.jpg 
 Who do I talk to? I see an agent’s name here. “Agent James” huh? Sounds like a reliable guy. Actually, no. Sounds like James Bond.
 Oh, his phone number is here. Maybe I should drop him a text. Well, here goes nothing.


-> ravi_2_2


=== ravi_2_1 ===
#knot:ravi_2_1
#ui:whatsapp
#background:whatsapp.png
#chat_group_title:Property Agent James
#chat_group_image:ico_ravi_james.png
#speaker_1_name:James
Hi, is this James? #speaker_self

I saw the listing on PleaseLeaseThese. The one for two different rooms? #speaker_self

I would like to rent a room, if that’s possible! #speaker_self

Hi, yes! This is James. Pleasure to “e-meet” you. #speaker_1

Yes, I think I know which rooms you’re referring to. The ones rented out by Mr Lim? #speaker_1

Good news. The listings are currently available. #speaker_1

Ah...nobody I know says “e-meet”. This man must be a professional agent after all! This looks good. Maybe I’ll be able to get a room faster than I thought. #inner_monologue

Great! Yes, I am interested in the rooms. #speaker_self


Which room are you interested in? #speaker_1

The big room, or the small room? #speaker_1


The smaller room please. #speaker_self

The one for $500 per month. #speaker_self


Ok. The 4 bedroom apartment in Clementi? #speaker_1

It’s shared housing you know right? The other rooms are rented out already. #speaker_1

The landlord is staying there also. #speaker_1

Yep! That’s fine with me. #speaker_self

Ok, how many people are renting? #speaker_1

The landlord has a strict policy and each room can only be rented out to one tenant at a time. #speaker_1


Yeah, I understand. #speaker_self

It’ll just be me renting the room. Don’t worry about it. #speaker_self

Will you be expecting any frequent visitors? #speaker_1

Girlfriend, family etc? #speaker_1


No...no girlfriend. #speaker_1

Don’t think my family will visit either. #speaker_1

Wow… way to rub it in. Was that really necessary? But ok, I can work on that next time. The room is more important. #inner_monologue


Ok, no girlfriend right? Great. #speaker_1

Great, he says. Sheeeeesh! #inner_monologue

To rent the room, there’s a process we need to go through. #speaker_1

Firstly, can I have your profile? #speaker_1


Profile? Sorry, what do you mean? #speaker_self

What kind of profile? You’re setting up a dating profile for me ah? #inner_monologue


What are you doing? Working here? #speaker_1


Oh. That’s what you meant by profile. #speaker_self

Nah, I’m just a student. Still studying in uni. #speaker_self


Ok. What’s your background? #speaker_1


I’m sorry. Background? #speaker_self

I think if I say my background is currently a blank wall he’ll just block me. #inner_monologue


Your details lah. #speaker_1

Name, IC all that. #speaker_1


Just fill up for me. #speaker_1

Wait ah, let me send. #speaker_1



Name: #speaker_1
Pax: #speaker_1
Occupation: #speaker_1
Ethnicity: #speaker_1
Budget: #speaker_1
Years of lease: #speaker_1
Expected shift in date: #speaker_1



I just need the small room for $500. Is it available? #speaker_self


Yes, available. #speaker_1

But I need to know your details first. We need to follow the procedure. #speaker_1



Ok, sure. Give me a second. #speaker_self





Done, here you go. #speaker_self



Name: Ravi Kannasamy #speaker_self
Pax: 1 #speaker_self
Occupation: Student #speaker_self
Ethnicity: Indian #speaker_self
Budget: $500 #speaker_self
Years of lease: 1 #speaker_self
Expected shift in date: Aug 20 #speaker_self


Ok, great. #speaker_1
I check with landlord first. #


Ok, thank you! #speaker_self




Hi Ravi. #speaker_1

That was fast. #speaker_self

So, what did he say? #


Sorry, landlord says cannot. #

But don’t worry. I have other room for you. You want or not? #

Other location. You want? Yishun got one room. Jurong also got. #


Sorry, why cannot? #speaker_self

Was the room already taken? #

I can still take the bigger room. #

Sorry, no. #speaker_1

The room isn’t taken yet. #

Huh? #speaker_self

Then what? #


Landlord say this room not suitable for Indian, sorry. #speaker_1

WHAT? How can he say that? It doesn’t make any sense. What do you mean the room not suitable for Indians? #inner_monologue

-> END

=== ravi_2_2 ===
#knot:ravi_2_2
#ui:email
#background:email.png
#emailfrom:Ravi <ravi@email.com>
#emailto:Univ Housing <admin@univ.edu.sg>
#emailsubject: Query about dorm room
To whom it may concern, #email

I’m writing to inquire about the possibility of housing in the university dorm. My student number is A0155007R. #email
I understand that I might be a little late, but I need to move out immediately due to family matters. It would be great if I could stay on campus, if possible.  #email
Do let me know if there are any options available. Any room is fine. Please let me know if you need more details.#email
Thank you, #email
Ravi #email
.
-> ravi_2_2a

=== ravi_2_2a ===
#knot:ravi_2_2a
#ui:email
#background:email.png
#emailfrom:Univ Housing <admin@univ.edu.sg>
#emailto:Ravi <ravi@email.com>
#emailsubject: Query about dorm room
#replyemaildate:On Wed 6 Oct 2021, Ravi <ravi@email.com> wrote:  
#replyemailtext: To whom it may concern /n I’m writing to inquire about the possibility of housing in the university dorm. My student number is A0155007R. /n I understand that I might be a little late, but I need to move out immediately due to family matters. It would be great if I could stay on campus, if possible. /n Do let me know if there are any options available. Any room is fine. Please let me know if you need more details.  /n Thank you, /n Ravi 
Hello Ravi, #email
I’m afraid you are a little late. Housing occupancy has been settled before the beginning of the semester. You would need to wait for the next semester to get a room. #email
You mentioned that you had to move due to family matters. While we may not be currently able to offer you a room, the school is concerned for the wellbeing of its students. Is there anything else we could do to help? #email

Regards, #email
Rebecca #email
.
-> ravi_2_2b

=== ravi_2_2b ===
#knot:ravi_2_2b
#ui:emailinbox

#newemailfrom: Rebecca
#newemailprofileicon:ico_nadia_nadia.png
#newemailsubject:Enquiry on Dorm Housing
#newemailpreview: Hello Ravi, I'm afraid you are a little late...

-> ravi_2_2a

-> END
