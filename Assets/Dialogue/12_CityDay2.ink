INCLUDE globals.ink


->main

=== main ===
#background:roomDay
#speaker:
Dawn Breaks.
#layout:middle:tails_sad
Tails gets up a bit sad.
It's the first time since the start of the journey, that he awakes without Sparks beside him.

{
- savedOak():
    Suddently a dog barks.
    Tails rushes to the windowsill and looks down...
    Unfurtunately it isn't who he wanted to be.

    {
    - hasCotton():
        #speaker:Cotton #portrait:bunny_default #layout:right:bunny_default_m #layout:middle_left:tails_sad #layout:middle:default
        You thought it was your friend?
        #speaker:
        Cotton joins him at the window.
        #speaker:Tails #portrait:tails_sad #layout:middle_left:tails_sad
        Yes...
        I thought he was Oak...
        #speaker:
        #layout:right:bunny_scared_m
        The rabbit raises her ears and look outside.
        #speaker:Cotton #portrait:bunny_default #layout:right:bunny_default_m
        We could try to go out and find him...
        The explosions have stopped for now...
        #speaker:
        Tails looks outside and confirm her words.
        #speaker:Tails #portrait:tails_default #layout:middle_left:tails_default
        You're right, let's go outside and look for tracks.
    - else:
        A small grey dog runs through the streets and disappears a few seconds later.
        Tails looks around.
        There are no explosions or fires.
        He understands if he wants to find his friends now would be a good time.
    }

- else:
    He climbs onto the windowsill and looks outside.
    Smoke rises in a silent "stone forest".

    {
    - hasCotton():
            #speaker:Cotton #portrait:bunny_default #layout:right:bunny_default_m #layout:middle_left:tails_sad #layout:middle:default
            {
            - savedNimbus():
                You miss your friends?
            - else:
                You miss your friend?
            }
            #speaker:
            Cotton joins him at the window.
            #speaker:Tails #portrait:tails_sad #layout:middle_left:tails_sad
            Yes...
            {
            - savedNimbus():
                I'm afraid they are hurting or worse...
            - else:
                I'm afraid she's hurting or worse...
            }

            #speaker:
            #layout:right:bunny_scared_m
            The rabbit raises her ears and look outside.
            #speaker:Cotton #portrait:bunny_default #layout:right:bunny_default_m
            {
            - savedNimbus():
                We could try to go out and find them...
            - else:
                We could try to go out and find her...
            }
            The explosions have stopped for now...
            #speaker:
            Tails looks outside and confirm her words.
            #speaker:Tails #portrait:tails_default #layout:middle_left:tails_default
            You're right, let's go outside and look for tracks.
    - else:
         #speaker:Tails #portrait:tails_sad #layout:middle:tails_sad 
        {
        - savedNimbus():
            I'm afraid they are hurting or worse...
        - else:
            I'm afraid she's hurting or worse...
        }
        
    }
                
}

->goOutside


=== goOutside ===
#background:city

{
- hasCotton():
    #speaker: #layout:middle_left:tails_default #layout:right:bunny_default_m
    Both go down the stairs and in a few moments they're outside.
    It smells of iron and dust.
    Cotton takes a look around, sniffing the ground with her nose.
    #speaker:Cotton #portrait:bunny_default
    I've found it! Tracks!
    #speaker: #portrait:default
    Tails joins her in anticipation.
    #speaker:Cotton #portrait:bunny_default
    {
    - savedOak():
        There are a couple of dog's paws going North.
    }
    {
    - savedNimbus():
        And smaller bird ones going West.
    }
    {
    - not savedNimbus() and not savedOak():
        I see pawprints of dogs and rats.
    }
    
    #speaker:Tails #portrait:tails_default
    What about Sparks... the firefly.
    Do you see any tracks of her?
    #speaker:Cotton #portrait:bunny_sad #layout:right:bunny_sad_m
    If she flew away... there is no way to know where she went...
    #speaker:Tails #portrait:tails_sad #layout:middle_left:tails_sad
    Yeah... but I was hopping...
    Well, we have to decide what to do.
    We might not have much time left before the next "firestorm".
    And we're also low on food.
    #speaker: #portrait:default #layout:middle_left:tails_default #layout:right:bunny_default_m
    -> choices_OG

- else:
    #speaker: #layout:middle:tails_default
    Going down the stairs he reaches the outside street.
    It smells of iron and dust.
    Tails takes a look around to see if he discovers any tracks.
    But to no avail...
    The explosions destroyed everything and covered the rest with ashes.
    {
    - savedNimbus() || savedOak():
        If he wanted to find his friends, he would have to do it blindly.
    - else:
        If he wanted to find his friend, he would have to do it blindly.
    }
    And he knew pretty well he didn't have enough food to search the whole city.
    Neither time, since humans would soon unleash destruction again.
    -> choices_OG
}

== choices_OG ==
+{hasCotton() and savedNimbus()}[Follow Nimbus's Trail]
    ->nimbus_trail
+{hasCotton() and savedOak()}[Follow Oak's Trail]
    ->oak_trail
+{not hasCotton() and (savedOak() || savedNimbus())}[Look for your friends]
    ->random_trail
+{not hasCotton() and not savedOak() and not savedNimbus()}[Look for Sparks]
    ->random_trail
+[--More Choices--]
    ->other_choices

== other_choices ==

+[Look for food]
    ->look_for_food
+{gaveUp == 0}[Get out of the city]
    ->run_away
+[--Other Choices--]
    ->choices_OG

== nimbus_trail ==
~cityDecision(1)
#speaker:
Tails thinks about the young sparrow.
Unable to fly away from danger.
#speaker:Tails #portrait:tails_default
We have to find Nimbus.
Where does the West trail lead?
#speaker:
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
->take_the_boat

== oak_trail ==
~cityDecision(2)
#speaker:
Tails thinks about the old dog.
Tired and hurt.
#speaker:Tails #portrait:tails_default
We have to find Oak.
Where does the North trail lead?
#speaker:
The bunny looks at the black smoke rising towards the skies, clounding it in a dark grey mantle.
#speaker:Cotton #portrait:bunny_default
To where the "firestorm" is thickest.
That's where humans have been fighting each other.
It's a dangerous road.
Are you sure you want to do it?
#speaker:Tails #portrait:tails_default
Yes.
#speaker:Cotton #portrait:bunny_default
Then get ready.
It will be dangerous.
->take_the_boat

== random_trail ==
~cityDecision(3)
{
- savedNimbus() and savedOak():
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
->take_the_boat

== look_for_food ==
~cityDecision(0)
#speaker:
He knew they needed food.
The city was big, so certainly there would be food for scavenge.
And perhaps he would be lucky enough to find clues about his friends while looking for food.

{hasCotton():
    #speaker:Tails #portrait:tails_default
    We'll look for food first.
    We'll need it for the rest of the journey.
    #speaker:
    Cotton gets a bit surprised with the mouse's decision.
    #speaker:Cotton #portrait:bunny_default
    We won't have much time to look for all your friends.
    #speaker:Tails #portrait:tails_sad #layout:middle_left:tails_sad
    I know...
    But food is our priority right now.
    #layout:middle_left:tails_default
}
->take_the_boat

== run_away ==
~gaveUp = 1

#speaker:
Tails looks around him.
He sees the black clounds rising behind the "stone trees".
He sees holes in the ground and the earth torned apart.
#speaker:Tails #portrait:tails_sad #layout:middle_left:tails_sad #layout:middle:default
There is nothing left for me here...
{
- hasCotton():
    #layout:right:bunny_scared_m
    We have to leave this place...
    #speaker:
    Cotton is preplexed with Tail's words.
    #speaker:Cotton #portrait:bunny_scared
    How can you say that? What about your friends?
    Will you leave them behind?
    ->giveUpChoice
    

- else:
    ~changeHope(-2)
    I have to leave this place...
    #speaker:
    He looks around and sees a city submersed.
    He knows he won't be able to traverse it on foot...
    ->take_the_boat
}

== giveUpChoice ==
+ [Yes]
    #speaker:
    Tails lowers his head and whispers.
    #speaker:Tails #portrait:tails_sad #layout:middle_left:tails_scared
    Yes...
    The city is too big...
    They are as good as gone...
    #speaker: #layout:right:bunny_sad_m
    Cotton stays silent.
    Then she raises her head.
    #speaker:Cotton #portrait:bunny_sad
    I'm sorry but I agreed to help your friends.
    That's the reason keeping me here.
    If you don't want to do that anymore, then I have no reason to follow you.
    #speaker: #layout:right:default
    ~changeHope(-2)
    Before Tails can said a thing, she runs away into the building.
    He is left alone to venture forth.
    ~recruitCotton(false)
    ->take_the_boat

+ [You're right, I can't leave]
    #speaker:
    Tails lowers his head and regrets his words.
    #speaker:Tails #portrait:tails_sad #layout:middle_left:tails_sad
    Sorry I shouldn't have said that...
    You're right, I can't leave no one behind.
    #layout:middle_left:tails_default #layout:right:bunny_default_m
    ->choices_OG

== take_the_boat ==
#speaker:
Tails looks around and starts sniffing the surroundings.
{
- hasCotton():
    #speaker:Cotton #portrait:bunny_default
    Are you looking for something?
    #speaker:
    Suddently Tails sees the "egg shell" amidst rubble and debris.
    He dislodges it and takes it into the water.
    #speaker:Cotton #portrait:bunny_scared_m
    What is that?
    #speaker:Tails #portrait:tails_happy #layout:middle_left:tails_happy #layout:right:bunny_default_m
    It's our home.
    It has been carrying us until now, from far away.
    Through fire and death.
    #speaker: #layout:middle_left:tails_default 
    He hops inside and signals the rabbit to do the same.
    She does it a bit reluctant, but once inside she becomes more determined.
    Tails pushes the helmet away from the shore and they start going towards their destination.
- else:
    #layout:middle:tails_scared #layout:middle_left:default
    Suddently Tails sees the "egg shell" amidst rubble and debris.
    He dislodges it and takes it into the water.
    #layout:middle:tails_default
    His faithfull companion.
    His home...
    It took him this far and he knew it wouldn't fail him now.
    He hops inside and pushes the helmet away from the shore, towards his destination.
}

~changeScene("RiverScene")
-> END