INCLUDE globals.ink

-> main

=== main ===
#background:black
#speaker: #layout:left:oak_scared #layout:middle:tails_scared #layout:right:nimbus_scared_m #layout:sparks:sparks_scared_m
Explosions are heard.
They seem far away but at the same time too close.
War is all around in a forest of concrete mountains, where a battle is still taking place.
Landslides, craters, buildings turned to dust, bodies scattered. They paint a picture of mankind.
The helmet goes slowly and carefully.
#speaker:Oak #portrait:oak_sad #layout:left:oak_sad
Oak: I can hear humans a couple of blocks away.
Oak: We have entered their world.
Oak: The world of war.
#speaker:
Tails shivers at the thought of going through all of it again.
Smoke raises high with loads of fires drawing black clouds in the skies.
The city is huge and the destruction as so.
#speaker:Nimbus #portrait:nimbus_default #layout:right:nimbus_default_m
Nimbus: The mist we went through is not a natural one.
Nimbus: It is being created by the dust and smoke from this city.
Nimbus: Glad we decided to risk it and go through it.
#speaker: #layout:sparks:sparks_sad_m
The firefly gets closer to the mouse.
The one that has been with him from the begging.
#speaker:Sparks #portrait:sparks_sad
Sparks: I’m afraid, Mr.Tails.
Sparks: I don’t like the big booms.

+[Console him]
    ~increaseHope(1)
    ~currentHope = currentHope + 1 

    #speaker:Tails #portrait:tails_default #layout:middle:tails_default
    Tails: Don’t worry, Sparky. I will protect you, no matter what.
    #speaker:
    His eyes brighten up a bit.
    #speaker:Sparks #portrait:sparks_sad
    Sparks: Will you?
    #speaker:Sparks #portrait:tails_happy #layout:middle:tails_happy
    Tails: Yes, of course. And besides, we are almost at the enchanted land.
    Tails: We just have to leave this cursed place behind.
    #speaker: #layout:sparks:sparks_default_m
    The firefly hugged him.

+[Stay focused]
    ~ decreaseHope(1)
    ~ currentHope = currentHope - 1
    ~ stayedFocused = 1
    
    #speaker:Tails #portrait:tails_default #layout:middle:tails_default
    Tails: Right now, we must stay focused, Sparky.
    Tails: It does us no good to be fearful.
    #speaker: 
    The firefly got a bit sad but then he took his words at heart and focused on the surroundings.
    #speaker:Sparks #portrait:sparks_default #layout:sparks:sparks_default_m
    Sparks: Don’t worry, Mr.Tails, I won’t let you down.
    
-
#speaker:Sparks #portrait:sparks_scared #layout:sparks:sparks_scared_m
Sparks: Ahhh!
#speaker: #layout:middle:tails_scared
The ground blows up a few meters away from them.
Dust and debris fly everywhere as the dog protects the inside of the helmet with his hat.
#speaker:Tails #portrait:tails_sad
Tails: Is everyone alright?
#speaker:
They all nod in confirmation, but that premeditated optimist is silenced by a scream from the outside.
#speaker:Nimbus #portrait:nimbus_scared #layout:right:nimbus_scared_m
Nimbus: Someone is in danger.
#speaker:
The scream is heard again.
#speaker:Tails #portrait:tails_default #layout:middle:tails_default
Tails: Let’s see what it is.
#speaker: 
Arriving at a submersed square, they see a wheelbarrow turned around over some kind of structure.
The structure is already submerged, and the wheelbarrow is about to share the same fate.
#speaker:??? #portrait:blank
???: Help! Please!
#speaker: 
There is no one around and the screams are muffled.
#speaker:Oak #portrait:oak_sad #layout:left:oak_sad
Oak: It comes from inside the wheelbarrow.
Oak: Someone is trapped inside!
#speaker:Nimbus #portrait:nimbus_default #layout:right:nimbus_default_m
Nimbus: We must help them!
#speaker: 
They get close and immediately jump unto de structure.
A deep sound is heard as the ground shakes.
#speaker:Tails
Tails: Are you ok?
#speaker:??? #portrait:blank
???: I’m trapped, and the ground will not hold for too long.
#speaker: 
The deep sound is heard again.
There is a small hole on the top of the wheelbarrow. Only big enough for Sparks to enter.
#speaker:Nimbus #portrait:nimbus_default 
Nimbus: What are we going to do?

-> choice_panel

=== choice_panel ===

    +{not send_sparks_continuation}[Send Sparks inside]
        ~sentSparks = 1
        
        #speaker:Tails #portrait:tails_default #layout:middle:tails_default
        Tails: Sparks, there is a hole you can fit in up there.
        Tails: Go inside and see what’s going on.

        {stayedFocused == 0: -> send_sparks_inside1 | -> send_sparks_inside2}
    
    +[Try to lift the wheelbarrow]
        #speaker: 
        There was little time to act.
        #speaker:Tails #portrait:tails_default #layout:middle:tails_default
        Tails: Oak, Nimbus, help me lift this thing so she can get out of there.
        #speaker: #layout:left:oak_sad #layout:right:nimbus_sad_m
        Both animals seem a little apprehensive, but they accept the task.
        At the same time, they all place they paws, teeth and beak on the edge and start to push.
        The ground shakes.
        #speaker:Nimbus #portrait:nimbus_scared #layout:right:nimbus_scared_m
        Nimbus: It’s too heavy.
        #speaker:Oak #portrait:oak_sad
        Oak: Put your back into it!
        #speaker:
        Suddenly everything collapses and they are thrown into the cold water.
        #speaker:??? #portrait:
        ???: No, help!!
        #speaker: #layout:middle:tails_sad #layout:sparks:sparks_sad_m
        Terrified screams are heard from inside the metal dome.
        Tails’ paw gets stuck on the rubble beneath.
        IN a panic attack he tries to free himself…
        But in vain…
        The wheelbarrow sinks…
        Taking him with it to the abyss…
        
        ~gameOver()
        -> END

    +[Try to find a rope]
        #speaker:
        There was little time to act.
        #speaker:Tails #portrait:tails_default #layout:middle:tails_default
        Tails: Hurry find a rope!
        #speaker:
        First a bit confused, but then resolute, the group goes to shore and starts looking for a rope.
        The explosions get louder.
        #speaker:Nimbus #portrait:nimbus_default
        Nimbus: I found one!
        #speaker:
        The bird brings an old rope by the beak and drops it in front of them.
        The mouse takes one end and jumps into the water.
        He jumps over the dome and ties a knot around one of the handlers.
        #speaker:Tails #portrait:tails_default
        Tails: Pull!
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
        ~increaseFood(2)
        ~currentFood  = currentFood + 2
        
        #speaker:
        The little mouse understands that the rabbit will drown if they don’t seal that small hole.
        #speaker:Tails #portrait:tails_default  #layout:middle:tails_default
        Tails: Hurry, find something to seal this hole!
        #speaker:Nimbus #portrait:nimbus_default #layout:right:nimbus_default_m
        Nimbus: Why are we doing that?
        #speaker:Tails #portrait:tails_default
        Tails: Just do it.
        #speaker:
        They all seem a bit confused with Tails request, but they help him none less.
        A few minutes pass and Oak finds a garbage bag that they use to seal the small hole.
        #speaker:Tails #portrait:tails_happy #layout:middle:tails_happy
        Tails: Perfect!
        #speaker:
        He grabs the bag, climbs up and stuffs it in the hole, sealing it the best he can.
        #speaker:Nimbus #portrait:nimbus_default #layout:right:nimbus_default_m
        Nimbus: What now?
        #speaker:Tails #portrait:tails_default #layout:middle:tails_default
        Tails: Now we push the wheelbarrow into the lake.
        #speaker:Sparks #portrait:sparks_scared #layout:spars:sparks_scared_m
        Sparks: What?!
        #portrait:sparks_sad #layout:sparks:sparks_sad_m
        Sparks: But, Mr.Tails… She will drown!
        #speaker:Tails #portrait:tails_default
        Tails: No, she won’t. The wheelbarrow will stay afloat.
        The dog widens his eyes in a moment of realization.
        #speaker:Oak #portrait:oak_default #layout:left:oak_default
        Oak: Oh, you cheek!
        Oak: You are indeed a genius, Sir. Tails.
        #speaker:
        With a smirk on his face, the small rodent pushes the wheelbarrow with their help.
        The huge metal dome slides into the deep waters and…
        Stays afloat.
        #speaker:Sparks #portrait:sparks_happy #layout:sparks:sparks_happy_m
        Sparks: Wow! You’re a magician!
        #speaker: #layout:left:default
        With smiles and laughter, the mouse and the dog jump inside the water and push the wheelbarrow into the safety of the shore.
        There the task of turning it around becomes elementary.
        Underneath it is a brown rabbit and several parcels of food.
        #speaker:Nimbus #portrait:nimbus_default #layout:nimbus_default_m
        Nimbus: Lucky find!
        #speaker:Sparks #portrait:sparks_happy #layout:left:oak_default #layout:middle_right:tails_default_m #layout:middle_left:bunny_sad 
        Sparks: Hi there, miss Rabbit.
        Sparks: I’m Sparks, what is your name?
        #speaker:
        The rabbit raises her hears in alarm, looks into the building behind them…
        #layout:middle_left:default
        And darts to it.
        #speaker:Nimbus #portrait:nimbus_scared #layout:right:nimbus_scared_m
        Nimbus: What?!
        #speaker:Sparks #portrait:sparks_sad #layout:sparks:sparks_sad_m
        Sparks: Did I said something wrong?
        #speaker:
        They all stare blankly to the rodent that now enters the huge stone mountain, through a destroyed door.
        An explosion blows near them, and debris fly everywhere.
        #speaker:Tails #portrait:tails_default
        Tails: No time to lose! Take the food and follow the rabbit!
        Everyone wakes up from their slumber and with quick movements take the recently found food and run towards the door.
            
        ~changeScene("DialogueScene")
        ->END

    
-> DONE

=== send_sparks_inside1 ===
    #layout:sparks:sparks_default
    The firefly nods determined and flies inside the wheelbarrow.
-> send_sparks_continuation

=== send_sparks_inside2 ===
    #layout:sparks:sparks_default
    The firefly is still a frightened about the explosions.
    He takes a bit to understand Tails’ request and then flies inside the wheelbarrow.
-> send_sparks_continuation

=== send_sparks_continuation ===
    #layout:sparks:default
    Seconds pass.
    The explosions are starting to sound nearer.
    Not a moment too late, the little bug resurfaces.
    #speaker:Sparks #portrait:sparks_sad #layout:sparks:sparks_sad_m
    Sparks: It’s a rabbit!
    Sparks: She’s trapped inside, and the water is rising!
    #speaker:Oak #portrait:oak_sad #layout:left:oak_sad
    Oak: She will drown if we don’t take her out.
    #speaker:Sparks #portrait:sparks_default #layout:sparks:sparks_default_m
    Sparks: Also, there’s lots of food in there!
->choice_panel

=== try_to_find_rope_continuation ===
    +[Let go of the Wheelbarrow]
        #speaker:
        Not wanting to test is luck further, the little mouse lets go.
        Right before his friends lose their strength and let go of the rope.
        The wheelbarrow collapses and everything sinks into the deep waters.
        #speaker:Sparks #portrait:sparks_scared #layout:sparks:sparks_scared
        Sparks: Mr.Tails!
        Sparks: Mr.Tails!!
        #speaker:Tails #portrait:tails_default
        Tails: I’m alright, Sparks.
        #layout:sparks:sparks_sad_m #speaker:
        He swims towards them and reunited with his friends.
        They embrace him.
        Next to them the rabbit dries her fur and without any notice darts towards one of the buildings.
        #speaker:Nimbus #portrait:nimbus_scared #layout:right:nimbus_scared_m
        Nimbus: What was that?!?
        #speaker:Oak #portrait:oak_scared #layout:left:oak_scared
        Oak: No time to lose, lets follow the little rodent.
        Oak: We are vulnerable out here.
        #speaker:
        He signals the group, and they follow the rabbit inside one of the huge stone mountains.
        
        ~changeScene("DialogueScene")
        ->END

    +[Try to salvage some food]
        ->try_to_salvage_food
    
-> choice_panel

=== try_to_salvage_food ===
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
        Sparks: Mr.Tails!
        Sparks: Mr.Tails!!
        #speaker:Tails #portrait:tails_default
        Tails: I’m alright, Sparks.
        The mouse waves while floating over a plastic package of food.
        #layout:left:oak_scared #layout:sparks:sparks_sad #layout:right:nimbus_default
        He swims to the shore.
        #speaker:Tails #portrait:tails_default #layout:middle:tails_default
        Tails: Look what I found!
        #speaker:Oak #portrait:oak_scared
        Oak: That was not the most logical of actions.
        Oak: You nearly drowned.
        #speaker:Tails
        Tails: It was worth it.
        #speaker:
        Suddenly another explosion blows right near them, sending debris everywhere.
        #speaker:Nimbus #portrait:nimbus_scared #layout:right:nimbus_scared
        Nimbus: We must take shelter!
        Nimbus: We won’t survive if we stay out in the open!
        #speaker:
        The mouse looks around really fast and sees the rabbit running towards one of the buildings.
        He signals the group, and they follow her inside one of the huge stone mountains.
        
        ~changeScene("DialogueScene")
        ->END
        
    +[Try too salvage more food]
        #speaker:
        He knew they needed the food, so he reached for another package.
        This one was stuck under the wheelbarrow.
        He pulled with all his strength.
        And suddenly the metal dome fell hard.
        Darkness fell.
        The ground underneath him succumbed with the strength of the impact.
        And everything starts to sink.
        He tries to escape through the hole.
        But it was too small…
        He is pulled by the weight of metal…
        And drowns in the deep…
        
        ~gameOver()
        ->END

-> choice_panel










