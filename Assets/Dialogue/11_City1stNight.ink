INCLUDE globals.ink


->main

=== main ===
#background:roomNight #enviroSound:cityWar
#speaker: #layout:middle:tails_default
Night falls.
The darkness that sets in the room, mirrors the one in Tail’s little heart.
He's tired from all the strife and suffering.
The world outside is engulfed by an obscurity that transcends the one provided by dusk.
There is death all around and explosions can still be heard far away.
But what was really hurting Tails...
#layout:middle:tails_sad
{
- savedNimbus() || savedOak():
    Was the absence of his friends.
    He was worried about them.
    He couldn't stop imagining them lost and afraid in a cold corner of the city.

    {
    - savedNimbus():
        Nimbus trying to fly away from danger.
    }
    {
    - savedOak():
        Oak too old and tired to be able to run.
    }
    And above all...
    Little Sparks...
    Alone...
    Without no one to take care of her...
- else:
    Was the absence of his friend.
    He was worried about her.
    He couldn't stop imagining little sparks...
    Afraid and alone...
    without no one to take care of her...
}

{
- hasCotton():
    However Tails wasn't alone.
    There was another rodent in worse condition than him.
    Still grieving her loss, she cowers in a dark corner, lying down, holding her belly occasionally sobbing.
    He didn't have the courage to talk to her yet.
}

->choice_panel


=== choice_panel ===
#speaker: #layout:middle:tails_default #layout:left:default #layout:right:default #layout:middle_left:default #layout:middle_right:default

+{not Talk_to_rabbit_Q1 && hasCotton()}[Go talk to the Rabbit]
    ->Talk_to_rabbit_Q1
+[Go to sleep alone]
    ->SleepAlone

~changeScene("EndDayScene")
-> END

=== Talk_to_rabbit_Q1 ===
#speaker: #layout:left:tails_default #layout:right:bunny_sad_m #layout:middle:default
The small mouse approaches the dark corner, and hears her sniffs.
#speaker:Tails #portrait:tails_default
Hi… I have some food left… it will do you good to eat something.
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

++[Don't give up on her]
    #speaker:Tails #portrait:tails_default
    We didn’t have time to exchange names…
    #portrait:tails_happy #layout:left:tails_default
	I am Tails...
	He doesn’t press her. He waits patiently for a response.
	#speaker:??? #portrait:bunny_sad 
	???: I am…
	#speaker: Cotton
	Cotton.
	#speaker: #layout:left:tails_happy
	The mouse’s face lights up a bit.
    #speaker:Tails #portrait:tails_default
	It’s nice to meet you, Cotton.
    #speaker:
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
    And now I've lost my friends...
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
    And then raises them again towards the mouse.
    There is no hope in them.
    #speaker:Cotton #portrait:bunny_sad
    It is the children who should carry the memory of their parents…
    Not the other way around…
    They had their life in front of them…
    I don’t have nothing…
    #speaker:
    She turns towards the darkness.
    And slowly lies down again.
    You failed to give her the light she needed to keep going…
    ->choice_panel

++[The ones that still live]
    ~changeHope(2)

    #speaker:Tails #portrait:tails_default #layout:middle_left:tails_default 
    Those that still live.
    Those that were left behind in this forsaken world.
    #speaker:
    She looks at him and his loneliness.
    #speaker:Tails #portrait:tails_sad #layout:middle_left:tails_sad
    I was about to give up when I met a little firefly.
    She had lost her mother.
    She was alone, and I was the only one around.
    Her mother wasn’t there to protect her and give her the love she deserved.
    What gives me the right to give up on that love? To abandon her to her fate when her mother would give everything to keep her safe.
    #speaker:
    Her eyes widen up still watery.
    #speaker:Tails #portrait:tails_sad
    I know you have lost… everything…
    But I need your help, Cotton...
    I need to find my friends.
    And only you know this city...
    There is no one left to help me...
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
    I'll help you find your friends.
    #speaker:Tails #portrait:tails_happy 
    And we will help you too.
    #speaker: #layout:right:bunny_happy_m
    They smile.
    The world fills a bit less empty.
    The rabbit leaves the dark corner and goes sit near the centre of the room.
    
->SleepTogether

=== SleepTogether ===
#speaker:
You join her and together you make a comfortable place to sleep.
Sharing your warmth you forget the strife that engulfs the world around you.
And you dream of your family and your childhood.

~changeScene("EndDayScene")
->END

=== SleepAlone ===
#speaker: #layout:middle_left:tails_
Tails finds a cozy corner to stay, and he lies down to sleep.
It's cold.
There is no one to keep him warm.
{
- hasCotton():
    ~recruitCotton(false)
    ~changeHope(-2)
    And he fears tomorrow, the rabbit that shares the room with him, will be gone.
- else:
    And he fears he will never see his friends again.
}

~changeScene("EndDayScene")
->END