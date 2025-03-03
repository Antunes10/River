INCLUDE globals.ink

->main

=== main ===
#background:city
#speaker: #layout:middle_left:tails_default
{- hasCotton(): 
    #layout:right:bunny_default_m
    ~nSaved = nSaved + 1
}
{- hasNimbus():
    #layout:middle_right:nimbus_default_m
    ~nSaved = nSaved + 1
}
{- hasOak():
    #layout:left:oak_default
    ~nSaved = nSaved + 1
}

{
    - nSaved > 0:
        They spend hours looking for food.
        {
            - hasOak():
                #layout:left:oak_scared
                When suddently Oak raises his snout into the air.
                #speaker:Oak #portrait:oak_scared
                I am picking a delicious scent.
                We might have found food, dear friends!
                #speaker: #layout:left:oak_default
                He lingers on the ledge, with his nose up high.
                Then he picks the scent again.
                And points towards the inside a building.
                Tails looks around to make sure there are no humans...
                And then brings the "shell" onto the shore.
                #speaker:Oak #portrait:oak_default
                Go little one.
                We'll stand guard over the "shell".
                -> looking_for_food
            - else:
                {
                    - hasCotton(): 
                        #layout:right:bunny_scared_m
                        When suddently Cotton raises her snout into the air.
                        #speaker:Cotton #portrait:bunny_scared
                        Food! I smell food!
                        #speaker: #layout:right:bunny_default
                        She lingers on the ledge, with her nose up high.
                        Then she picks the scent again.
                        And points towards the inside a building.
                        Tails looks around to make sure there are no humans...
                        And then brings the "shell" onto the shore.
                        #speaker:Cotton #portrait:cotton_default #layout:right:bunny_default_m
                        Go on.
                        We'll wait for you here, in case we need to run.
                        -> looking_for_food
                    -else:
                        #layout:middle_left:tails_scared
                        When suddently Tails' snout picks a delicious scent.
                        #speaker:Tails #portrait:tails_scared
                        Food!
                        Finally!
                        #speaker: #layout:left:oak_default
                        He lingers on the ledge, with his nose up high.
                        Then he picks the scent again.
                        It's coming from inside a building.
                        Nimbus looks around to make sure there are no humans...
                        And then they bring the "shell" onto the shore.
                        #speaker:Nimbus #portrait:nimbus_default
                        Go on Tails
                        I'll stand guard.
                        If you need help, shout!
                        -> looking_for_food
                }
        }

    - else:
        He spends hours looking for food.
        When suddently his snout picks a delicious scent.
        #speaker:Tails #portrait:tails_default
        Food!
        Finally!
        #speaker:
        He lingers on the ledge, with his nose up high.
        Then he picks the scent again.
        It's coming from inside a building.
        He looks around to make sure there are no humans...
        And then brings the "shell" onto the shore.
        -> looking_for_food
}

== looking_for_food ==
#background:hallway #layout:middle_left:tails_default #layout:right:default #layout:middle_right:default #layout:left:default
#speaker:
Tails enters the building cautiously.
The scent of food is now more easily identified...
But there is also a strange scent of metal and ash.
He senses danger...
#layout:middle_left:default

++[Go forth]
    ->looking_for_food2

++[Go Back]
    ~gaveUp = 1
    #speaker:
    Afraid of what might await him in this dark place, Tails turns back.
    ->go_back_nofood

== looking_for_food2 ==
#speaker:
He needed the food and he wasn't giving up.
With all his courgae he starts descending the stairs towards the lower level.
As the light starts to become scarce, he starts hearing voices.
Human voices...
Alarmed he looks around for a place to hide.

++[Hide under the stairs]
    Without much time to think, Tails runs down and hides underneath the stairs.
    The humans voices become louder as they approach.
    Their boots start walking over the steps, as dust flies of its borders.
    Step by step...
    They climb until their voices disappear.
    Tails heart calms down as he comes out of hidding.
    ->looking_for_food3

++[Hide behind a rock]
    #speaker:
    Without much time to think, Tails hides under a rock, close to the wall.
    The humans voices become louder as they approach the stairs.
    Suddently one of them spots the mouse.
    Tails tries to run away...
    But the soldier's boot manages to hit him.
    Tails body is thrown hard into the wall...
    As the impact squashes his insides...
    The world starts to darken.
    And the last sound heard is of the two soldiers laughting at the dying life.
    ~gameOver()
        -> END

== looking_for_food3 ==
#speaker:Tails #portrait:tails_default
Uff... that was close...
#speaker:
He goes down the hallway to find two big bread loafs inside a white "membrane".
He takes the membrate by his teeth and pulls the bread out of the building.
The task takes a lot of effort and a good amount of time...
But finally he emerges victorious.
->go_back_food

== go_back_food ==
~changeFood(4)

#background:city
#speaker: #layout:middle_left:tails_default
{- hasCotton(): 
    #layout:right:bunny_default_m
    ~nSaved = nSaved + 1
}
{- hasNimbus():
    #layout:middle_right:nimbus_default_m
    ~nSaved = nSaved + 1
}
{- hasOak():
    #layout:left:oak_default
    ~nSaved = nSaved + 1
}

{
    - nSaved > 0:
        The group joins in and helps Tails carry the load.
        {
            - hasOak():
                #speaker:Oak #portrait:oak_default
                That's a lot of food.
                Good job mister Tails!
                #speaker:
                The dog takes the bread and places it inside the helmet.
                It took some time, but they had enough food for the next couple of days.
            - else:
                {
                    - hasNimbus(): 
                        #speaker:Nimbus #portrait:nimbus_default
                        So much bread!
                        Good job, Tails!
                        #speaker:
                        The bird hugs the mouse.
                        Then they proceed to put all the food inside the helmet, making it a lot heavier.
                        It took some time, but they had enough food for the next couple of days.
                    -else:
                        #speaker:Cotton #portrait:bunny_default
                        Very well done, little one!
                        We have food for the next couple of days.
                        #speaker:
                        The rabbit kisses the mouse's head.
                        Then they proceed to put all the food inside the helmet, making it a lot heavier.
                        It took some time, but they had enough food for the next couple of days.
                }
        }
    -else:
        The sun kisses his fur as he drags the huge bad closer to the helmet.
        It took some time, but now he had enough food for the next couple of days.
}

->conclusion

== go_back_nofood ==
~changeHope(-1)

#background:city
#speaker: #layout:middle_left:tails_default
{- hasCotton(): 
    #layout:right:bunny_default_m
    ~nSaved = nSaved + 1
}
{- hasNimbus():
    #layout:middle_right:nimbus_default_m
    ~nSaved = nSaved + 1
}
{- hasOak():
    #layout:left:oak_default
    ~nSaved = nSaved + 1
        {
            - not hasNimbus() and not hasCotton():
                #layout:middle_right:oak_default_m
        }
}

{
    - nSaved > 0:
        They approach Tails in a hurry.
        {
            - hasOak():
                #speaker:Oak #portrait:oak_default
                I supose the food was out of your reach?
                #speaker:
                The mouse shakes his head positively.
                The dog places a paw on his back and understands.
                #speaker:Oak #portrait:oak_default
                The dead can't eat.
                Don't worry, Mr.Tails, we still have some food left. 
            - else:
                {
                    - hasNimbus(): 
                        #speaker:Nimbus #portrait:nimbus_default #layout:middle_right:nimbus_default_m
                        Where is the food?
                        #speaker:Tails #portrait:tails_sad #layout:middle_left:tails_sad
                        I'm sorry Nimbus...
                        There were humans...
                        #speaker:Nimbus #portrait:nimbus_scared #layout:middle_right:nimbus_scared_m
                        What!?
                        But we need it!
                        {
                            -hasCotton():
                                #speaker:
                                The bunny gives a small smack on the bird's head.
                            -else:
                                #speaker:
                                The mouse lowers his ears, sad with its insucess.
                        }
                        The bird understands there was nothing Tails could do and apologises.
                    -else:
                        #speaker:Cotton #portrait:cotton_default
                        You couldn't find any food?
                        #speaker:
                        #speaker:Tails #portrait:tails_sad #layout:middle_left:tails_sad
                        There were humans...
                        #layout:right:bunny_happy_m
                        The rabbit gives him a smile and ensures her empathy.
                        He did what he could.
                }
        }
    -else:
        The sun kisses his fur as he comes out empty handed.
        He lost some precious time.
}

->conclusion

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
+{hasCotton() and savedOak() and not hasOak()}[Follow Oak's Trail]
    ->oak_trail
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

== oak_trail ==
~cityDecision(2)
#speaker:Tails #portrait:tails_default #layout:left:tails_default
We have to find Oak.
Where does the North trail leaded?
#speaker: #layout:middle_right:bunny_default_m
{
    - hasNimbus():
        #layout:right:nimbus_default_m
}
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
#speaker:
The mouse goes back to the helmet decided to save his friend.
If he's still alive, he knows he will find him.
~changeScene("RiverScene")
-> END

== back_trail ==
~cityDecision(4)
#speaker:
He knew it was a risk to keep traversing the city.
Humans were all around and every moment could be their last.
However he knew this meant his friends would have to be left behind.

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
            {
            - hasNimbus():
                #speaker: #layout:right:nimbus_scared_m
                They get a bit surprised with the mouse's decision.
                #speaker:Nimbus #portrait:nimbus_scared
                {savedOak(): Are we leaving young Oak behind?}
                And what about Sparks?
                #speaker:Tails #portrait:tails_sad #layout:left:tails_sad
                I already managed to save you, Nimbus.
                And Cotton as well.
                We can't save everyone...
                #layout:left:tails_default

            - else:
                #speaker:
                Cotton gets a bit surprised with the mouse's decision.
                #speaker:Cotton #portrait:bunny_default
                Are you leaving your friends behind?
                #speaker:Tails #portrait:tails_sad #layout:left:tails_sad
                We are at risk if we continue to be out here...
                I don't want to be the death of you... or me...
                #layout:left:tails_default
            }
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

            - else:
            {
            - hasNimbus():
                #speaker: #layout:right:nimbus_scared_m
                He gets a bit surprised with the mouse's decision.
                #speaker:Nimbus #portrait:nimbus_scared
                {savedOak(): Are we leaving young Oak behind?}
                And what about Sparks?
                #speaker:Tails #portrait:tails_sad #layout:left:tails_sad
                I already managed to save you, Nimbus.
                We can't save everyone...
                #layout:left:tails_default
            }
        }
}
#speaker:
The mouse turns his back and goes to the helmet slowly.
Heartbroken, for giving up on his friends.
~changeScene("RiverScene")
-> END

== random_trail ==
~cityDecision(3)
{
- savedNimbus() and not hasNimbus()|| savedOak() and not hasOak():
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