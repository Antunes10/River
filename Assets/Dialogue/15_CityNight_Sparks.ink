INCLUDE globals.ink

->main

=== main ===
#background:roomNight
#speaker: #layout:middle:tails_default
Night has fallen.
A quiet night.
The world outside is engulfed by an obscurity that transcends the one provided by night.
Tails lets himself fall to the ground.
He's exhausted.
He spent the day looking for his friends.
{
    - hasOak():
        Thankfully he managed to find Oak.
        {
            - hasNimbus():
            And Nimbus as well.
        }
}

{
    - hasNimbus() and not hasOak():
        Thankfully he managed to find Nimbus.
}
However he didn't find his closest friend.
The one that needs him the most.
Sparks...
#layout:middle:tails_scared
Suddently...
He spots a small light on top of a building.
Very weak, but also bobbing up and down.
#layout:middle:tails_scared

{hasNimbus():
    #layout:right:nimbus_scared_m #portrait:nimbus_scared #speaker:Nimbus
    It's Sparks!
    It must be.
    Go Tails!
    Before she flies away.
    -> afterWords
}
{hasOak():
    #layout:right:oak_scared_m #portrait:oak_scared #speaker:Oak
    It's the little firefly!
    You have no time to lose, Mr.Tails.
    Go!
    -> afterWords
}
{hasCotton():
    #layout:right:bunny_scared_m #portrait:bunny_scared #speaker:Cotton
    It looks like...
    A firefly!
    Go little one.
    She needs you.
    -> afterWords
}

#speaker:Tails #portrait:tails_scared
Sparks!
-> afterWords

== afterWords ==
#layout:left:tails_default #layout:middle:default #layout:right:default
#speaker:
He runs.
As fast as his legs can.
#background:hallway
He goes out of the room, onto the stairs.
Jumping them down in a hurry.
He enters the other building without a single hint of caution...
And climbs the stairs while his lungs ask for air.

At the end he finds a locked door but a small window gives him a pathway to reach the rooftop.
#background:rooftop
The night is cold and windy.
#layout:left:tails_scared
Tails pauses in awe of the view.
The entire city is softly lightened by the pale moon.
Miles and miles into the murkiness of night.
#layout:right:sparks_sad
Sparks is on the balcony, with her light glowing weakly.
Her antennas are down.
#speaker:Tails #portrait:tails_scared
Sparks!
#speaker: #layout:right:sparks_sad_m
The young firefly turns around and sees his friend.
#speaker:Tails #portrait:tails_default #layout:left:tails_default
I looked everywhere for you!
#speaker:Sparks #portrait:sparks_sad
I'm sorry, Mr. Tails...
#speaker: #layout:left:tails_sad
The firefly doesn't come to Tails embrace
#speaker:Sparks #portrait:sparks_sad
I was looking for my mother.
#speaker: #layout:left:default #layout:middle_left:tails_sad
The mouse sits next to her and places his paw around her closed wings.
#speaker:Sparks #portrait:sparks_sad 
I was sure I could see her from up here.
But I can’t seem to find her.
#speaker:
Her watery eyes look up to Tails.
#speaker:Sparks #portrait:sparks_sad
Is she ever coming back?

+[Yes (keep on lying)]
    #speaker: 
    The mouse looks towards the world that surrounds them.
    They are so small in it.
    #speaker:Tails #portrait:tails_default #layout:middle_left:tails_default
    What does your heart tell you?
    #speaker:
    She lowers her head.
    #speaker:Sparks #portrait:sparks_sad
    I dunno.
    I want to believe she's coming back.
    But is taking so long.
    #speaker:Tails #portrait:tails_default
    Yes, it is, but you can’t give up.
    She's looking for you, I’m sure of it.
    #speaker:Sparks #portrait:sparks_default
    How do you know, Mr. Tails?
    #speaker:Tails #portrait:tails_default
    Because that’s what my heart tells me.
    And my mother taught me that the heart is never wrong.
    #speaker: 
    The firefly looks into the horizon, beyond the obscurity that clouds everything.
    #speaker:Sparks #portrait:sparks_default #layout:right:sparks_default_m
    She told me about a safe place for fireflies, under a wooden bridge, past a forest of pink flowers.
    #speaker:Tails #portrait:tails_default
    Perhaps she's there right now.
    #speaker: #layout:right:sparks_sad_m
    The bug’s antennas fall.
    #speaker:Sparks #portrait:sparks_sad
    But its North… Not in the direction of the valley we are going to.
    #speaker:
    Tails understands her dilemma.
    -> 2nd_Choice

+[No (tell the truth)]
    #speaker: 
    The mouse turn his eyes into the dark night.
    As it engulfs the world.
    #speaker:Tails #portrait:tails_sad #layout:middle_left:tails_sad
    I...
    Don't think she is...
    #speaker:
    The firefly looks at the mouse, almost begging him to change the world.
    #speaker:Sparks #portrait:sparks_sad
    But I miss her...
    I miss her voice, her singing.
    What if I need her to remind me what leaves I can eat.
    What if I wet my wings and she is not there to clean them up...
    #speaker:
    She starts to cry.
    -> 3rd_choice


== 2nd_Choice ==
+[Tell her to go to her mother]
    #speaker:Tails #portrait:tails_default
    You should go to her...
    She loves you very much and must be very worried.
    #speaker: #layout:middle_left:tails_sad
    He knew he was about to lose the one he loved the most.
    But because he loved her the most, he wanted her to do what was best for her.
    #speaker:Sparks #portrait:sparks_sad
    Do you really mean it, Mr.Tails?
    #speaker:Tails #portrait:tails_default #layout:middle_left:tails_default
    Yes, I do.
    It won't be easy and you must promise that you'll be very careful.
    But she's your mother...
    And every daughter should be with her mother.
    #speaker: #layout:right:sparks_default_m
    The firefly cleans her tears...
    #layout:right:default #layout:middle_right:sparks_happy_m
    And embraces the mouse in a heartfelt hug.
    #speaker:Sparks #portrait:sparks_happy
    Thank you, Mr.Tails!
    For saving me.
    For taking care of me.
    Thank you so much.
    #speaker:
    The mouse embraces her back and they stay embraced for a moment.
    #speaker:Sparks #portrait:sparks_happy #layout:right:sparks_happy_m #layout:middle_right:default
    Will we ever see each other again?
    #speaker:Tails #portrait:tails_happy #layout:middle_left:tails_happy
    What does your heart tell you?
    #speaker:
    She smiles back and embraces him again.
    Before taking flight into the stary night.
    #speaker:Tails #portrait:tails_default #layout:middle_left:tails_default
    What does your heart tell you?
    #speaker:
    She gives him a huge smile.
    As bright as the dawn.
    #speaker:Sparks #portrait:sparks_happy #layout:right:default #layout:sparks:sparks_happy_m
    Goodbye, Mr.Tails!
    I hope you reach that beautiful valley!
    #speaker: #layout:sparks:default
    She waves energetically before disapearing into the night.
    Her light wanders a bit until it joints the stars.
    It's hard, but inside Tails' heart, there is tranquility.
    He knows Sparks is going to find her mother.
    And that her story will have a happy ending.

    ~changeHope(1)
    ~changeScene("EndDayScene")
    ->END

+[Tell her to stay]
    #speaker:Tails #portrait:tails_default
    It’s a difficult decision…
    But I think it’s better for you to stay with us.
    It’s too dangerous to go North alone and we should all stick together.
    #speaker:
    The firefly stays silent for a bit.
    #speaker:Sparks #portrait:sparks_sad
    But I miss her...
    I miss her voice, her singing.
    What if I need her to remind me what leaves I can eat.
    What if I wet my wings and she is not there to clean them up...
    #speaker:
    She starts to cry.
    -> 3rd_choice

== 3rd_choice ==
+[Tell her you will be there for her]
    #speaker:Tails #portrait:tails_sad #layout:middle_left:tails_sad
    I'll be there for you.
    We're together now and nothing will separate us.
    #speaker:Sparks #portrait:sparks_sad
    But you don't know about these things, Mr.Tails.
	I'm a firefly, you're a mouse...
	We're too different.
    #speaker: #layout:middle_left:tails_default
    Tails looks at the destruction below them.
    #speaker:Tails #portrait:tails_default
	Perhaps...
    I've lived my life in a big mouse family.
    My mother and father.
    My brothers.
    My friends.
    We used to play, sleep and eat together.
    And I loved all of them.
    #speaker: #layout:middle_left:tails_sad
    The memories flood him, piercing his heart.
    #speaker:Tails #portrait:tails_sad
	But now...
    They're gone...
    All of them.
    Everyone I ever knew.
    And I...
    Wanted to...
    Die...
    Because the pain of that loss was so big.
    #speaker: #layout:middle_left:tails_happy
    A smile blossoms amidst the tears.
    #speaker:Tails #portrait:tails_happy
    Until...
    I met a little firefly, eating crumbs inside a floded cave.
    And right now...
    She's the one I love the most in the entire world.
    And she's my family...
    #speaker:
    The little firefly stands there motionless, with her big watery eyes looking up to his friend.
    Her heart tightens.
    #speaker:Sparks #portrait:sparks_default #layout:right:sparks_default_m
    R... really?
    #speaker:
    #layout:middle_left:default #layout:middle:tails_happy
    Tails doesn't answer, he simply embraces her.
    The little bug that put a smile on his face after he had lost everything.
    The little bug that gave him a reason to carry on living.
    The little bug that now belonged in his heart.
    Sparks nests her face in his fluffy fur and embraces his warmth.
    They are together.
    No longer alone.
    After losing everything, they have found each other.
    And no amount of war was ever going to change that.

    ~changeHope(3)
    ~recruitSparks(true)
    ~changeScene("EndDayScene")
    ->END

+[Tell her she can do it by herself]
    #speaker:Tails #portrait:tails_default #layout:middle_left:tails_default
    You're a grown up now, Sparks!
    You've survived so much.
    You can do these things by yourself.
    #speaker:Sparks #portrait:sparks_sad
    But I don't wanna...
    I don't want to be a grown up...
    I want my mother.
    I want to sleep in her chest.
    I want her to tell me everything is going to be alright.
    #speaker:Tails #portrait:tails_default #layout:middle_left:tails_default
    I know.
    But you have to be strong, Sparks.
    You're going to reach that magical valley!
    #speaker: #layout:right:sparks_sad
    The words have no impact.
    She starts crying and takes flight.
    #speaker:Tails #portrait:tails_scared #layout:middle_left:default #layout:middle:tails_scared
    Wait, Sparks...
    Dont go!
    #speaker: #layout:right:default
    But it's too late...
    The little firefly flies away into the dark night...
    As her light disappears into the nothingess of the void.
    Tails is left alone...
    His chest in pain.
    He didn't manage to save his friend...

    ~changeHope(-3)
    ~changeScene("EndDayScene")
    ->END