INCLUDE globals.ink

-> main

=== main ===
#background:city #enviroSound:cityWar
#speaker: #layout:middle:tails_scared #layout:sparks:sparks_scared_m
~unlockImage(17)
Explosions are heard.
War is all around in a forest of "concrete mountains", where a battle is still taking place.
Landslides, craters, buildings turned to dust, bodies scattered; They paint a picture of mankind.
The helmet goes slowly and carefully.
#speaker:
Tails shivers at the thought of going through all of it again.
Smoke rises high with several fires painting black clouds on the skies.
The city is huge and the destruction as so.
Tails understands now that the mist they went through isn't natural.
It's being created by the dust and smoke from this city.
#speaker: #layout:sparks:sparks_sad_m
The firefly gets closer to the mouse.
The one that has been with her from the begging.
#speaker:Sparks #portrait:sparks_sad
I’m afraid, Mr.Tails.
I don’t like the "big booms".

+[Console her]
    ~changeHope(1)

    #speaker:Tails #portrait:tails_default #layout:middle:tails_default
    Don’t worry, Sparky. I'll protect you, no matter what.
    #speaker:
    Her eyes brighten up a bit.
    #speaker:Sparks #portrait:sparks_sad
    Will you?
    #speaker:Sparks #portrait:tails_happy #layout:middle:tails_happy
    Yes, of course. And besides, we're almost at the enchanted land.
    We just have to go through this cursed place behind.
    #speaker: #layout:sparks:sparks_default_m
    The firefly hugs him.

+[Stay focused]
    ~ changeHope(-1)
    ~ stayedFocused = 1
    
    #speaker:Tails #portrait:tails_default #layout:middle:tails_default
    Right now, we must stay focused, Sparky.
    It doesn't help us to be fearful.
    #speaker: 
    The firefly gets a bit sad but then she takes his words to heart and focuses on the surroundings.
    #speaker:Sparks #portrait:sparks_default #layout:sparks:sparks_default_m
    Don’t worry, Mr.Tails, I won’t let you down.
    
-
#speaker:Sparks #portrait:sparks_scared #layout:sparks:sparks_scared_m #enviroSound:villageExplosions
Ahhh!
#speaker: #layout:middle:tails_scared
The ground blows up.
Dust and debris fly everywhere as tails protects the small firefly.
#speaker:Tails #portrait:tails_sad
Are you alright alright?
#speaker:
She nods in confirmation, but that premeditated optimist is silenced by a scream from the outside.
#speaker:Sparks #portrait:sparks_scared #layout:sparks:sparks_scared_m
What is that?!
#speaker:
The scream is heard again.
#speaker:Tails #portrait:tails_default #layout:middle:tails_default
#background:citySquare
Let’s see what it is.
#speaker: 
Arriving at a submersed square, they see a wheelbarrow turned around over some kind of structure.
The structure is already submerged, and the wheelbarrow is about to share the same fate.
#speaker:??? #portrait:blank
Help! Please!
#speaker: 
There is no one around and the screams are muffled.
#speaker:Sparks #portrait:sparks_scared #layout:right:sparks_scared_m
It comes from the wheelbarrow!
Someone needs our help!
#speaker: 
They get close and immediately jump onto the structure.
A deep sound is heard as the ground shakes.
#speaker:Tails
Are you ok?
#speaker:??? #portrait:blank
I’m trapped, and the ground will not hold for long.
#speaker: 
The deep sound is heard again.
There is a small hole on the top of the wheelbarrow. Only big enough for Sparks to enter.

-> choice_panel1

=== choice_panel1 ===
+[Leave them]
    #speaker: #layout:middle:tails_sad #layout:sparks:sparks_sad_m
    The mouse makes a hard decision.
    #speaker:Tails #portrait:tails_sad
    I'm sorry...
    It's too risky...
    We need to find shelter.
    #speaker:
    Sadness takes hold of Sparks.
    She looks at Tails but no words come out of her mouth.
    The desperate sounds start to fade, as the helmet moves away towards the shore.
    As it touches the ground they look behind and...
    The wheelbarrow disappears under the waters.
    ->leaver_her
+[Help them]
    ->choice_panel2

=== choice_panel2 ===

    #speaker:
    Tails moves the "half-shell" closer as he decides to help the one trapped.

    +{not send_sparks_continuation}[Send Sparks inside]
        ~sentSparks = 1
        
        #speaker:Tails #portrait:tails_default #layout:middle:tails_default
        Sparky, there is a hole you can fit in up there.
        Go inside and see what’s going on.

        {stayedFocused == 0: -> send_sparks_inside1 | -> send_sparks_inside2}

    +[Try to find a rope]

        #speaker:
        There was little time to act.
        #speaker:Tails #portrait:tails_default #layout:middle:tails_default
        Hurry find a rope!
        #speaker:
        First a bit confused, but then resolute, the group goes to shore and starts looking for a rope.
        The explosions get louder.
        #speaker:Sparks #portrait:sparks_default
        I found it!
        #speaker:
        The firefly buzzes around and Tails approaches and takes the old rope by teeth.
        He then jumps into the water and in to the the dome.
        Fastly he ties a knot around one of the handlers.
        And then comes ashore to pull it.
        #speaker:Tails #portrait:tails_default
        Pull!
        #speaker:
        Him and Sparks start pulling with all their might.
        The wheelbarrow is far heavier than them.
        Then...
        They falter and let go of the rope.
        The wheelbarrow shakes abruptly and disappears into depths.
        #speaker:Sparks #portrait:sparks_sad #layout:sparks:sparks_sad_m
        Noooo!
        #speaker:
        She flies towards the area but only bubbles come to surface.
        #speaker:
        Sadness takes hold of Sparks.
        She looks at Tails but no words come out of her mouth.
        -> leaver_her

    +{send_sparks_continuation}[Seal the hole]
        ~changeFood(4)
        ~recruitCotton(true)
        ~recruitCotton(false)
        
        #speaker:
        The little mouse understands that the rabbit will drown if they don’t seal that small hole.
        #speaker:Tails #portrait:tails_default  #layout:middle:tails_default
        Hurry, find something to seal this hole!
        #speaker:
        Sparks seems a bit confused with Tails request, but she helps him noneless.
        A few minutes pass and she finds a garbage bag that they use to seal the small hole.
        #speaker:Tails #portrait:tails_happy #layout:middle:tails_happy
        Perfect!
        #speaker:
        He grabs the bag, climbs up and stuffs it in the hole, sealing it the best he can.
        #speaker:Sparks #portrait:sparks_default #layout:sparks:sparks_default_m
        What now?
        #speaker:Tails #portrait:tails_default #layout:middle:tails_default
        Now we push the wheelbarrow into the lake.
        #speaker:Sparks #portrait:sparks_scared #layout:spars:sparks_scared_m
        What?!
        #portrait:sparks_sad #layout:sparks:sparks_sad_m
        But, Mr.Tails… She will drown!
        #speaker:Tails #portrait:tails_default
        No, she won’t. The wheelbarrow will stay afloat.
        #speaker:
        She gets even more confused but helps Tails push the wheelbarrow, trusting her friend.
        The huge metal dome slides into the deep waters and…
        Stays afloat.
        #speaker:Sparks #portrait:sparks_happy #layout:sparks:sparks_happy_m
        Wow! You’re a magician!
        #speaker: #layout:middle:default
        With smiles and laughter, the mouse jumps inside the water and pushes the wheelbarrow into the safety of the shore.
        There the task of turning it around becomes elementary.
        Underneath it is a brown rabbit and several parcels of food.
        #speaker:Sparks #portrait:sparks_happy #layout:middle_right:tails_default_m #layout:middle_left:bunny_sad 
        Hi there, miss rabbit.
        I’m Sparks, what is your name?
        #speaker:
        The rabbit raises her ears in alarm, looks into the building behind them…
        And darts to it.
        #speaker:Sparks #portrait:sparks_sad #layout:sparks:sparks_sad_m
        Did I said something wrong?
        #speaker:
        She stares blankly to the rodent that now enters the huge stone mountain, through a destroyed door.
        #enviroSound:villageExplosions
        An explosion blows near them, and debris fly everywhere.
        #speaker:Tails #portrait:tails_scared #layout:middle_right:tails_scared
        Run! We must get to safety!
        #enviroSound:villageExplosions
        #speaker: #layout:left:tails_scared #layout:right:default #layout:middle:default #layout:sparks:default #layout:middle_right:default
        Suddently another explosion hits, covering everything with dust.
        Tails is sent flying against the wheelbarrow.
        The sound is snuffed out of the world, leaving a high pitching sound.
        Tails can't see anything.
        He tries to call for his friends but he can't hear himself.

        ->final_choice

    
-> DONE

=== send_sparks_inside1 ===
    #layout:sparks:sparks_default
    The firefly nods determined and flies inside the wheelbarrow.
-> send_sparks_continuation

=== send_sparks_inside2 ===
    #layout:sparks:sparks_default
    The firefly is still a frightened about the explosions.
    She takes a bit to understand Tails’ request and then flies inside the wheelbarrow.
-> send_sparks_continuation

=== send_sparks_continuation ===
    #layout:sparks:default
    Seconds pass.
    The explosions are starting to sound nearer.
    Not a moment too late, the little bug resurfaces.
    #speaker:Sparks #portrait:sparks_sad #layout:sparks:sparks_sad_m
    It’s a rabbit!
    She’s trapped inside, and the water is rising!
    #speaker:Sparks #portrait:sparks_default #layout:sparks:sparks_default_m
    Also, there’s lots of food in there!
->choice_panel2

=== leaver_her ===
~changeHope(-2)

#speaker:
Tails looks at the destruction all around them.
#speaker:Tails #portrait:tails_default #layout:middle:tails_default
It's done...
We need to find shelter.
It's dangerous out here.
#speaker: #enviroSound:villageExplosions
Suddenly another explosion blows right near them, sending debris everywhere.
#speaker:Tails #portrait:tails_scared #layout:middle:tails_scared #layout:sparks:sparks_scared_m
We must take shelter!
We won’t survive if we stay out in the open!
#enviroSound:villageExplosions
#speaker: #layout:left:tails_scared #layout:right:default #layout:middle:default #layout:sparks:default #layout:middle_right:default
Suddently another explosion hits, covering everything with dust.
Tails is sent flying against the wheelbarrow.
The sound is snuffed out of the world, leaving a high pitching sound.
Tails can't see anything.
He tries to call for his friends but he can't hear himself.
->final_choice

=== final_choice ===

    +[Look for Sparks]
        #speaker: #layout:left:tails_scared
        Tails starts walking slowly through the dust.
        His head is spinning and his paws are burning.
        #speaker: Tails #portrait:tails_scared
        Sparks?
        Where are you!?
        #speaker:
        He stumbles around...
        But the dust is too thick for him to see anything...
        #speaker: #enviroSound:villageExplosions #layout:left:default
        A huge explosion blows.
        And its the last thing he hears...

        ~gameOver()
        ->END

    +[Run to safety]
        #speaker: #layout:left:tails_scared
        He understands he's in danger, so he decides to run for safety.
        He remembers the direction the rabbit ran too, so he decides to follow her trail.
        Running at full speed he hears explosions all around.
        A hell befalls from the skies.
        Finnally he reaches the inside of the building...
        #enviroSound:villageExplosions
        Just before he's hit by a furious explosion....

        ~changeScene("DialogueScene")
        ->END










