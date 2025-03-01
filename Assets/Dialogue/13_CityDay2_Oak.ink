INCLUDE globals.ink

->main

=== main ===
#background:city

{
- hasCotton():

    {
        - hasNimbus():
            #speaker:Nimbus #layout:middle_left:tails_default #layout:middle:nimbus_scared #portrait:nimbus_scared #layout:left:bunny_scared
            Look!
        - else:
            #speaker:Cotton #layout:middle_left:tails_default #layout:middle:bunny_scared #portrait:bunny_scared
            Look!
    }

    #speaker:
    Tails stops the helmet and looks towards the shore.
    A green hat sits under a rock.
    #speaker:Tails #layout:middle_left:tails_scared #portrait:tails_scared
    It's Oak's!
    #speaker:
    He directs the helmet onto the shore.
    #layout:middle_left:tails_sad #layout:right:bunny_sad_m #layout:middle:default #layout:left:default
    {
        - hasNimbus():
            #layout:middle_right:nimbus_sad_m #layout:middle:default
    }
    As he approaches it, he notices some blood stains...
    In front of them a huge building has collapsed.
    #speaker:Cotton #layout:right:bunny_default_m #portrait:bunny_default
    Let's not think the worse, he might have taken refuge in there.
    Go. I'll keep watch over the "shell" and his hat.
    #speaker:
    Tails heeds her words and darts inside the building.

    -> Oak_Arc

- else:

    #speaker:
    #layout:middle_left:tails_default
    {- hasNimbus():
        #layout:middle:nimbus_default
    }
    Suddently a green thing catches Tails eyes.
    Stopping the helmet he looks towards the shore.
    A green hat sits under a rock.
    #speaker:Tails #layout:middle_left:tails_scared #portrait:tails_scared
    {- hasNimbus():
        #layout:middle:nimbus_scared
    }
    Oak!
    #speaker:
    He directs the helmet onto the shore.
    #layout:middle_left:tails_sad
    {- hasNimbus():
        #layout:right:nimbus_sad_m
        #layout:middle:default
    }
    As he approaches it, he notices some blood stains...
    In front of him a huge building has collapsed.
    {
        - hasNimbus():
            #speaker:Nimbus #layout:right:nimbus_default_m #portrait:nimbus_default
            He's alright for sure, don't worry Tails.
            He probably hidded in there.
            Go. I'll keep watch over the "shell" and his hat.
            #speaker:
            Tails heeds his words and darts inside the building.
            -> Oak_Arc
    }
    He wastes no time, storing the hat inside the helmet and going inside the building.

    -> Oak_Arc
}


== Oak_Arc ==
#background:Collapsed #layout:middle_left:default #layout:right:default #layout:middle:default #layout:middle_right:default
Dust hangs in the air, while an inconsistent mountain of rocks and debris create a system of caves and tunnels.
Tails slithers through the gaps until he finds blood stains on the ground.
#speaker:Tails #layout:middle_left:tails_sad #portrait:tails_sad
Oak... please be alive...
Please...
#speaker:
The little mouse follows the red trail...
Until finally he arrives at a small cave, where the light enters through a gap.
Under a collapsed piece of floor that formed a small "cave", a brown dog is laying licking his bloody paw.
#speaker:Tails #layout:middle_left:tails_happy #portrait:tails_happy
Oak!
#speaker: #layout:right:oak_default_noHat
The mouse runs towards him and gives him an emotional hug.
#speaker:Oak #portrait:oak_default_noHat
Hello, little fella.
Glad to see you well.

++[Glad to see you too]
    #speaker:Tails #portrait:tails_happy
    Glad to see you too!
    #speaker:Tails #layout:middle_left:tails_default #portrait:tails_default
    I looked for you everywhere.
    #layout:middle_left:tails_sad #portrait:tails_sad
    When I saw your hat, I though...
    I thought the worse...

++[Are you okay?]
    #speaker:Tails #portrait:tails_default #layout:middle_left:tails_default
    Are you okay?
    I saw blood stains on your hat...

--

#speaker:Oak #portrait:oak_default_noHat #layout:right:oak_default_noHat
I ran away from several explosions and took refuge in this "stone mountain".
When sudently it was hit and collapsed.
I managed to survive...
But unfurtunately my leg was hurt.
#speaker:
Explosions start again in the distance.
#speaker:Tails #portrait:tails_default #layout:middle_left:tails_default
We have to get out of here Sir… ah… Oak.
I found the "shell" again.
We can use it to go to a safe place I've found.
#speaker: #layout:right:oak_sad_noHat
The mouse moves towards the exit, but the old dog stays silent...
Looking into the horizon, through the broken window on the far wall.

++[Ask what he is thinking about]
    #speaker:Tails #portrait:tails_default
    I can see something is bugging you. Do you want to share it?
    #speaker: 
    Oak looks down pensative.
    #speaker:Oak #portrait:oak_sad_noHat #layout:right:oak_sad_noHat
    I can't go back...
    #speaker:
    His voice is almost whispered.
    The mouse is taken aback by the thought.
    #speaker:Tails #portrait:tails_default
    Nonsense.
    #portrait:tails_happy #layout:middle_left:tails_happy
    Your wound isn't that bad... We can patch it once we reach the safe place I've found.

++[Urge him to move]
    #speaker:Tails #portrait:tails_default
    Please, you have to move.
    If those explosions reach us, we might not survive.

--

#speaker:
Oak looks to the ground.
His aura darkens even more.
#speaker:Oak #portrait:oak_sad_noHat
I...
I lied...
#speaker: #layout:middle_left:tails_default
The mouse gets confused.
#speaker:Tails #portrait:tails_default
What do you mean?
#speaker:Oak #portrait:oak_sad_noHat
There is no valley.
I was never there.
I fabricated those stories to keep the young ones hopeful.
But now I fear it will do more harm than good…
#speaker: #layout:middle_left:tails_sad
Tails heart falls.
Was it all a lie?
Was it all worth it?

++[You did the right thing]
    #speaker:Tails #portrait:tails_sad #layout:middle_left:tails_sad #layout:right:oak_sad_noHat
    You did it to protect us.
    You did it to keep us going.
    #speaker:Oak #portrait:oak_sad_noHat
    It’s still a lie.
    What if we die in this city.
    What if my lie is revealed and everyone gives up because the hope it created is now too dear to lose.
    #speaker:
    The dog faces Tails.
    #speaker:Oak #portrait:oak_sad_noHat
    I am old, little mouse.
    I have seen so much death and destruction… I don’t know if I can bare see it again…
    Specially if I am to blame.

++[We shouldn't dwell on the Past]
    #speaker:Tails #portrait:tails_sad #layout:middle_left:tails_sad #layout:right:oak_sad_noHat
    What is done is done.
	No use thinking about it now.
	We should focus on what can be done.
	#speaker:Oak #portrait:oak_sad_noHat
	And what can we do?
	Everything is destroyed.
	And my lies brought us here.
	To this forsaken city…
	
--

++[We should never lose Hope]
    #speaker:Tails #portrait:tails_sad #layout:middle_left:tails_sad #layout:right:oak_sad_noHat
    It is the hope that keeps us going.
    #portrait:tails_default #layout:middle_left:tails_default
    And hope is always based on lies.
    On the idea we can survive when we should not.
    The idea that everything is going to be alright, when it seems impossible.
    #speaker:
    The dog looks around to the city engulfed by war.
    #speaker:Oak #portrait:oak_sad_noHat
    And do you believe we are going to survive this?
    #speaker:Tails #portrait:tails_default #layout:middle_left:tails_default
    I do.
    It might be a lie that I tell myself.
    But what dark life would we live in, if there was no space for foolish hope.
    #speaker:
    The dog smiles.
    #speaker:Oak #portrait:oak_happy_noHat #layout:right:oak_happy_noHat
    Not one worth living.
    #speaker:
    Tails smiles and hugs his fellow friend.
    #speaker:Tails #portrait:tails_default
    You lied because you care.
    #speaker:
    Oak’s paw brushes the little mouse’s ears and his huge nose sniffs the beautiful pain that grips his heart.
    #speaker:Oak #portrait:oak_happy_noHat
    Thank you, my small friend.
    For reminding me of things one should never forget.
    #speaker:Tails #portrait:tails_happy #layout:middle_left:tails_happy
    That’s what old age does. Makes you forget things.
    #speaker:
    They both laugh at the remark. Bringing a bit of joy to that dark place.
    Tails helps Oak up and they both find a way out of the collapsed building.
    ~recruitOak(true)
    -> Oak_saved

++[We are stronger than we think]
    #speaker:Tails #portrait:tails_sad #layout:middle_left:tails_sad #layout:right:oak_sad_noHat
    You shouldn’t underestimate us.
    We are stronger than you think.
    We made it this far.
    #speaker:
    The dog look straight at Tails and his eyes pierce him with a hopeless light.
    #speaker:Oak #portrait:oak_sad_noHat
    You don’t know humans as I do.
    We are nothing to the powers they can bring forth.
    Just look outside and you will see what they are capable of.
    I am sorry, little mouse, but we are not strong.
    This place will be the death of us...
    And I am to blame for giving you hope, when there was none.
    #speaker:
    The dog nestles on the ground, with his sad eyes facing the wall.
    #speaker:Oak #portrait:oak_sad_noHat
    Go...
    Leave me here...
    #speaker:
    Tails tears flood his eyes.
    There is nothing he can do.
    He didn’t manage to give him the hope Oak needed to go on.
    He turns his back to his friend and leaves.
    -> Oak_lost

== Oak_saved ==
#speaker: #background:city #layout:middle_left:default #layout:right:default
After a bit of effort they finnally see daylight again.

{
- hasCotton():
    #layout:left:bunny_scared #layout:middle_right:tails_default_m #layout:right:oak_default_noHat
    Cotton sees them and she hurries to join them.
    #speaker:Cotton #layout:left:bunny_happy #portrait:bunny_happy
    You've found your friend!
    That's so good!
    #speaker: #layout:middle_right:tails_happy_m #layout:right:oak_happy_noHat
    Her smile radiates a positive energy that invades both of them.
    #speaker:Tails #portrait:tails_happy
    Cotton, this is Oak.
    Oak, this is Cotton.
    #speaker:Oak #portrait:oak_happy_noHat
    A pleasure to meet you my lady.
    I am happy this little fella managed to save you from that apparatus yesterday.
    #speaker:Cotton #portrait:bunny_default #layout:left:bunny_default
    He saved me from more than that...
    #speaker: #layout:left:bunny_scared
    Suddently her eyes widen.
    She takes the green hat from behind a rock and gives it to the old dog.
    #layout:right:oak_happy_m #layout:left:bunny_default
    He places it in his head with a smile.

    {hasNimbus():
        #layout:middle_left:nimbus_default #portrait:nimbus_default #speaker:Nimbus
        That hat really fits you, old dude...
        #speaker: #layout:right:oak_happy_m
        The bird joins the party and Oak smiles in return.
        #speaker:Oak #portrait:oak_happy
        Glad to see you safe and sound old chap.
        I mean... young chap.
        #layout:middle_left:nimbus_happy
    }

    #speaker: #layout:left:bunny_happy #layout:middle_right:tails_happy_m
    They all laught together.
    #speaker:Tails #portrait:tails_default #layout:middle_right:tails_default_m
    It's time to decide what to do next.
    -> conclusion

-else:
    {- hasNimbus():
        #layout:middle_left:nimbus_default #layout:middle_right:tails_default_m #layout:right:oak_default_noHat
        #speaker:
        The bird joins them with a smile on his face.
        #speaker:Nimbus #portrait:nimbus_happy #layout:middle_left:nimbus_happy
        Glad to see you healthy, Oak!
        #speaker:
        He then proceeds to place the green hat on his friend's head.
        #speaker:Nimbus #portrait:nimbus_default #layout:middle_left:nimbus_default
        That hat really fits you, old dude...
        #speaker: #layout:right:oak_happy_m
        Oak smiles in return.
        #speaker:Oak #portrait:oak_happy
        Glad to see you safe and sound old chap.
        I mean... young chap.
        #layout:middle_left:nimbus_happy

    - else:
        #layout:middle_right:tails_default_m #layout:right:oak_default_noHat
        #speaker:
        Tails rushes to pick Oak's hat and give it to him.
        #layout:middle_left:tails_default #layout:middle_right:default #layout:right:oak_happy_m
        #speaker:Oak #portrait:oak_happy
        I though I had lost it.
        Thank you for holding on to it.
        #speaker:Tails #portrait:tails_default
        No need for thanks.
        It wouldn't fit me anyways.
    }

    #speaker:
    They all laught together.
    #speaker:Tails #portrait:tails_default
    It's time to decide what to do next.
    -> conclusion
}

== Oak_lost ==
#speaker: #background:city #layout:middle_left:tails_sad #layout:right:default
After a bit of effort he finnally sees daylight again.
{
- hasCotton():
    #layout:right:bunny_scared_m
    {
        - hasNimbus():
            #layout:middle_right:nimbus_scared_m
    }
    #speaker:Cotton #portrait:bunny_scared
    Where is your friend?
    You didn't find him?
    #speaker:
    Tails lowers his head.
    #speaker:Tails #portrait:tails_sad
    Yes...
    But he doesn't want to go on...
    {
        - hasNimbus():
            #speaker:Nimbus #portrait:nimbus_scared
            What? How? Why?
            You have to talk to him, Tails!
            We need to stick together!
    }
    #speaker:
    The mouse stays silent for a bit.
    He looks at the water, going by.
    #speaker:Tails #portrait:tails_sad
    Oak is gone...
    We have to keep going.
    It's time to decide what to do next.
    -> conclusion
-else:
    {
        - hasNimbus():
            #speaker:Nimbus #portrait:nimbus_scared #layout:middle_right:nimbus_scared_m
            Where is Oak?
            Didn't you find him?
            #speaker:
            Tails lowers his head.
            #speaker:Tails #portrait:tails_sad
            Yes...
            But he doesn't want to go on...
            #speaker:Nimbus #portrait:nimbus_scared
            What? How? Why?
            You have to talk to him, Tails!
            We need to stick together!
            #speaker:
            The mouse stays silent for a bit.
            He looks at the water, going by.
            #speaker:Tails #portrait:tails_sad
            Oak is gone...
            We have to keep going.
            It's time to decide what to do next.
            -> conclusion

        - else:
            The mouse stays silent for a bit.
            He looks at the water, going by.
            #speaker:Tails #portrait:tails_sad
            Oak is gone...
            I have to keep going.
            It's time to decide what to do next.
            -> conclusion
    }
}

== conclusion ==
#speaker: #layout:left:default #layout:middle_left:default #layout:middle_right:default #layout:right:default
Tails looks at the skies.

{
    - getCityTime() < 2:
        The sun is at his highest point.
        He probably still has the chance for one more voyage before dark.
        -> choices
    - else:
        The sun has disappeared between the buildings.
        Night is coming.
        It's time to go back to the shelter.
        {
            -not hasOak():
            He wasn't able to save his old friend, Oak.
        }
        {
            -not hasNimbus():
            And he had to leave the young bird behind.
        }
        ~changeScene("RiverScene")
        -> END
}

== choices ==
+{hasCotton() and savedNimbus() and not hasNimbus()}[Follow Nimbus's Trail]
    ->nimbus_trail
+[Look for food]
    ->food_trail
+[Go Back to the Shelter]
    ->back_trail
+{not hasCotton() and savedNimbus()}[Look for his remaining friends]
    ->random_trail


== nimbus_trail ==
~cityDecision(1)
#speaker:Tails #portrait:tails_default #layout:left:tails_default
We have to find Nimbus.
Where does the West trail leaded?
#speaker: #layout:middle_right:bunny_default_m
{
    - hasOak():
        #layout:right:oak_default_m
}
The bunny looks down the river.
Which engulfs all bellow the big "stone trees".
#speaker:Cotton #portrait:bunny_default
Everything is flooded that way.
We'll be at risk of drowning.
Are you sure you want to do it?
#speaker:Tails #portrait:tails_default
Yes.
#speaker:Cotton #portrait:bunny_default
Then get ready.
It will be dangerous.
#speaker:
The mouse goes back to the helmet decided to save his friend.
If he's still alive, he knows he will find him.
~changeScene("RiverScene")
-> END

== food_trail ==
~cityDecision(0)
#speaker:
He knew they needed food.
The city was big, so certainly there would be food for scavenge.
However he knew this meant Nimbus would have to be left behind.

{
    - hasCotton():
        #speaker:Tails #portrait:tails_default #layout:left:tails_default
        We'll look for food.
        We'll need it for the rest of the journey.
        #layout:middle_right:bunny_scared_m
        {
            - hasOak():
            #speaker: #layout:right:oak_scared_m
            They get a bit surprised with the mouse's decision.
        
            - else:
            #speaker:
            Cotton gets a bit surprised with the mouse's decision.
        }
        #speaker:Cotton #portrait:bunny_default
        We don't have much time to look for your friends.
        #speaker:Tails #portrait:tails_sad #layout:left:tails_sad
        I know...
        But food is our priority right now.
    
    - else:
        #speaker:Tails #portrait:tails_default #layout:left:tails_default
        Let's look for food.
        We'll need it for the rest of the journey.
        {
            - hasOak():
            #speaker: #layout:right:oak_scared_m
            He gets a bit surprised with the mouse's decision.
            #speaker:Oak #portrait:oak_scared
            What about the young firefly?
            #speaker:
            The mouse lowers his voice.
            #speaker:Tails #portrait:tails_sad #layout:left:tails_sad #layout:right:oak_sad_m
            We need food...
        }
}
#speaker:
The mouse turns his back and goes to the helmet slowly.
Heartbroken, for giving up on his friends.
~changeScene("RiverScene")
-> END

== back_trail ==
~cityDecision(4)
#speaker:
He knew it was a risk to keep traversing the city.
Humans were all around and every moment could be their last.

{
    - hasCotton():
        #speaker:Tails #portrait:tails_default #layout:left:tails_default
        We'll go back.
        It's too risky to stay out here.
        #layout:middle_right:bunny_scared_m
        {
            - hasOak():
            #speaker: #layout:right:oak_scared_m
            They get a bit surprised with the mouse's decision.
            #speaker:Oak #portrait:oak_default
            {savedNimbus(): Are we leaving young Nimbus behind?}
            And what about Sparks?
            #speaker:Tails #portrait:tails_sad #layout:left:tails_sad
            I already managed to save you, Oak.
            And Cotton as well.
            We can't save everyone...
            #layout:left:tails_default
        
            - else:
            #speaker:
            Cotton gets a bit surprised with the mouse's decision.
            #speaker:Cotton #portrait:bunny_default
            Are you leaving your friends behind?
            #speaker:Tails #portrait:tails_sad #layout:left:tails_sad
            I tried already to save one...
            I don't want to be the death of you... or me...
            #layout:left:tails_default
        }
    
    - else:
        #speaker:Tails #portrait:tails_default #layout:left:tails_default
        Let's go back.
        It's too risky to stay out here.
        {
            - hasOak():
            #speaker: #layout:right:oak_scared_m
            He gets a bit surprised with the mouse's decision.
            #speaker:Oak #portrait:oak_default
            {savedNimbus(): Are we leaving young Nimbus behind?}
            And what about Sparks?
            #speaker:Tails #portrait:tails_sad #layout:left:tails_sad
            I already managed to save you, Oak.
            We can't save everyone...
            #layout:left:tails_default
        }
}
#speaker:
The mouse turns his back and goes to the helmet slowly.
Heartbroken.
~changeScene("RiverScene")
-> END

== random_trail ==
~cityDecision(3)
{
- savedNimbus():
    #speaker:
    Tails had no way of knowing where his friends were.
    It was a shot i the dark, but he had to try...
    For everything they meant to him.
- else:
    #speaker:
    Tails had no way of knowing where his friend was.
    It was a shot in the dark, but he had to try...
    For everything Sparks meant to him.
}
~changeScene("RiverScene")
-> END