INCLUDE globals.ink

->choice_panel

=== main ===
#background:room
#speaker: #layout:middle:tails_default
The darkness that has set in the room, mirrors the darkness in Tail’s little heart.
They are tired from all the strife and suffering in this world.
The world outside is engulfed by an obscurity that transcends the one provided by night. There is death all around. The explosions can still be heard far away, but loud enough to stop their minds from finding peace.
Tails lets himself fall to the ground.
They had been traveling for days.
Until now the spirit managed to keep the exhaustion away, but tonight it was too weak.
Around him the others were also crestfallen. With their eyes pointing towards the ground and their aura covered in cold and grey.

{
- followedRabbit == 0: 
    The rabbit was in the worse condition.
    Still grieving her loss, she cowered in a dark corner, lying down, holding her belly occasionally sobbing.
    No one had the courage to talk to her yet.
}

They are tired and hopeless.
This city has death and destruction all around. The worst place they had ever been.
And they have not seen any signs of the valley they so much want to reach.
Tails understands this is a critical moment and they are all about to break.
It’s up to him to keep them afloat.

->choice_panel


=== choice_panel ===
#speaker: #layout:middle:tails_default #layout:left:default #layout:right:default #layout:middle_left:default #layout:middle_right:default

+{not Talk_to_rabbit_Q1}[Go talk to the Rabbit]
    ->Talk_to_rabbit_Q1
+{not Talk_to_Oak_Q1}[Go talk to Oak]
    ->Talk_to_Oak_Q1
+{not Talk_to_Nimbus_Q1}[Go talk to Nimbus]
    ->Talk_to_Nimbus_Q1
+{Talk_to_rabbit_Q1 and Talk_to_Oak_Q1 and Talk_to_Nimbus_Q1 and not Look_for_Sparks_1}[Look for Sparks]
    ->Look_for_Sparks_1
+{Look_for_Sparks_1}[Look for Sparks]
    ->Look_for_Sparks_2
+{Look_for_Sparks_1}[Trust Sparks to comeback]
    ->Trust_Sparks

~changeScene("DialogueScene")
-> END

=== Talk_to_rabbit_Q1 ===
#speaker: #layout:left:tails_default #layout:right:bunny_sad_m #layout:middle:default
The small mouse approaches the dark corner, and he ears her sniffs.
#speaker:Tails #portrait:tails_default
Hi… we have some food left… it will do you good to eat something.
#speaker:??? #portrait:bunny_sad
I am not hungry…
#speaker:
The rabbit’s voice carries a sadness so deep it takes away from Tails’ spirit.
She clearly wants to be left alone. But was it right to leave her to her fate?
    
++[Give her some space]
    The mouse’s intentions are in the right place, but he remembers the day he lost his family.
    On that moment he just wanted time to grieve.
    Sometimes the best way to help someone is to leave them alone.
    He sadly turns around and goes back to the middle of the room.
    ->choice_panel

++[Don't give up o her]
    #speaker:Tails #portrait:tails_default
    We didn’t have time to exchange names…
    #portrait:tails_happy #layout:left:tails_default
	I am Tails. The young firefly is Sparks.
	The spirited bird is Nimbus, and the old dog is Oak.
	He doesn’t press her. He waits patiently for a response.
	#speaker:??? #portrait:bunny_sad 
	???: I am…
	#speaker: Cotton
	Cotton.
	#speaker: #layout:left:tails_happy
	The mouse’s face lights up a bit.
	It’s nice to meet you, Cotton.
	She goes silent again.
	
--
->Talk_to_rabbit_Q2


=== Talk_to_rabbit_Q2 ===

++[Share your losses and empathize]
    #speaker: #layout:middle_left:tails_default #layout:left:default
    Tails gets closer to her.
    #speaker:Tails #portrait:tails_default
	I know right now you just want to cry.
	You just want to feel small enough to disappear.
	That the pain in your chest is too much to bear.
	#speaker: #layout:middle_left:tails_sad
	The memories flood and his heart tightens.
	#speaker:Tails #portrait:tails_sad
	I’ve lost my parents…
	My… brothers and sisters…
	I’ve lost everyone I ever knew…
    I can understand a bit of how you are feeling right now.
    #speaker:
    As his tears start to fall, the rabbit leaves the darkness of her loneliness.
    #speaker:Tails #portrait:tails_default #layout:middle_left:tails_sad
    But giving up isn’t the answer.
    You must find a reason to keep on going…
    #speaker:
    She thinks about his words, deeply.
    #speaker:Cotton #portrait:bunny_sad
    I have lost my children…
    What reason is there left on this world, for me to stay alive?
    
++[Inspire her to get up and eat something]
    #speaker: #layout:middle_left:tails_default #layout:left:default
    Tails gets closer to her.
    #speaker:Tails #portrait:tails_default 
    I know right now you just want to cry, but you have to get up.
    You have to remain active.
    To survive we cannot surrender to the pain.
    I know you can do it.
    #speaker:
    She remains still. Not facing the one talking to her.
    #speaker:Cotton #portrait:bunny_sad
    I have lost my children…
    What reason is there left on this world, for me to stay alive?
    
--
->Talk_to_rabbit_Q3


=== Talk_to_rabbit_Q3 ===

++[Their Memory]
    #speaker:Tails #portrait:tails_default #layout:middle_left:tails_default
    The memory of those who we’ve lost.
    They would want us to keep going.
    If we give up on ourselves, we give up on them too.
    #speaker:
    The rabbit lowers her eyes.
    And them raises them again towards the mouse.
    There is no hope in them.
    #speaker:Cotton #portrait:bunny_sad
    It is the children who should carry the memory of their parents…
    Not the other way around…
    They had their life in front of them…
    I don’t have nothing…
    #speaker:
    She turns towards the darkness.
    And slowly lies down again.
    Ha failed to give her the light she needed to keep going…
    ->choice_panel

++[The ones that still live]
    #speaker:Tails #portrait:tails_default #layout:middle_left:tails_default 
    Those that still live.
    Those that were left behind in this forsaken world.
    #speaker:
    She pauses and looks around the room.
    Seeing the others that have survived this far as she did.
    #speaker:Tails #portrait:tails_sad #layout:middle_left:tails_sad
    I was about to give up when I met a little firefly.
    She had lost her mother.
    She was alone, and I was the only one around.
    Her mother wasn’t there to protect her and give her the love she deserved.
    What gives me the right to give up on that love? To abandon her to her fate when her mother would give everything to keep her safe.
    Her eyes widen up still watery.
    I know you have lost… everything…
    But there are those who still need a mother…
    And there is no one left to fill that hole except for you…
    #speaker:
    Silence.
    Compassion.
    And suddenly a warm hug.
    The rabbits fur embraces Tails in a show of love.
    #speaker:Cotton #portrait:bunny_sad
    You are right…
    #speaker:
    He embraces her back.
    #layout:middle_left:tails_default #layout:right:bunny_default_m
    And he feels the warmth of his mother. Even if she wasn’t there.
    For a few moments he sees her again.
    #speaker:Cotton #portrait:bunny_default
    You are a wonderful mouse, and I’m sure your mother would be proud of you.
    #speaker: #layout:middle_left:tails_happy
    He smiles at the remark, with tears falling down his cheeks.
    #speaker:Cotton #potrait:bunny_default
    I know I can never bring back those we lost.
    But perhaps I can help you keep on going.
    #speaker:Tails #portrait:tails_happy 
    And we can help you too.
    #speaker: #layout:right:bunny_happy_m
    They smile.
    The world fills a bit less empty.
    The rabbit leaves the dark corner and goes sit near the centre of the room.
    
--
~rabbitSaved_final = 1
~nSaved = nSaved + 1
->choice_panel


=== Talk_to_Oak_Q1 ===
#speaker: #layout:left:tails_default #layout:right:oak_sad_m #layout:middle:default
The old hound licks his left front paw.
It seems hurt.
#speaker:Tails #portrait:tails_default
Are you alright Sir… ah… Oak.
#speaker:
The licking stops and he looks towards Tails.
His eyes are tired, and he looks older than before.
#speaker:Oak #portrait:oak_default
I can manage.
You should channel your attention towards the younger members of our group.
#speaker:Tails #portrait:tails_default
Everyone deserves a bit of attention.
Even the cranky old ones.
#speaker: #layout:left:tails_happy
The mouse smiles trying to plant some good disposition.
#layout:left:tails_sad
But the old dog stays silent, looking outside, through the broken window on the far wall.

++[Ask what he is thinking about]
    #speaker:Tails #portrait:tails_default
    I can see something is bugging you. Do you want to share it?
    #speaker: 
    Oak looks down pensative.
    #speaker:Oak #portrait:oak_sad #layout:right:oak_sad_m
    I am afraid this story will not have a happy ending…
    #speaker:
    His voice is almost whispered.
    The mouse is taken aback by the thought.
    #speaker:Tails #portrait:tails_sad #layout:left:tails_sad
    What do you mean?
    #portrait:tails_happy #layout:left:tails_happy
    We are getting close to the valley, you yourself said it many times.
    #speaker:
    His aura darkens even more.
    #speaker:Oak #portrait:oak_sad
    I…
    I lied…
    I was never there.
    I only fabricated those stories to keep the young ones hopeful.
    But now I fear it will do more harm than good…
    #speaker: #layout:left:tails_sad
    Tails heart falls.
    Was it all a lie?
    Was it all worth it?

++[Leave him to his thoughts]
    #speaker:
    Oak was clearly in a difficult moment.
    Perhaps it was better to leave him to his thoughts.
    Tomorrow he would certainly be more talkative.
    It’s the night.
    It brings dark thoughts.
    Tails decides not to talk to Oak and looks around.
    ->choice_panel
--

->Talk_to_Oak_Q2


=== Talk_to_Oak_Q2 ===

++[You did the right thing]
    #speaker:Tails #portrait:tails_sad #layout:left:tails_sad #layout:right:oak_sad_m
    You did it to protect us.
    You did it to keep us going.
    #speaker:Oak #portrait:oak_sad
    It’s still a lie.
    What if we die in this city.
    What if my lie is revealed and everyone gives up because the hope it created is now too dear to lose.
    #speaker:
    The dog faces Tails.
    #speaker:Oak #portrait:oak_sad
    I am old, little mouse.
    I have seen so much death and destruction… I don’t know if I can bare see it again…
    Specially if I am to blame.

++[We shouldn't dwell on the Past]
    #speaker:Tails #portrait:tails_sad #layout:left:tails_sad #layout:right:oak_sad_m
    What is done is done.
	No use thinking about it now.
	We should focus on what can be done.
	#speaker:Oak #portrait:oak_sad
	And what can we do?
	Everything is destroyed.
	And my lies brought us here.
	To this forsaken city…
	
--
->Talk_to_Oak_Q3


=== Talk_to_Oak_Q3 ===

++[We should never lose Hope]
    #speaker:Tails #portrait:tails_sad #layout:left:tails_sad #layout:right:oak_sad_m
    It is the hope that keeps us going.
    #portrait:tails_default #layout:left:tails_default
    And hope is always based on lies.
    On the idea we can survive when we should not.
    The idea that everything is going to be alright, when it seems it will not.
    #speaker:
    The dog looks around to the others.
    #speaker:Oak #portrait:oak_sad
    And do you believe we are going to survive this?
    #speaker:Tails #portrait:tails_default #layout:left:tails_default
    I do.
    It might be a lie that I tell myself.
    But what dark life would we live in, if there was no space for foolish hope.
    #speaker:
    The dog smiles.
    #speaker:Oak #portrait:oak_default #layout:right:oak_default_m
    Not one worth living.
    #speaker:Tails #portrait:tails_default
    Tails smiles and hugs his fellow friend.
    You lied because you care.
    #speaker:
    Oak’s paw brushes the little mouse’s ears and his huge nose sniffs the beautiful pain that grips his heart.
    #speaker:Oak #portrait:oak_default
    Thank you, my small friend.
    For reminding me of things one should never forget.
    #speaker:Tails #portrait:tails_happy #layout:left:tails_happy
    That’s what old age does. Makes you forget things.
    #layout:right:oak_happy_m
    They both laugh at the remark. Bringing a bit of joy to that dark room.
    The dog thanks Tails one last time and moves towards the centre of the room.

++[We are stronger than we think]
    #speaker:Tails #portrait:tails_sad #layout:left:tails_sad #layout:right:oak_sad_m
    You shouldn’t underestimate us.
    We are stronger than you think.
    We made it this far.
    #speaker:
    The dog look straight at Tails and his eyes pierce him with a hopeless light.
    #speaker:Oak #portrait:oak_sad
    You don’t know humans as I do.
    We are nothing to the powers they can bring forth.
    Just look outside and you will see what they are capable of.
    I am sorry, little mouse, but we are not strong.
    If a fire hits this building we will die…
    And I will be to blame to have giving us hope, when there was none.
    #speaker:
    The dog nestles on the ground, with his sad eyes facing the wall.
    Tails didn’t manage to give him the hope he needed.
    ->choice_panel

--
~oakSaved_final = 1
~nSaved = nSaved + 1
->choice_panel


=== Talk_to_Nimbus_Q1 ===
#speaker: #layout:left:tails_default #layout:right:nimbus_sad_m #layout:middle:default
The broken bird sits on a big couch.
His broken wing uncovered. The bandage lying on the ground.
He tries to move it clearly in great effort and pain.
Trying to force it to work, even though he knew it was not possible.

++[Don't interfere]
    It was a personal moment.
    The bird needed to realize his fate by himself.
    Tails presence would only make it more difficult.
    At least that’s what the mouse thought.
    He stepped away from the couch.
    ->choice_panel

++[Pick the bandage up and bring it to him]
    Tails picks the cloth by his teeth and scales the huge couch with ease.
    #layout:middle_left:tails_default #layout:left:default
    He then places the bandage next to the bird.
    #speaker:Nimbus #portrait:nimbus_sad
    I don’t need it.
    #speaker:
    His voice is cold.
    A façade of strength and maturity.
    #speaker:Tails #portrait:tails_sad #layout:middle_left:tails_sad 
    I know it’s uncomfortable, but it is safer if you use it.
    It protects the wing and doesn’t let it get in the way.
    #speaker:
    The bird stops his efforts.
    #speaker:Nimbus #portrait:nimbus_sad
    Get in the way?
    It’s my wing! I am a bird.
    It’s supposed to help me fly, to help me be a bird.
    #speaker:
    He raises his voice annoyed at the fact.
    #speaker:Nimbus #portrait:nimbus_scared #layout:right:nimbus_scared_m
    Should I use the bandage for the rest of my life?
    What if you lost a paw? How would you feel?~
    #speaker:
    Tails has never seen the bird so annoyed.

--
->Talk_to_Nimbus_Q2


=== Talk_to_Nimbus_Q2 ===

++[I would trust on others to help me]
    #speaker: #layout:middle_left:tails_sad #layout:right:nimbus_sad_m 
    The mouse looks at his precious paws and back at the bird.
    #speaker:Tails #portrait:tails_sad
    I would give thanks to the friends I had.
    And would value their help when I needed it.
    #speaker: #layout:right:nimbus_sad_m
    Nimbus aggressiveness dies down.
    But his eyes remain sad.
    #speaker:Nimbus #portrait:nimbus_sad
    And what if they weren’t there to help you?
    You can’t depend on others for the rest of your life.
    My brother used to protect me from everything…
    #speaker:
    He lowers his beak with sadness.
    #speaker:Nimbus #portrait:nimbus_sad
    Now he’s not here anymore…
    #speaker:
    His tears start to fall.
    #speaker:Nimbus #portrait:nimbus_sad
    To see the failure I have become…

++[I would accept my new life]
    Mr. Placeholder

--
->Talk_to_Nimbus_Q3


=== Talk_to_Nimbus_Q3 ===

++[You can depend on us]
    #speaker:Tails #layout:middle_left:tails_sad #layout:right:nimbus_sad_m #portrait:tails_sad
    I know your brother can never be replaced.
    #portrait:tails_default #layout:middle_left:tails_default
	But you have us now.
	And we’ll be here to help you when you need it.
	#speaker:
	The bird looks away into the dark night.
	#speaker:Nimbus #portrait:nimbus_sad
	My brother died trying to protect me.
	The same will happen to you.
    I am a burden… that only brings pain to those around.
    #speaker:
    He jumps down from the couch and moves towards the door.
    #speaker:Nimbus #portrait:nimbus_sad
    Don’t come looking for me… I am not worth it…
    #speaker: #layout:right:default
    The room grows silent.
    The cold embraces Tails.
    Nimbus is gone.
    ->choice_panel

++[You are not a failure]
    #speaker:Tails #portrait:tails_sad #layout:right:nimbus_sad_m #layout:middle_left:tails_sad
    You are far from a failure, Nimbus.
	You have helped us so much.
	You have the best eyes and a strong beak.
	But most importantly, you are dependable.
	#speaker:
	The bird looks up.
	#speaker:Tails #portrait:tails_sad
	You are fearless.
	You give us strength to carry on.
	#speaker:Nimbus #portrait:nimbus_sad #layout:right:nimbus_sad_m
	You are… lying… just to make me feel better.
	#speaker: #layout:middle:tails_default #layout:middle_left:default
    The mouse gets closer to nimbus and looks him in the eyes.
    #speaker:Tails #portrait:tails_default
    I am not.
    We wouldn’t have made it this far without you.
    #speaker:
    He places his pay over the bird’s shoulder.
    #speaker:Tails #portrait:tails_default
    Your brother would be proud.
    #speaker:
    The words hit him like a sunshine, brightening away the darkness that had taken hold of his heart.
    He smiles and brushes Tails’ head with his beak.
    #speaker:Nimbus #portrait:nimbus_default #layuot:right:nimbus_default_m
    Thank you, Tails.
    You remind me of my brother.
    #speaker: 
    The mouse shows his teeth proudly.
    #speaker:Tails #portrait:tails_happy #layout:middle:tails_happy
    I will take it as the biggest compliment I could ever receive.
    #speaker:
    His chest puffs out in an exaggerated manner.
    #speaker:Nimbus #portrait:nimbus_default
    Although my brother Cloud was a tab bit taller.
    And better looking…
    #speaker:Tails #portrait:nimbus_default
    Oi, don’t push it!
    #speaker: #layout:middle:tails_happy #layout:right:nimbus_happy_m
    They crack up laughing.
    Joyous for the companionship they had created.
    #speaker:Nimbus #portrait:nimbus_default #layout:right:nimbus_default_m
    I will be here if you need me, Tails. You should check on the others.
    #speaker:
    The small rodent agrees.

--
~nimbusSaved_final = 1
~nSaved = nSaved + 1
->choice_panel


=== Look_for_Sparks_1 ===
#speaker: #layout:middle:tails_default
You look around and realise the other member of your crew is nowhere to be found.
Not on the corners of the room, not on the windowsill, not on the furniture.
Nowhere.
{
- nimbusSaved_final == 0:
    #layout:middle:tails_sad #layout:left:oak_default #layout:right:bunny_default_m
- else:
    #layout:middle:tails_sad #layout:left:oak_default #layout:right:bunny_default_m #layout:middle_left:nimbus_default
}   
You turn to the others alarmed.
#speaker:Tails #portrait:tails_sad
Has anyone seen Sparks?
#speaker:
They all move their heads negatively.


->choice_panel


=== Trust_Sparks ===

#speaker:
You remember your friend likes to stare at the night sky.
The building seems totally abandoned, so certainly there is no danger around.
You decide to stay on the room to lookout for the others and trust Sparks will comeback before dawn.

{
- nSaved > 1:
    #speaker:
    You join your friends in the middle of the room and together you make a comfortable place to sleep.
    Sharing your warmth you forget the strife that engulfs the world around you.
    And you dream of your family and your childhood.
- nSaved == 1:
    {
    - rabbitSaved_final == 1:
        #speaker:
        You join Cotton in the middle of the room and together you build a small nest made of cloth and debris.
        You lie together sharing your warmth.
        It was a cold night outside, but here it was not. 
        You fall asleep soundly.
    - oakSaved_final == 1:
        #speaker:
        You join Oak in the middle of the room and together you build a small nest made of cloth and debris.
        You lie together sharing your warmth.
        It was a cold night outside, but here it was not.
        You fall asleep soundly.
    - nimbusSaved_final == 1:
        #speaker:
        You join Nimbus in the middle of the room and together you build a small nest made of cloth and debris.
        You lie together sharing your warmth.
        It was a cold night outside, but here it was not.
        You fall asleep soundly.
    }
- nSaved == 0:
    #speaker:
    You find a cozy corner to stay, and you lie down to sleep.
    It’s cold.
    There is no one to keep you warm.
    And you fear tomorrow the ones that share the room with you, will be gone.
}

~changeScene("DialogueScene")
        ->END


=== Look_for_Sparks_2 ===
#speaker:
The little mouse’s heart start racing.
#speaker:Tails #portrait:tails_sad
We must find him!
Come with me please, we can cover more ground together.

{
- nimbusSaved_final == 1:
    #layout:middle_left:nimbus_default_m
    I will go, he probably lost himself on the corridors.
}
{
- oakSaved_final == 1:
    #layout:left:oak_default
    I can help, he will certainly hear my bark.
}
{
- rabbitSaved_final == 1:
    #layout:right:bunny_default
    I can cover the lower grounds since I am familiar with them.
}
{
- nSaved > 0:
    #layout:right:default #layout:middle_left:default #layout:left:default 
    You leave the room together and spread out towards every corner of the huge building.
- else:
    #speaker:
    You leave the room alone.
    It will take hours to cover the whole building, but you will not abandon your friend.
}

#speaker: #layout:middle:tails_sad 
Time passes and finally you remember that your friend likes to stare at the night sky.
You run as fast as you can towards the top of the building.
You find a locked door but a small window gives you a pathway to reach the rooftop.
You climb it in a hurry.
The night is cold and windy up here.
#layout:left:tails_sad #layout:middle:default
You pause in awe at the view.
The entire city is softly lightened by the pale moon.
Miles and miles into the murkiness of night.
#layout:right:sparks_sad
Sparks is on the balcony, with his light glowing weakly.
His antennas are down.
#speaker:Tails #portrait:tails_sad #layout:right:sparks_sad_m
Sparks!
We were worried about you. You can’t disappear without a word, it’s not safe.
#speaker:Sparks #portrait:sparks_sad
I’m sorry, Mr. Tails.
I wanted to see my mother.
#speaker:
The mouse sits next to him and places his paw around his closed wings.
#speaker:Sparks #portrait:sparks_sad 
I was sure I could see her from up here.
But I can’t seem to find her.
#speaker:
Her watery eyes look up to Tails.
#speaker:Sparks #portrait:sparks_sad
Is she ever coming back?

+[Yes (keep on lying)]
    #speaker: 
    The mouse looks towards the world that surrounds them.
    They are so small in it.
    #speaker:Tails #portrait:tails_default #layout:left:tails_default
    What does your heart tell you?
    #speaker:
    He lowers his head.
    #speaker:Sparks #portrait:sparks_sad
    I dunno.
    I want to believe she is coming back.
    But is taking so long.
    #speaker:Tails #portrait:tails_default
    Yes, it is, but you can’t give up.
    She is looking for you, I’m sure of it.
    #speaker:Sparks #portrait:sparks_default
    How do you know, Mr. Tails?
    #speaker:Tails #portrait:tails_default
    Because that’s what my heart tells me.
    And my mother taught me that the heart is never wrong.
    #speaker: 
    The firefly looks into the horizon, beyond the obscurity that clouded everything.
    #speaker:Sparks #portrait:sparks_default #layout:right:sparks_default_m
    She told me about a safe place for fireflies, under a wooden bridge, past a forest of pink flowers.
    #speaker:Tails #portrait:tails_default
    Perhaps she is there right now.
    #speaker: #layout:right:sparks_sad_m
    The bug’s antennas fall.
    #speaker:Sparks #portrait:sparks_sad
    But its North… Not in the direction of the valley we are going to.
    #speaker:
    Tails understood her dilemma.

    ~changeScene("DialogueScene")
    ->END

+[No (tell the truth)]
    ~changeScene("DialogueScene")
    ->END

~changeScene("DialogueScene")
->END