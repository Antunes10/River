INCLUDE globals.ink


->main

=== main ===
#background:finalValley
#speaker:
~ sparksRecruited = 1 
~ oakRecruited = 1
~ nimbusRecruited = 1
~ cottonRecruited = 1

{ - sparksRecruited == 0 and nimbusRecruited == 0 and oakRecruited == 0 and cottonRecruited == 0:
    -> alone
- else:
    -> not_alone
} 

->END

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

~changeScene("DialogueScene")

-> END

=== not_alone ===
#layout:middle:tails_sad #portrait:tails_sad
As the dawn arrives, a cold morning awakens.
Tails feels the coldness in his bones.
He was having a bad dream.
But suddenly a warm embrace comforts him in a cozy awakening.

{ - sparksRecruited != 0:
    #layout:sparks:sparks_happy_m #portrait:sparks_happy #speaker:Sparks
    Don’t worry Mr.Tails, I’m right here with you.
}
{ - nimbusRecruited != 0:
    #layout:middle_left:nimbus_default #portrait:nimbus_default #speaker:Nimbus
    Don’t worry Tails, we’re still here. There is still a road to finish.
}
{ - oakRecruited != 0:
    #layout:left:oak_default #portrait:oak_default #speaker:Oak
    Don’t worry little mouse, it was just a bad dream. You’re awake now and safe.
}
{ - cottonRecruited != 0:
    #layout:right:bunny_default_m #portrait:bunny_default #speaker:Cotton
    It’s alright little one. You’re not alone. Time to wake up.
}

#speaker:
The words give him the energy he needs to rise up to a new day.
They still have to find the valley.
They still have to get away from this city.
He looks around the room.

{ - cottonRecruited == 0:
    The rabbit is gone.
    The pain of losing her cubs was too much to bear.
    And she had nothing left in this world to fight for.
}

{ - oakRecruited == 0:
    Oak’s hat was still on the floor.
    But the dog was gone.
}

{ - nimbusRecruited == 0:
    { - oakRecruited == 0 and cottonRecruited == 0:
        The bird was also gone.
    }
- else:
    The bird was nowhere to be seen.
}

He did not say goodbye.
Ran away in the middle of the night. Too afraid to face his friend.

{ - sparksRecruited == 0:
    But what hurt him the most was the fact that the little firefly…
    The one that was with him since the start of this journey…
    Left him…
	She left to find her mother.
    He could not blame her, but the pain was still there.
}

Then the familiar face that awoke him, gave him a smile.
And made Tails remember that he wasn’t alone.
#layout:middle:tails_happy
He still had friends to fight for.


{ - sparksRecruited != 0 and nimbusRecruited != 0 and oakRecruited != 0 and cottonRecruited != 0:
    They were all still here.
    All his friends.
    He managed to inspire them all to stay and fight another day.
    It would be a dangerous getaway, but as long as they were together, they would prevail.
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

~changeScene("DialogueScene")

-> END




















