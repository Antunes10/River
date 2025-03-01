INCLUDE globals.ink


->main

=== main ===
#background:roomDay
#speaker:

{ - hasSparks() || hasNimbus() || hasOak() || hasCotton():
    -> not_alone
- else:
    -> alone
}

=== alone ===
#layout:middle:tails_sad #portrait:tails_sad
As the dawn arrives, a cold morning awakens.
Tails feels the coldness in his bones.
Not just from the winds but from the loneliness that embraces him.
He is alone.
Those who had accompanied him, left before the sunrise.
He didn’t manage to give them the hope they needed.
Even Sparks had left.
For a moment…
For a moment, he asks himself if there is still a reason to keep going?
If it’s worth facing the river again?
Then, as an answer, he hears sirens.
Loud noises screaming as danger approaches.
Several humans run from the streets into building and holes, like rabbits running from a fox.
Then an explosion!
And another even closer!
And another!
Screams pierce the skies and huge metal tanks start appearing in the streams, firing their long cannons.
He rushes to the helmet.
Not for safety but as means of escape.
There is no hope in this forsaken city.
He knows that he will only survive if he manages to escape!
It’s now or never!

~changeScene("RiverScene")
-> END

=== not_alone ===
#layout:left:tails_sad #portrait:tails_sad
As the dawn arrives, a cold morning awakens.
Tails feels the coldness in his bones.
He was having a bad dream.
But suddenly a warm embrace comforts him in a cozy awakening.

{hasSparks():
    #layout:sparks:sparks_happy_m #portrait:sparks_happy #speaker:Sparks
    Don’t worry Mr.Tails, I’m right here with you.
    -> afterWords
}
{hasNimbus():
    #layout:middle_right:nimbus_default_m #portrait:nimbus_default #speaker:Nimbus
    Don’t worry Tails, we’re still here. There is still a road to finish.
    -> afterWords
}
{hasOak():
    #layout:middle:oak_default #portrait:oak_default_m #speaker:Oak
    Don’t worry little mouse, it was just a bad dream. You’re awake now and safe.
    -> afterWords
}
{hasCotton():
    #layout:right:bunny_default_m #portrait:bunny_default #speaker:Cotton
    It’s alright little one. You’re not alone. Time to wake up.
    -> afterWords
}

==afterWords==
#speaker: #layout:left:tails_happy
The words give him the energy he needs to rise up to a new day.
They still have to find the valley.
They still have to get away from this city.
He looks around the room.

{hasCotton():
    #layout:right:bunny_default_m
    He sees Cotton.
    {
        - hasNimbus():
            #layout:middle_right:nimbus_default_m
            She approaches Nimbus to help him tie the cloth around his wing.
            The young bird bickers a bit as any teenager would.
            But the soft hands and voice of a mother, calms him down.
            They just met yesterday, but they seem to be bounding quick.
        -else:
            #layout:right:bunny_happy_m
            Cleaning her fur with her tongue.
            She smiles at Tails and in return he smiles back.
            Her positive energy calms him down.
    }
    
}

{hasOak():
    #layout:middle:oak_default_m
    Oak is standing near the window looking vilant at the world beyond.
    His yesterday doubts are but a bad dream long gone.
}

{hasNimbus() and not hasCotton():
    #layout:middle_right:nimbus_default_m
    The bird ties a cloth around his wing.
    Determined, decided.
    Tails words woke a courage he though he never had.
    But it shows now it was always within him.
}

{not hasSparks():
    #layout:left:tails_sad
    There was one friend, Tails really misses.
    The little firefly...
    The one that had been with him since the start of this journey...
    Left him...
	So she could find her mother.
    He can't not blame her, but the pain is still there.
}

Then the familiar face that awoke him, gives him a smile.
And makes Tails remember that he wasn’t alone.
#layout:left:tails_happy
He still had friends to fight for.


{hasSparks() && hasNimbus() && hasOak() && hasCotton():
    They are all still here.
    All his friends.
    He managed to save them all and inspire them to fight another day.
    It would be a dangerous getaway, but as long as they are together, they will prevail.
    He knew it.
}

Then, he hears sirens!
Loud noises screaming as danger approaches.
Several humans run from the streets into building and holes, like rabbits running from a fox.
Then an explosion!
And another even closer!
And another!
Screams pierce the skies and huge metal tanks start appearing in the streams, firing their long cannons.
They rush down the stairs into the helmet.
Not for safety but as means of escape.
There is no hope in this forsaken city.
They know that they will only survive if they manage to escape!
It’s now or never!

~changeScene("RiverScene")
-> END