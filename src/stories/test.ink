VAR nadid_mood = 5
VAR gavin_mood = 5


-> nadid_chapter6

=== nadid_chapter6 ===
#knot:nadid_chapter6
#ui:school
#background:school.jpg
#leftCharacter:Nadia_happy.jpg
#rightCharacter:
Family Matters # Title

Introduction: I didn't really like Gavin at first. He was always acting silly, never taking things seriously, and was a bit sloppy in his appearance. It was only when we both were assigned to a class project that I got to know the real him. And when I did, he surprised me. He was really earnest and genuine beneath that exterior, and he was a really sweet person. I never expected to like someone like Gavin, but by the end of the project, I had a full blown crush on him. And after that last class, when he told me he liked me... well, I felt like my heart was going to explode. We have been dating for about 2 years now, but in secret from most people. Gavin is a Chinese Christian, and I'm a Malay Muslim.
-> found_out
    
== found_out ==
#knot:found_out
#ui:school
#background:school.jpg
#leftCharacter:Nadia_happy.jpg
#rightCharacter:Gavin_happy.jpg
    Initially, we were really careful. I made sure that we never held hands in public, and nobody talked about us in school because we kept our distance. After a while, we got careless. Gavin held my hand one day at the bus stop just outside my house. It was just for a few seconds, but that was enough. My pa was across the road at the coffee shop, and he saw. When I got home, he was furious. Pa yelled at me and said that I could never see Gavin again. He made all sorts of threats. He yelled again. I cried and ran into my room to lock the door. I had to talk to Gavin.
-> survey

== survey ==
#knot:survey
#ui:survey
    This is a test survey
-> whatsapp
    

== whatsapp ==
#knot:whatsapp
#ui:whatsapp
#background:whatsapp.png
#chatgroupTitle:Gavin
#chatgroupImage:Gavin_profile.jpg
    
   Gav are you there? I really need to talk. # Speaker_self`
   Bae, what's up? I just got home and was going to watch some Netflix. You ok? # Speaker1
   // Gaurav - actually i want to make this an emoji instead of text
   * (direct) My pa saw us holding hands[] and he's super pissed. he hasn't stopped yelling for an hour. # Speaker_self 
   ~ nadid_mood = nadid_mood - 1
   * i just need to escape my pa for a while[.] can you just chat with me? # Speaker_self
   - dee you know i'm always here for you. this sounds bad... what is he saying? # Speaker1
   he was so angry. he kept yelling about you not being a good person and then stormed out of the house screaming. like i know what it's really about. he just hates that i'm not dating a muslim boy. # Speaker_self
   even ma started crying. she said some shit about not raising me properly to have values and started praying that i will change like wtf i am happy with who i am and who i am with # Speaker_self
   * {direct} i'm angry [] more than anything. what the hell. i'm 17. i'm not some stupid kid who doesn't know what i want.  # Speaker_self
   ~ nadid_mood = nadid_mood - 1
   * i'm really sad [.] why can't they be happy for me? why must holding hands turn into such a bloody fight # Speaker_self
   ~ gavin_mood = gavin_mood - 1
   - I'm so sorry dee. don't go back out there unless he comes back in a calm state. Would it help if I came down to talk to them? # Speaker1
   // gaurav: actually i want the bottom option only to show if she was rude to him earlier in the game
   Oh gav you're such an angel for offering but you're an idiot.... pa will get even more angry if he sees you in person. i don't know what to do. # Speaker_self
   oh shit pa's back. he isn't yelling though. just talking very loudly to ma about you. # Speaker_self
   oh wtf wtf he's using our computer outside to check my instagram which is probably still logged in oh no oh shit  # Speaker_self
   oh shit shit shit. i think they found you. I can hear him saying your name. I can't believe he matched your insta profile to you after seeing you for just a few seconds.  # Speaker_self
   oh no dee, my profile is locked but i have my church role listed in my profile description. oh shit i'm so sorry i'm trying to change it now # Speaker1
   too late gav. # Speaker_self
   * pa is ranting about your religion[], saying "this boy will never convert for me and that he just wants to do what all teenage boys do and he has no morals" like how tf does he get that from an insta profile # Speaker_self
   ~ gavin_mood = gavin_mood - 1
   * pa is getting really upset. i can't tell if he's angry or sad now though []... his voice sounds different # Speaker_self
   // gaurav: if nadia chooses this option, gavin's morale reduces
   - dee i really can come down right now and talk to him. i'm not scared. i want him to know that i really care about you # Speaker1
   i think that will make things worse baby. # Speaker_self
   // gaurav: i would like thisthe above part to be by whatsapp but the section below is inner monologue
   it sounds like they have gone to sleep already. man what a nightmare. i don't know what tomorrow will be like in the morning. sigh why must life be so difficult for us # Speaker_self
   i know dee, i wish people would just be happy for us. even in school i heard amelia say shit about us. they don't even know what we're like, but they all want to talk about whether we will last or not # Speaker1
   * amelia?! why is she so kaypoh? [] why is our relationship any of her business and what is she saying about us? # Speaker_self
   ~ nadid_mood = nadid_mood - 1
   * sigh unwanted advice? [] yeah i know a few people who think they are trying to help but just give shitty advice like we should break up now before things get harder later. # Speaker_self
   - sigh # Speaker1
   you know how much i care about you dee. i wish it was just you and me alone on an island somewhere. none of this shit from other people about what race you are or religion you are. # Speaker1
   gav are we being too idealistic? is this really how life is going to be for us? always being judged by others and always fighting with my parents? # Speaker_self
   are they right? I mean, pa's cousin married a french guy and he converted and all, but after their first kid they just had so many differences that they ended up divorced. i guess the whole family is just against marrying non-Muslims because of that one case # Speaker_self
   oh man, sorry about your dad's cousin. was it because of religious differences? # Speaker1
   actually nobody knows why. she never moved back from France even after the divorce, and it's just easier to blame his lack of muslim values than to say that they weren't compatible. i mean she's not the only person in my extended family who is divorced anyway but nobody talks about those other ones because both members were muslim. like wtf man # Speaker_self
   i mean tbh i think life will be a bit harder for both of us. my parents are really christian, and you know i'm super active in church too. we never really discussed this. i mean we're only 18 right... this shit is heavy for a weekday night # Speaker1
   * yeah we're still young [] there's no need to discuss all this stuff right now. # Speaker_self
   * {direct} wait do you think we won't work out? [] is that what you mean when you say that we're "only" 18? # Speaker_self
    dee that's totally not what i meant. you know this is a big deal and we aren't ready to make these life decisions yet # Speaker1
   * so do you think we'll make it? [] i hope we do # Speaker_self
   - dee I don't know... i mean i never really thought about that. i do care about you a lot and i think we could be happy together. # Speaker1
   I mean, I'm christian dee. I don't really know much about islam but I think I'll have to convert right? I don't what that involves, and my parents will definitely have issues. It's not that I'm against it, I just haven't thought about it. # Speaker1
   * gav what if your parents find out? do you think they would react even worse? # Speaker_self
   i don't know dee.. they might. i mean, i'm the only child and i don't have cousins so i really don't know how they'll handle an inter-cultural relationship. # Speaker1
   * gav what if this is all a mistake? what if they are all right and this can't work? # Speaker_self
   I don't know dee... i mean, dating you is amazing but i don't know what marriage takes and raising a family and all. i don't know if our cultural differences matter, or if our love matters more # Speaker1
   - this is really heavy dee # Speaker1
   gav, i'm scared. i don't want to lose you but i want our life to be happy # Speaker_self
   * (escape_early) [gav should we end this early while we still can?] gav what if this is destined to end in heartbreak? i don't want to lose both my best friend and my boyfriend at once. maybe it's best we just part as friends rather than get into all these fights with our family and suffer a life of hardships? # Speaker1
   * (love_prevails) [gav should we just continue dating and see where it goes] gav i think you're right, we're only 18. let's take this one step at a time. i want you and you want me... that's step 1. we'll get to step 2 about marriage and all that another day... and hopefully by then, if we have been together long enough, our parents can see that we're going to make this work, and they will come around. it will take time, but it's worth it. # Speaker_self
   * (ignore_parents) gav who cares what the parents think. this is our life not theirs. [] let's just ignore them and do what we think is right for us. and if that ends in marriage, then so be it. # Speaker_self
   - dee you know i'm here for you no matter where this goes. # Speaker1
    -> break_up


== break_up ==
#knot:break_up
#ui:school
#background:school.jpg
#leftCharacter:
#rightCharacter:
We broke up a little while later, for many reasons aside from this.


-> END
