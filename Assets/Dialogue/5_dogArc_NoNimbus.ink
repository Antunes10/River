INCLUDE globals.ink

->main

=== main ===

#background:villageSquare
#speaker: #layout:left:tails_default #layout:right:sparks_sad_m
#music:villageArrival
~unlockImage(13)
Sun shines.
The bright rays pierce the dead leaves that cover the shelter and signals the start of a new day.
Tails opens is eyes and sees the firefly still lying down.
He yawns and gets up to meet a warm sunbath.
#speaker:Tails #portrait:tails_happy #layout:left:tails_happy
Rise and shine, sleepyhead.
#speaker:Sparks #portrait:sparks_sad #layout:right:sparks_sad_m
Can I stay a bit longer? I’m not used to waking up this early.
#speaker:
The little bug hides his face with a bit of foliage.
#speaker:Tails #portrait:tails_default #layout:left:tails_default
I guess that’s ok. But we will have to depart in a bit.
#speaker: #layout:right:default #layout:left:default #layout:middle:tails_default
The lazy youngling dozes off.
#speaker:Tails 
It seems the juvenile sleepiness is common for all species.
#speaker: #layout:middle:tails_happy 
The mouse smiles entertained with his own remark.
He should take the time to check the rest of the village. He might get lucky and find some food.

#speaker: #layout:middle:tails_default
The morning brings a soothing humidity to the world, but it is not enough to cover the markings of destruction that surround them.
The road is a bit drier than yesterday.
Suddenly his hair gets bristly.
His nose sniffs a new scent and he get a bit apprehensive.
#speaker:Tails #portrait:tails_scared #layout:middle:tails_scared
Dog…
#speaker:
The mouse gets stiff.
He knows humans use them to keep other animals away.
He had seen mice teared to shreds by angry mongrels.


+[Look for the dog]
    #speaker:
    The mouse gathers his courage and steps forward.
    He roams around, following the invisible line.
    Goes over a downed fence and arrives at an open space with a well at its centre.
    Next to it a brown dog sniffs the inside of a wooden bucket.
    It has a small tail, pointing down, while his head is obstructed from vision.
    He his ten times bigger than him.
    Was this really a good idea?
    
    ++[Go back]
        He was being too reckless and not thinking of everyone involved.
        A mouse could escape a rabid dog, but it also could get eaten.
        And what would happen to Sparks, if he was left alone in this hellish world.
        He decides to turn around.
        And totally unprepared finds the dog behind them.

    ++[Go talk to the dog]
        He doesn’t know him. Perhaps he could be of help.
        The mouse turns to face the well, but the dog isn’t there anymore.
        He feels the earth move behind him and turns around…
        Only to find the huge dog right in front of them.
    --
    #layout:middle:default #layout:left:tails_scared #layout:right:oak_default_m
    He jumps terrified.
    The dog’s dark eyes are locked on him.
    #speaker:??? #portrait:oak_default
    Dog: What are you doing here?
    #speaker:
    The mouse is catatonic.
    #speaker:Oak #portrait:oak_default
    Dog: Are you afraid of old Oak?
    #speaker:
    The canine seems genuinely confused.
    Tails takes the initiative still shaking from the scare.
    #speaker:Tails #portrait:tails_scared
    We… I’m just passing by…
    I’m not looking for trouble, please let me go.
    #speaker:
    The dog raises one eyebrow.
    #speaker:Oak #portrait:oak_default
    Why would old Oak prevent you gentleman from leaving?
    #speaker:Tails #portrait:tails_scared
    I… don’t know…
    Because you want to eat me?
    #speaker:Oak #portrait:oak_default
    That would be most uncivilized.
    Old oak does not eat little animals.
    #portrait:oak_happy #layout:right:oak_happy_m
    Old oak only eats canned food, cooked food and delicious white cookies from the pastry down the road.
    Tails doesn’t how to react.
    #speaker:Tails #portrait:tails_default #layout:left:tails_default #layout:right:oak_default_m
    I am Tails...
    Together with a small firefly I’m trying to escape this calamity and find refuge to the West.
    We wandered into this village to spend the night.
    #speaker: #layout:right:oak_default_m
    The dog smiles.
    #speaker:Oak #portrait:oak_happy
    What a marvellous pair you make.
    It is a pleasure to get your acquaintance.
    #speaker: #layout:right:oak_default_m
    The dog makes a small bow, and the recipient tries to respond, doing it awkwardly.
    #speaker:Tails #portrait:tails_default
    And what are you doing here… Old Oak?
    #speaker: #layout:right:oak_happy_m
    The dog laughs out loud.
    #speaker:Oak #layout:right:oak_default_m #portrait:oak_default
    Oh no, “old” is merely used adjectively, ah, ah.
    My name is merely “Oak”.
    #speaker:Tails #portrait:tails_default 
    Forgive me. What are you doing here, Oak?
    #speaker:Oak #portrait:oak_default 
    This is my village you see. Or was.
    It was attacked by the other humans that came from the East.
    My owner advised me to run to the woods and wait for the "storm of fire" to pass.
    And so, I did. Although he never came back to meet me.
    Consequently, I came back to him. I know by scent that he is still around.
    
    ++[Offer to help]
        ~recruitOak()
        ~oakRecruited = 1
        ~increaseHope(1)
        ~currentHope = currentHope + 1
        #speaker:Tails #portrait:tails_default
        I could help you find him.
        #speaker: #layout:right:oak_happy_m
        The dog smiles.
        #speaker:Oak #portrait:oak_happy
        That would be most kind.
        #speaker:Tails #portrait:tails_default
        Could you give me a description?
        #speaker:Oak #portrait:oak_default #layout:right:oak_default_m
        He is grey already. With fur on his face, bright eyes and forest-coloured clothes.
        Oh! And he wears a green hat that looks like a bucket.
        
        {found_food == 1: 
            #speaker:
            The image of the man lying on the ground in the rain flashes on the mouse’s mind.
            #layout:left:tails_sad
            His eyes lower with sadness.
            #speaker:Tails #portrait:tails_sad
            I think I know where he is.
            #speaker:Oak #layout:right:oak_sad_m #portrait:oak_sad
            Oh…
            #speaker:
            The rodent does not share his master’s fate, but the dog lowers his ears, feeling it.
            Sometimes words aren’t needed to give the most unwanted news.
            They traverse the village with no hurry, arriving at the scene.
            The old man is still motionless on the ground.
            Alone.

            - else:
            #speaker:Tails #portrait:tails_default
            With both our noses it should be faster.
            #speaker:
            They agree and start looking for the man.
            Clouds start to gather.
            The humidity does not help to identify the different scents.
            #layout:right:oak_sad_m #layout:left:tails_sad
            It takes a couple of minutes until the dog freezes.
            In front of him lies an old man motionless on the ground.
            Alone.
        }
        
        #speaker:
        The dog approaches him and sniffs him, licking his face for a bit.
        He then sits silently, looking at the ephemerality of life.
        The wind howls and rain starts to fall.
        The dog grabs the owner’s hat and places it on his.
        #speaker:Oak #portrait:oak_sad 
        I should have stayed, you old fool…
        I should have stayed.
        #speaker:
        Tails places his paw on the brown fur.
        #speaker:Tails #portrait:tails_sad
        I’m sorry…
        #speaker:
        The dog sniffs.
        #speaker:Oak #portrait:oak_sad
        It is alright. I was already expecting it, once he did not came back.
        With age comes the acceptance of life and death.
        And I am already old…
        #speaker:
        A band of birds flies away from the tall grass, spooked with something.
        Silence reigns.
        #layout:left:tails_scared
        The mouse looks around, worried.
        #layout:right:oak_scared_m
        In that moment one of the dog’s ears rises up.
        And his eyes widen up.
        #speaker:Oak #portrait:oak_scared
        RUN!
        Explosions!
        #speaker:
        The mouse doesn’t know how to react, so Oak grabs him by the mouth and tosses him over his back.
        He runs towards the river, barking to alert every animal in the vicinity.
        #layout:middle:sparks_default_m
        The firefly arrives moments after.
        #speaker:Sparks #portrait:sparks_default
        Heya, friends, what’s going on, why are you running?
        #speaker:
        The moment the question is asked a huge bang is heard nearby.
        #speaker:Sparks #portrait:sparks_scared #layout:middle:sparks_scared_m
        AH!
        #speaker:
        They all rush to push the helmet into the water.

    ++[Wish him luck and go on your way]
        #speaker:Tails
        I hope you find your human friend. I have to go now.
        #speaker:
        The dog smiles with kindness and goes back to sniffing around.
    
    --


+[Get away from the village]
    #speaker:
    He goes back to the shelter.
    #layout:middle:default #layout:left:tails_default #layout:right:sparks_default_m
	Where the little bug is still lying down.
	#speaker:Tails #portrait:tails_default
	Come on Sparks, it's time to get on our way.
	#speaker: 
	The firefly rises up disappointed.
	#speaker:Sparks #portrait:sparks_sad #layout:right:sparks_sad_m
	Fine, fine. I’m up and flying.
	#speaker:
	Suddenly the sound of birds fleeing is heard.
    They go outside curious and see a band of birds disappearing in the clouds.
    #speaker:Tails #portrait:tails_scared #layout:left:tails_scared
    Something is wrong.
    Let’s go back to the shell and get away from this place.
    #speaker:
    They walk towards where they left the helmet and push it into the waters.
    When suddenly a huge explosion is heard nearby.
    #speaker:Sparks #portrait:sparks_scared #layout:right:sparks_scared_m
    AH!
    #speaker:
    They take cover inside the helmet.
    #speaker:Tails #portrait:tails_scared
    Let’s get away from here!
-
~changeScene("RiverScene")
->END