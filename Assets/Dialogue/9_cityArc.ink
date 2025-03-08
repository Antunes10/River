INCLUDE globals.ink

-> main

=== main ===
#background:city #enviroSound:cityWar
#speaker: #layout:left:oak_scared #layout:middle:tails_scared #layout:right:nimbus_scared_m #layout:sparks:sparks_scared_m
~unlockImage(17)
Explosions are heard.
War is all around in a forest of "concrete mountains", where a battle is still taking place.
Landslides, craters, buildings turned to dust, bodies scattered; They paint a picture of mankind.
The helmet goes slowly and carefully.
#speaker:Oak #portrait:oak_sad #layout:left:oak_sad
I can hear humans a couple of blocks away.
We have entered their world.
#speaker:
Tails shivers at the thought of going through all of it again.
Smoke rises high with several fires painting black clouds on the skies.
The city is huge and the destruction as so.
#speaker:Nimbus #portrait:nimbus_default #layout:right:nimbus_default_m
The mist we went through isn't natural.
It's being created by the dust and smoke from this city.
Glad we decided to risk it and go through it.
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
Dust and debris fly everywhere as the dog protects them with his hat.
#speaker:Tails #portrait:tails_sad
Is everyone alright?
#speaker:
They all nod in confirmation, but that premeditated optimist is silenced by a scream from the outside.
#speaker:Nimbus #portrait:nimbus_scared #layout:right:nimbus_scared_m
Someone is in danger.
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
#speaker:Oak #portrait:oak_sad #layout:left:oak_sad
It comes from inside the wheelbarrow.
Someone is trapped inside!
#speaker:Nimbus #portrait:nimbus_default #layout:right:nimbus_default_m
We must help them!
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
#speaker:Nimbus #portrait:nimbus_default 
What are we going to do?

-> choice_panel1

=== choice_panel1 ===
+[Leave them]
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
    
    +[Try to lift the wheelbarrow]
        #speaker: 
        There was little time to act.
        #speaker:Tails #portrait:tails_default #layout:middle:tails_default
        Oak, Nimbus, help me lift this thing so she can get out of there.
        #speaker: #layout:left:oak_sad #layout:right:nimbus_sad_m
        Both animals seem a little apprehensive, but they accept the task.
        At the same time, they all place they paws, teeth and beak on the edge and start to push.
        The ground shakes.
        #speaker:Nimbus #portrait:nimbus_scared #layout:right:nimbus_scared_m
        It’s too heavy.
        #speaker:Oak #portrait:oak_sad
        Put your back into it!
        #speaker:
        Suddenly everything collapses and they are thrown into the cold water.
        #speaker:??? #portrait:default
        No, help!!
        #speaker: #layout:middle:tails_sad #layout:sparks:sparks_sad_m
        Terrified screams are heard from inside the metal dome.
        Tails’ paw gets stuck on the rubble beneath.
        In a panic attack, he tries to free himself…
        But in vain…
        The wheelbarrow sinks…
        Taking him with it to the abyss…
        
        ~gameOver()
        -> END

    +[Try to find a rope]
        ~changeHope(2)
        ~recruitCotton(true)
        ~recruitCotton(false)

        #speaker:
        There was little time to act.
        #speaker:Tails #portrait:tails_default #layout:middle:tails_default
        Hurry find a rope!
        #speaker:
        First a bit confused, but then resolute, the group goes to shore and starts looking for a rope.
        The explosions get louder.
        #speaker:Nimbus #portrait:nimbus_default
        I found one!
        #speaker:
        The bird brings an old rope by the beak and drops it in front of them.
        The mouse takes one end and jumps into the water.
        He jumps over the dome and ties a knot around one of the handlers.
        #speaker:Tails #portrait:tails_default
        Pull!
        #speaker:
        Oak, Nimbus and Sparks start pulling with all their might.
        Another explosion is heard.
        Tails places his paws on the edge and starts to push.
        The edge surfaces a bit above the water and a brown rabbit escapes with urgency.
        She swims away from that place into the shore.
        On that moment Tails sees several parcels of food.
        
        {send_sparks_continuation: The ones Sparks warned him about.}
        
        ->try_to_find_rope_continuation

    +{send_sparks_continuation}[Seal the hole]
        ~changeFood(4)
        ~recruitCotton(true)
        ~recruitCotton(false)
        
        #speaker:
        The little mouse understands that the rabbit will drown if they don’t seal that small hole.
        #speaker:Tails #portrait:tails_default  #layout:middle:tails_default
        Hurry, find something to seal this hole!
        #speaker:Nimbus #portrait:nimbus_default #layout:right:nimbus_default_m
        Why are we doing that?
        #speaker:Tails #portrait:tails_default
        Just do it.
        #speaker:
        They all seem a bit confused with Tails request, but they help him noneless.
        A few minutes pass and Oak finds a garbage bag that they use to seal the small hole.
        #speaker:Tails #portrait:tails_happy #layout:middle:tails_happy
        Perfect!
        #speaker:
        He grabs the bag, climbs up and stuffs it in the hole, sealing it the best he can.
        #speaker:Nimbus #portrait:nimbus_default #layout:right:nimbus_default_m
        What now?
        #speaker:Tails #portrait:tails_default #layout:middle:tails_default
        Now we push the wheelbarrow into the lake.
        #speaker:Sparks #portrait:sparks_scared #layout:spars:sparks_scared_m
        What?!
        #portrait:sparks_sad #layout:sparks:sparks_sad_m
        But, Mr.Tails… She will drown!
        #speaker:Tails #portrait:tails_default
        No, she won’t. The wheelbarrow will stay afloat.
        #speaker: #layout:left:oak_default
        The dog widens his eyes in a moment of realization.
        #speaker:Oak #portrait:oak_default #layout:left:oak_default
        Oh, you cheek!
        You are indeed a genius, Sir. Tails.
        #speaker:
        With a smirk on his face, the small rodent pushes the wheelbarrow with their help.
        The huge metal dome slides into the deep waters and…
        Stays afloat.
        #speaker:Sparks #portrait:sparks_happy #layout:sparks:sparks_happy_m
        Wow! You’re a magician!
        #speaker: #layout:left:default #layout:middle:default
        With smiles and laughter, the mouse and the dog jump inside the water and push the wheelbarrow into the safety of the shore.
        There the task of turning it around becomes elementary.
        Underneath it is a brown rabbit and several parcels of food.
        #speaker:Nimbus #portrait:nimbus_default #layout:right:nimbus_default_m
        Lucky find!
        #speaker:Sparks #portrait:sparks_happy #layout:left:oak_default #layout:middle_right:tails_default_m #layout:middle_left:bunny_sad 
        Hi there, miss rabbit.
        I’m Sparks, what is your name?
        #speaker:
        The rabbit raises her ears in alarm, looks into the building behind them…
        #layout:middle_left:default
        And darts to it.
        #speaker:Nimbus #portrait:nimbus_scared #layout:right:nimbus_scared_m
        What?!
        #speaker:Sparks #portrait:sparks_sad #layout:sparks:sparks_sad_m
        Did I said something wrong?
        #speaker:
        They all stare blankly to the rodent that now enters the huge stone mountain, through a destroyed door.
        #enviroSound:villageExplosions
        An explosion blows near them, and debris fly everywhere.
        #speaker:Nimbus #portrait:nimbus_scared
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
    #speaker:Oak #portrait:oak_sad #layout:left:oak_sad
    She will drown if we don’t take her out.
    #speaker:Sparks #portrait:sparks_default #layout:sparks:sparks_default_m
    Also, there’s lots of food in there!
->choice_panel2

=== try_to_find_rope_continuation ===
    +[Let go of the Wheelbarrow]
        #speaker:
        Not wanting to test is luck further, the little mouse lets go.
        Right before his friends lose their strength and let go of the rope.
        The wheelbarrow collapses and everything sinks into the deep waters.
        #speaker:Sparks #portrait:sparks_scared #layout:sparks:sparks_scared
        Mr.Tails!
        Mr.Tails!!
        #speaker:Tails #portrait:tails_default
        I’m alright, Sparks.
        #layout:sparks:sparks_sad_m #speaker:
        He swims towards them and reunited with his friends.
        They embrace him.
        Next to them the rabbit dries her fur and without any notice darts towards one of the buildings.
        #speaker:Nimbus #portrait:nimbus_scared #layout:right:nimbus_scared_m
        What was that?!?
        #enviroSound:villageExplosions
        An explosion blows near them, and debris fly everywhere.
        #speaker:Oak #portrait:oak_scared #layout:left:oak_scared
        No time to lose, we are vulnerable out here!
        #enviroSound:villageExplosions
        #speaker: #layout:left:tails_scared #layout:right:default #layout:middle:default #layout:sparks:default #layout:middle_right:default
        Suddently another explosion hits, covering everything with dust.
        Tails is sent flying against the wheelbarrow.
        The sound is snuffed out of the world, leaving a high pitching sound.
        Tails can't see anything.
        He tries to call for his friends but he can't hear himself.
        
        ->final_choice

    +[Try to salvage some food]
        ->try_to_salvage_food
    
-> choice_panel2

=== try_to_salvage_food ===
    ~changeFood(2)

    #speaker: #layout:sparks:default #layout:right:default #layout:left:default
    Against his most primal instincts, Tails jumps inside the dark cove of metal and lunges towards the food.
    The ground starts shaking again with the movement and it lowers even more into the water.
    He grabs one of the plastic packages and throws it outside.
    
    +[Get out]
        #speaker:
        Not wanting to test is luck further, the little mouse gets out.
        Right before his friends lose their strength and let go of the rope.
        The wheelbarrow collapses and everything sinks into the deep waters.
        #speaker:Sparks #portrait:sparks_scared
        Mr.Tails!
        Mr.Tails!!
        #speaker:Tails #portrait:tails_default
        I’m alright, Sparks.
        #speaker:
        The mouse waves while floating over a plastic package of food.
        #layout:left:oak_scared #layout:sparks:sparks_sad #layout:right:nimbus_default
        He swims to the shore.
        #speaker:Tails #portrait:tails_default #layout:middle:tails_default
        Look what I found!
        #speaker:Oak #portrait:oak_scared
        That was not the most logical of actions.
        You nearly drowned.
        #speaker:Tails #portrait:tails_default
        It was worth it.
        #speaker: #enviroSound:villageExplosions
        Suddenly another explosion blows right near them, sending debris everywhere.
        #speaker:Nimbus #portrait:nimbus_scared #layout:right:nimbus_scared
        We must take shelter!
        We won’t survive if we stay out in the open!
        #enviroSound:villageExplosions
        #speaker: #layout:left:tails_scared #layout:right:default #layout:middle:default #layout:sparks:default
        Suddently another explosion hits, covering everything with dust.
        Tails is sent flying against the wheelbarrow.
        The sound is snuffed out of the world, leaving a high pitching sound.
        Tails can't see anything.
        He tries to call for his friends but he can't hear himself.
        
        ->final_choice
        
    +[Try too salvage more food]
        #speaker:
        He knew they needed the food, so he reached for another package.
        This one was stuck under the wheelbarrow.
        He pulled with all his strength.
        And suddenly the metal dome fell hard.
        Darkness fell.
        The ground underneath him succumbs with the strength of the impact.
        And everything starts to sink.
        He tries to escape through the hole.
        But it was too small…
        He is pulled by the weight of metal…
        And drowns in the deep…
        
        ~gameOver()
        ->END

=== leaver_her ===
~changeHope(-2)

#speaker: #layout:left:oak_sad #layout:middle:tails_sad #layout:right:nimbus_sad_m #layout:sparks:sparks_sad_m
The mouse makes a hard decision.
#speaker:Tails #portrait:tails_sad
I'm sorry...
It's too risky...
We have to find shelter.
#speaker:
Sadness takes hold of everybody.
They all look at Tails but no one voices their discontent.
The desperate sounds start to fade, as the helmet moves away towards the shore.
As it touches the ground they look behind and...
The wheelbarrow disappears under the waters.
#speaker:Nimbus #portrait:nimbus_sad
We could've tried...
At least tried...
#speaker:Oak #portrait:oak_sad
It's done, little one.
We have to find shelter now.
#speaker:
Tails looks at the destruction all around them.
#speaker:Tails #portrait:tails_default #layout:middle:tails_default
I don't know if there is any shelter capable of holding off this kind of destruction.
#speaker: #enviroSound:villageExplosions
Suddenly another explosion blows right near them, sending debris everywhere.
#speaker:Nimbus #portrait:nimbus_scared #layout:right:nimbus_scared #layout:left:oak_scared #layout:middle:tails_scared #layout:right:nimbus_scared_m
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

    +[Look for your friends]
        #speaker: #layout:left:tails_scared
        Tails starts walking slowly through the dust.
        His head is spinning and his paws are burning.
        #speaker: Tails #portrait:tails_scared
        Sparks? Oak? Nimbus?
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










