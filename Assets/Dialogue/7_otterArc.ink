INCLUDE globals.ink

->main

=== main ===
#background:Dam #enviroSound:forest
#speaker: #layout:left:oak_default #layout:middle:tails_default #layout:right:nimbus_default_m #layout:sparks:sparks_default_m
~unlockImage(7)
~unlockImage(1)
Hours pass, and they reach a wider body of water, surrounded by gravel and bushes.
Trees block the skies again, as the river slithers inside another forest.
The wind doesn't howl, since the trees block it from entering that green place.
The water stops almost completely when the helmet enters an involuntary lake.
#speaker:Nimbus #portrait:nimbus_default
I think we have a problem.
#speaker:
As they get closer to the center of the lake, the bird points towards a dam of debris, that blocks the river’s natural flow.
#speaker:Sparks #portrait:sparks_default
So that’s why there are trees inside the water.
#speaker:Oak #portrait:oak_sad #layout:left:oak_sad
The river is blocked, and this place was never a lake until recently.
#speaker:Tails #portrait:tails_default 
Let’s get a closer look.
#speaker:
The mouse pushes the helmet with some effort and they approach the unnatural blockage.
Full of branches, debris and other leftovers of destruction, the dam rises above all of them.
Overshadowing their future progress.
#speaker:Sparks #portrait:sparks_scared #layout:sparks:sparks_scared_m
It’s huge!
#portrait:sparks_default #layout:sparks:sparks_default_m
What are we going to do?
#speaker:Tails #portrait:tails_default
We could carry on foot…
Or we could try to create a small breach, so the helmet could fit.
#speaker:Nimbus #portrait:nimbus_default #layout:right:nimbus_default_m
It’s going to take ages, just us four. Perhaps the helmet served its purpose.
#speaker:Sparks #portrait:sparks_default
Oh, but I liked it.
#speaker:
The firefly pouts.
#speaker:Oak #portrait:oak_default
The river offers protection from men, it would be wise to keep traversing it.
#speaker:
They had to decide.

+[Abandon the helmet and go on foot]
    #speaker:
    The mouse starts to steer their floating shell towards the shore.
	He then jumps unto land.
	#speaker:Tails #portrait:tails_sad #layout:middle:tails_sad
	There is no way we can breach that blockage…
	#speaker:
	He looks at the helmet that has carried them so far.
	#speaker:Tails #portrait:tails_sad
	It’s time to say goodbye to it.
	#speaker: #layout:sparks:sparks_sad_m #layout:left:oak_sad #layout:right:nimbus_sad_m
	Their eyes sadden and antennas and ears are lowered.
	#speaker:Sparks #portrait:sparks_sad
	It helped us so much…
	#speaker:
	The small bug sniffs away her tears.
	#speaker:Nimbus #portrait:nimbus_default #layout:right:nimbus_default_m
	It’s alright Sparks, we will find another, I’m sure.
	#speaker:
    They all jump unto solid ground and with a last goodbye turn their backs to the helmet and press forward through the middle of the forest.
    A couple of minutes pass and the mantle of leaves thickens.
    #enviroSound:silence #music:nimbus
    The ground starts to become uneven, and an unnatural silence takes control.
    #speaker:Oak #portrait:oak_scared #layout:left:oak_scared
    I don’t like this… I smell humans.
    Perhaps it's better if we go back.
    #speaker: #layout:middle:tails_scared #layout:right:nimbus_scared_m
    They all look around nervously.
    #speaker:Tails #portrait:tails_scared
    I don’t see any of them…
    #speaker:Oak #portrait:oak_scared 
    Perhaps, but I can smell them…
    They might have left something here.
    #speaker:Nimbus #portrait:nimbus_default
    Traps?
    #speaker:
    Their eyes wander around the ground, and they noticed that the soil has been tampered with.
    Their hearts began to race.
    #speaker:Oak #portrait:oak_sad #layout:left:oak_sad
    This is bad… We should not have taken this path.
    #speaker:Tails #portrait:tails_default 
    What the hell did they leave behind?
    #speaker:
    They start to walk backwards when a metal click is heard.
    (Boom)

    ~gameOver()
        -> END

+[Try to breach the dam]
    #speaker:Tails #portrait:tails_default #layout:middle:tails_default_m
    Out there it's dangerous and we go faster by water.
    Let’s try to find a way through.
    #speaker:Nimbus #portrait:nimbus_default
    What if we don’t find it?
    #speaker:Tails #portrait:tails_default
    Then we make one.
    #speaker: 
    Nobody looks hopeful about the plan, but they get out of the helmet anyway.
    Spreading out, the animals start to evaluate the blockage.
    #layout:left:default
    Oak stays in the water, checking near the bottom.
    Nimbus jumps towards the top and is accompanied by Sparks that zigzags her way through the air.
    Lastly, Tails squirms through a breach and enters inside the dam to look for a way through.
    As a team, they work efficiently.
    However, there seems to be no way through.
    Tails goes back outside.
    #speaker: Tails #portrait:tails_default
    Did you find anything, Nimbus?
    #speaker:Nimbus #portrait:nimbus_default
    Not a damn thing.
    #speaker:Sparks #portrait:sparks_happy #layout:sparks:sparks_happy_m
    Ih, ih a damn thing in a dam…
    #speaker: #layout:middle:tails_happy
    The mouse smiles with the childish remark and turns to the brown fur down in the water.
    #speaker:Tails #portrait:tails_default #layout:middle:tails_default_m
    And you, Sir Oak?
    #music:hazel
    #speaker:??? #portrait:hazel_default #layout:left:hazel_default
    Well, hello to you too, but my name is not Sir Oak.
    #speaker:Hazel #portrait:hazel_happy #layout:left:hazel_happy
    I’m Hazel.
    #speaker:
    The mouse has to look twice to understand his mistake.
    The brown mass down there is not his dog friend, but rather a long and sharp Otter that swims around happily.
    #speaker:Sparks #portrait:sparks_scared #layout:sparks:sparks_scared_m
    Oh, my light! She ate Mr. Oak!
    #speaker:Hazel #portrait:hazel_default #layout:left:hazel_default
    Well… oaks are quite tasteful.
    #speaker: 
    The young firefly’s face gets pale.
    #speaker:Sparks #portrait:sparks_scared
    The horror!
    #speaker:Nimbus #portrait:nimbus_default #layout:right:nimbus_default_m
    You doofus, Sparky. She’s talking about the tree, not our dog.
    #speaker:Sparks #portrait:sparks_scared
    Oh…
    #speaker:Hazel #portrait:hazel_default #layout:sparks:sparks_default_m
    Quite right, feathery friend. We Otters aren’t fans of eating dogs.
    #portrait:hazel_scared #layout:left:hazel_scared
    But beavers tell us oaks are tasteful. Although I never tried.
    #layout:left:hazel_default #speaker:
    As destined, the fourth companion emerges from underwater, shaking away the excessive water that now drips heavily from his hat and fur.
    #speaker:Oak #portrait:oak_default #layout:right:oak_default_m
    Look who I was fortunate to find.
    Otters are masters of dams. If anybody can help us, it's her.
    #speaker:Hazel #portrait:hazel_happy #layout:left:hazel_happy
    Actually… those are beavers…
    #portrait:hazel_default #layout:left:hazel_default
    But is the dam bothering you?
    #speaker:
    The mouse descends a few steps until he’s at the water's level.
    #speaker:Tails #portrait:tails_default
    Afternoon Miss Hazel.
    We are trying to get across with our "shell", but we can’t find a way through.
    Would you be kind enough to help us?
    #speaker:Hazel #portrait:hazel_happy #layout:left:hazel_default
    Of course, sweet thing.
    I’m always up for helping visitors.
    #portrait:hazel_sad #layout:left:hazel_sad
    The other day I helped a rabbit find a bigger log, to sail down the river.
    She had quite an entourage of little rabbits.
    #speaker:Oak #portrait:oak_sad #layout:right:oak_sad_m
    Probably going West too. It is the smartest thing to do with the war going on.
    #speaker: 
    The otter makes a disgusted face.
    #speaker:Hazel #portrait:hazel_sad
    You are absolutely right. Wars are awful.
    They only bring sadness and pain.
    That’s the only thing the river brings with it nowadays.
    #speaker:Tails #portrait:tails_sad #layout:middle:tails_sad_m
    I can only image what you have seen.
    #speaker:
    The destruction, death and suffering from a destroyed village crosses Tails’ mind, and he remembers what horrible things the river had to carry down West.
    The otter washes her hands vigorously.
    #speaker:Hazel #portrait:hazel_happy #layout:left:hazel_default
    Fear not. This otter is going to find a structural weakness and breach the damn thing.
    #speaker:Sparks #portrait:sparks_happy #layout:sparks:sparks_happy_m
    Ih, ih…
    #speaker: #layout:left:default
    The swimmer submerges and disappears underwater.
    Nimbus and Sparks take the time to get down to the water’s level.
    #speaker:Sparks #portrait:sparks_happy 
    Miss Hazel seems quite nice.
    #speaker:Tails #portrait:tails_default #layout:middle:tails_default
    Indeed, we were lucky to find her.
    #speaker:
    A couple of minutes pass, and they hear a crumbling sound from the far left extremity of the dam.
    Debris crumble, and a pathway is created, where the water starts flowing faster.
    #speaker:Hazel #portrait:hazel_happy #layout:left:hazel_happy
    Ta dah!
    #speaker:
    The otter emerges, hands raised as if magic was used.
    #speaker:Sparks #portrait:sparks_happy #layout:middle:tails_default_m
    Hurray Miss Hazel, you’re the best!
    #speaker:
    They all jump aboard the "shell" and with the otter’s help they traverse the dam into the other side.
    #background:river
    The water runs slowly but steadily. Their progress would be slower, but at least they were no longer stranded.
    The swimmer emerges.
    #speaker:Hazel #portrait:hazel_default #layout:left:hazel_default
    There you go, free flow to the West you go.
    #speaker:Sparks #portrait:sparks_default
    We can’t thank you enough, Miss Hazel.
    #speaker:
    She makes a small bow and then raises her nose, remembering something.
    #speaker:Hazel #portrait:hazel_sad #layout:left:hazel_sad
    Actually, if you’ll be so kind to give me a little food.
    It has been hard to find fish the last couple of days, and I’m starving.
    #speaker:
    Tails looks inside the helmet to the little food they have left.
    
    ++[Give food]
        ~changeFood(-3)
        ~changeHope(1)

        #speaker:Tails #portrait:tails_default 
        We don’t have much to spare, but we can share a bit with you.
        #speaker:Sparks #portrait:sparks_default
        Yes! You deserve it.
        #speaker:
        The otter receives the rations with a smile on her face.
        #speaker:Hazel #portrait:hazel_happy #layout:left:hazel_happy
        You are most kind.
        It has been difficult lately.
        #speaker:Nimbus #portrait:nimbus_default 
        We understand. We all have lost something.
        The little we can do is share the burden with each other.
        #speaker:
        Their hearts get warm with the remark, and they share a wholesome moment.

    ++[Deny her request]
        ~changeHope(-1)
        
        #speaker:Tails #portrait:tails_sad #layout:middle:tails_sad_m
        I am really sorry, Miss Otter…
        But we don’t have enough to share…
        #speaker: #layout:left:hazel_sad
        The otter’s face saddens, but she hurries to hide it.
        #layout:left:hazel_default #speaker:Hazel #portrait:hazel_default
        It’s alright, my friends. I can still hold on a couple of days.
        I’m sure I’ll find food until then.
        #speaker:
        She smiled, but Tails could fell a lack of faith in her own words.
        Then he thought about something that could mend the situation.

    --
    #speaker:Tails #portrait:tails_default #layout:middle:tails_default_m
    Do you want to come with us, Hazel?
    #speaker:
    The otter looks West and then back at the lake.
    #speaker:Hazel #portrait:hazel_default #layout:left:hazel_default
    I would love to, little mouse, but…
    Tomorrow, others might need my help traversing the river.
    I must stay and do my part.
    #speaker:Oak #portrait:oak_default #layout:right:oak_default_m
    Honorable and caring. May you receive as much as you give, Miss Hazel.
    #speaker:
    They all wave their paws and wings and go their separate ways.
    The group was now closer to reaching their western destination.
    But clouds were gathering on the horizon.

-
~changeScene("EndDayScene")

->END