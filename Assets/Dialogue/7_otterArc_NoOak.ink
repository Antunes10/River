INCLUDE globals.ink

->main

=== main ===
#background:Dam
#speaker: #layout:left:nimbus_default #layout:middle:tails_default #layout:right:sparks_default_m
~unlockImage(3)
Hours pass and they reach a wider body of water, surrounded by gravel and bushes.
Trees block the skies again, as the river slithers inside another forest.
The wind doesn't howl, since the trees block it from entering that green place.
The water stops almost completely when the helmet enters an involuntary lake.
#speaker:Nimbus #portrait:nimbus_default
I think we have a problem.
#speaker:
As they get closer to the centre of the lake, the bird points towards a dam of debris, that blocks the river’s natural flow.
#speaker:Sparks #portrait:sparks_default
So that’s why there are trees inside the water.
The river can’t get out!
#speaker:Tails #portrait:tails_default
Let’s get a closer look.
#speaker:
The mouse pushes the helmet with some effort, and they approach the unnatural blockage.
Full of branches, debris and other leftovers of destruction, the dam rises above all of them.
Overshadowing their future progress.
#speaker:Sparks #portrait:sparks_scared #layout:right:sparks_scared_m
It’s huge!
#portrait:sparks_default #layout:right:sparks_default_m
What are we going to do?
#speaker:Tails #portrait:tails_default
We could carry on foot…
Or we could try to create a small breach so the helmet could fit.
#speaker:Nimbus #portrait:nimbus_default #layout:left:nimbus_default
It’s going to take ages just us three. Perhaps the helmet served its purpose.
#speaker:Sparks #portrait:sparks_default
Oh, but I liked it.
Oh, but I liked it.
#speaker:
The firefly pouts.
They had to decide.

+ [Abandon the helmet and go on foot.]
    #speaker:
    The mouse starts to steer their floating shell towards the shore.
	He then jumps unto land.
	#speaker:Tails #portrait:tails_sad #layout:middle:tails_sad
	There is no way we can breach that blockage…
	#speaker:
	He looks at the helmet that has carried them so far.
	#speaker:Tails #portrait:tails_sad
	It’s time to say goodbye to it.
	#speaker: #layout:right:sparks_sad_m #layout:left:nimbus_sad #layout:right:sparks_sad_m
	Their eyes sadden and antennas and ears are lowered.
	#speaker:Sparks #portrait:sparks_sad
	It helped us so much…
	#speaker:
	The small bug sniffs away her tears.
	#speaker:Nimbus #portrait:nimbus_default #layout:left:nimbus_default
	It’s alright Sparks, we will find another, I’m sure.
	#speaker:
    They all jump unto solid ground and with a last goodbye turn their backs to the helmet and press forward through the middle of the forest.
    A couple of minutes pass and the mantle of leaves thickens.
    The ground starts to become uneven, and an unnatural silence takes control.
    Something was afoot.
    #layout:middle:tails_scared #layout:left:nimbus_scared #layout:right:sparks_sad_m #speaker:Sparks #portrait:sparks_scared
    I don’t like this… It’s all quiet.
    I’m afraid, Mr. Tails.
    #speaker:
    They all look around nervously.
    #speaker:Tails #portrait:tails_scared
    Stay close to me, Sparks.
    #speaker:Nimbus #portrait:nimbus_default #layout:left:nimbus_default
    I don’t see humans around, but perhaps they have left something behind…
    #speaker:
    Their eyes wander around the ground, and they noticed that the soil has been tampered with.
    Their hearts begin to race.
    #speaker:Nimbus #portrait:nimbus_sad #layout:left:nimbus_sad
    This is bad… We need to turn back!
    #speaker:Tails #portrait:tails_default 
    What the hell did they leave behind?
    #speaker:
    They start to walk backwards when a metal click is heard.
    (Boom)

    ~gameOver()
    -> END

+ [Try to breach the dam.]
    #speaker:Tails #portrait:tails_default #layout:middle:tails_default_m
    Out there its dangerous and we go faster by water.
    Let’s try to find a way through.
    #speaker:Nimbus #portrait:nimbus_default
    What if we don’t find it?
    #speaker:Tails #portrait:tails_default
    Then we make one.
    #speaker:
    Nobody looks hopeful about the plan, but they get out of the helmet anyway.
    Spreading out, the animals start to evaluate the blockage.
    Nimbus jumps towards the top and is accompanied by Sparks that zigzags her way through the air.
    Lastly, Tails squirms through a breach and enters inside the dam to look for a way through.
    As a team they work efficiently.
    However there seems to be no way through.
    Tails goes back outside.
    #speaker:Tails #portrait:tails_default
    Did you find anything, Nimbus?
    #speaker:Nimbus #portrait:nimbus_default
    Not a damn thing.
    #speaker:Sparks #portrait:sparks_happy #layout:right:sparks_happy_m
    Ih, ih a damn thing in a dam…
    #speaker: #layout:middle:tails_happy
    The mouse smiles with the childish remark as he tries to figure out another plan.
    Suddenly something moves inside the water.
    #speaker:Sparks #portrait:sparks_scared #layout:right:sparks_scared_m
    What is that!?
    #speaker:
    They both look apprehensive to a shape moving underwater towards them.
    It seems dark and long.
    Sparks gets immediately behind is friend as the shape pops out of the water.
    #speaker:??? #portrait:hazel_default #layout:left:hazel_default #layout:right:nimbus_default_m #layout:sparks:sparks_default_m #layout:middle:tails_default_m
    Otter: Well, hello to you, little ones.
    #speaker:
    The mouse loses his stiffness has soon as the long and sharp Otter emerges and greets them.
    #speaker:Sparks #portrait:sparks_default #layout:sparks:
    Oh, my light! It’s a cat!
    #speaker: #layout:left:hazel_happy
    The mammal hides her laugher.
    #speaker:??? #portrait:hazel_happy
    Otter: I’m no cat, little one, cats are afraid of water.
    #speaker: 
    The bug peaks her head from behind Tails, transforming her fear into curiosity.
    #speaker:Sparks #portrait:sparks_default
    Then, what are you miss animal?
    #speaker:Hazel #portrait:hazel_happy
    I’m an Otter, and my name is Hazel!
    #speaker:Sparks #portrait:sparks_default
    Oh…
    My name is Sparks, and this is my friends Tails and Nimbus.
    #speaker:Hazel #portrait:hazel_happy
    Pleasure to meet you, fellow river travellers.
    What brings you to this small lake?
    #speaker:
    The bird descends a few steps until he’s at the water's level.
    #speaker:Nimbus #portrait:nimbus_default #layout:right:nimbus_default_m
    Good afternoon, Hazel.
    We are trying to get across with our "shell", but we can’t find a way through.
    Could you be help us? You seem to know this place quite well.
    #speaker:Hazel #portrait:hazel_happy
    Of course, sweet thing.
    I’m always up for helping visitors.
    The other day I helped a rabbit find a bigger log, to sail down the river.
    She had quite an entourage of little rabbits.
    #speaker:Sparks #portrait:sparks_happy #layout:sparks:sparks_happy_m
    She’s going West too! To the enchanted land!
    #speaker:
    The otter makes a curious face.
    #speaker:Hazel #portrait:hazel_default #layout:left:hazel_default
    Well, never heard of that place, but it seems quite nice.
    East I’ve only seen sadness and pain.
    That’s the only thing the river brings with it nowadays.
    #speaker:Nimbus #portrait:nimbus_default #layout:right:nimbus_default_m
    We can only image what you have seen.
    #speaker:
    The destruction, death and suffering of a destroyed village crosses Tails’ mind and he remembers what horrible things the river had to carry down West.
    The otter washes her hands vigorously.
    #speaker:Hazel #portrait:hazel_default
    Fear not. This otter is going to find a structural weakness and breach the damn thing.
    #speaker: #portrait:sparks_happy
    Ih, ih…
    #speaker: #layout:left:default
    The swimmer submerges and disappears underwater.
    The group gather on the top a long branch.
    #speaker:Sparks #portrait:sparks_happy 
    Miss Hazel seems quite nice.
    #speaker:Tails #portrait:tails_default #layout:middle:tails_default
    Indeed, we were lucky to find her.
    #speaker:
    A couple of minutes pass and they hear a crumbling sound from the far-left extremity of the dam.
    Debris crumble and a pathway is created, where the water starts flowing faster.
    #speaker:Hazel #portrait:hazel_happy #layout:left:hazel_happy
    Ta dah!
    #speaker:
    The otter emerges hands raised as if magic was used.
    #speaker:Sparks #portrait:sparks_happy #layout:middle:tails_default_m
    Hurray Miss Hazel, you’re the best!
    #speaker:
    They all jump aboard the "shell" and with the otter’s help they traverse the dam into the other side.
    #background:river
    The water runs slowly but steadily. Their progress would be slower but at least they were no longer stranded.
    The swimmer emerges.
    #speaker:Hazel #portrait:hazel_default #layout:left:hazel_default
    There you go, free flow to the West you go.
    #speaker:Sparks #portrait:sparks_default
    We can’t thank you enough Miss Hazel.
    #speaker:
    She makes a small bow and then raises her nose remembering something.
    #speaker:Hazel #portrait:hazel_sad #layout:left:hazel_sad
    Actually, if you’ll be so kind to give me a little food.
    It has been hard to find fish the last couple of days and I’m starving.
    #speaker:
    Looks inside the helmet to the little food they have left.
    
    ++ [Give some food]
        ~changeFood(-3)
        ~changeHope(1)
        
        #speaker:Tails #portrait:tails_default 
        We don’t have much to spare, but we can share a bit with you.
        #speaker:Sparks #portrait:sparks_happy
        Yes! You deserve it.
        #speaker:
        The otter receives the rations with a smile on her face.
        #speaker:Hazel #portrait:hazel_default #layout:left:hazel_happy
        Otter: You are most kind.
        Otter: It has been difficult lately.
        #speaker:Nimbus #portrait:nimbus_default 
        We understand. We all have lost something.
        The little we can do is share the burden with each other.
        #speaker:
        Their hearts get warm with the remark, and they share a wholesome moment.

    ++ [Deny her request]
        ~changeHope(-1)
        #speaker:Tails #portrait:tails_sad #layout:middle:tails_sad_m
        I am really sorry, Miss Otter…
        But we don’t have enough to share…
        #speaker: #layout:left:hazel_sad
        The otter’s face saddens, but she hurries to hide it.
        #layout:left:hazel_default #speaker:Hazel #portrait:hazel_default
        It’s alright my friends. I can still hold on a couple of days.
        I’m sure I’ll find food until then.
        #speaker:
        She smiled but Tails could fell a lack of faith in her own words.
        Then he thought about something that could mend the situation.

    --
    #speaker:Tails #portrait:tails_default #layout:middle:tails_default_m
    Do you want to come with us, Hazel?
    #speaker:
    The otter looks West and then back at the lake.
    #speaker:Hazel #portrait:hazel_default #layout:left:hazel_default
    Otter: I would love to, little mouse, but…
    Otter: Tomorrow others might need my help traversing the river.
    Otter: I must stay and do my part.
    #speaker:Sparks #portrait:sparks_default 
    You’re really kind Miss Hazel!
    I hope you can help those who need it.
    #speaker:
    They all wave their paws and wings and go their separate ways.
    The group was now closer to reaching their western destination.
    But clouds were gathering on the horizon.


-
~changeScene("EndDayScene")
->END
