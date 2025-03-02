INCLUDE globals.ink


->main

=== main ===
#background:RestField
#speaker: #layout:left:tails_default #layout:right:sparks_default_m #layout:middle:nimbus_default_m #enviroSound:forest
~unlockImage(0)
The waters of the river slow down as the rain goes away, allowing a brighter day rips slightly through the clouds.
The “boat” touches gently on the wet dirt, and they all disembark exhausted.
#speaker:Nimbus #portrait:nimbus_default
That was intense.
For a moment I though we wouldn’t make it.
#speaker:Sparks #portrait:sparks_default
If not for you, Mr.Tails, we would’ve drowned.
#layout:right:sparks_happy_m #portrait:sparks_happy
You are the best!
#speaker:Tails #portrait:tails_default
We all did our part. I think we all deserve praise.
#speaker:
All of them fall onto the ground in order to recover their strength and breath.
#speaker:Sparks #portrait:sparks_sad #layout:right:sparks_sad_m
My wings hurt…
My belly hurts…
#speaker:Nimbus #portrait:nimbus_sad #layout:middle:nimbus_sad_m
I’m starving too. Thank the heavens we still have some food left.

+[Eat together to recover your strength]
    ~changeFood(-1)
    ~changeHope(1)
    #speaker:
    Tails goes back to the helmet and retrieves some food they had stored.
    Then he looks at the bird and retrieves a bit more.
    #speaker:Tails #portrait:tails_default
    Here.
    It will do us no good to travel on an empty belly.
    #speaker: #layout:middle:nimbus_default_m #layout:right:sparks_default_m
    As the crunching sounds begin, a couple of smiles start to appear all around.
    They had just avoided death and food was the fire they needed to keep hope from fading away.
    The mouse finishes his share and lies down on his belly, tired of all the strife.

+[Argue to save food]
    ~changeHope(-1)
    #speaker:Tails #portrait:tails_sad
    I know it is hard, but we have to ration our food.
    We don’t know what lies ahead.
    #speaker:
    The little firefly’s antennas go down. And she sadly sits down on the grass, with her hands on her belly.
    Tails knew it was hard to make that choice, but they didn’t know when they would find food again.
    Time passes as they try to rest their limbs.
    The hungry silence affects the mouse, but he tries to ignore it.
    He lies on his belly, tired of all the strife.

-
#speaker: #layout:left:tails_default #layout:middle:nimbus_default_m #layout:right:sparks_default_m
His eyes look up and see the everchanging clouds. Totally unfazed by what was happening below.
There was a certain serenity, a certain comfort those cotton seas inspired in him.
#speaker:Tails #portrait:tails_default
I bet no problem in the world ever reaches the blue skies.
I bet everything is peaceful up there.
#speaker:
The rest of them imitate Tails and place their eyes on the big blue.
#speaker:Nimbus #portrait:nimbus_default
Yup.
That’s why they call it heaven.
Mountains of white and a roof of deep blue.
#speaker:Sparks #portrait:sparks_default
I always dreamed to fly up there too, but the winds are too strong for fireflies.
#speaker:
The bird looks at his wing still patched.
#speaker:Nimbus #portrait:nimbus_sad #layout:middle:nimbus_sad_m
I guess none of us is ever going to.
#speaker:Tails #portrait:tails_default
Well, we also have enchanted lands here on the ground.
#speaker:Nimbus #portrait:nimbus_default #layout:middle:nimbus_default_m
And where that might be?
#speaker:Tails #portrait:tails_default
West.
There is a valley full of green. Where water flows in abundance and men are nowhere to be seen.
#speaker:Sparks #portrait:sparks_default
Yes the beautiful valley you talked about earlier!
#layout:right:sparks_happy_m #portrait:sparks_happy
There must be hundreds of fireflies there. All shining together.
#speaker:Nimbus #portrait:nimbus_default
It seems too good to be true.
How do we know it even exists?
#speaker:Tails #portrait:tails_default
I had some friends who’ve been there and told tales of it, before the war.
#speaker:
They all open their eyes wide with amazement.
#speaker:Tails #portrait:tails_default
It’s a wonderful place. Where we don’t have to worry about fires or explosions.
#speaker:
The firefly’s face lightens up alongside his behind.
#speaker:Sparks #portrait:sparks_happy
Word?!
#speaker:
The mouse nods with a smile.
His words make them all dream.
Dream they will reach that enchanted place and leave all their pain and suffering behind.
Dream they will be happy again.
And they deserve it, don’t they?
#speaker:Tails #portrait:tails_happy
We will get there in a couple of days.
We just have to keep pressing on.
#speaker:
Sparks straightens himself and makes a salutation.
#speaker:Sparks #portrait:sparks_happy
Ay ay, Mr.Captain.
#speaker:
He then flies back to the helmet with renewed motivation.
They all laugh.
#speaker:Tails #portrait:tails_default
I did not mean right now.
#speaker:Nimbus #portrait:nimbus_default
She is right, there sooner we get there the better!
#speaker:
In agreement the band goes back to the helmet and set sail to their assured horizon.

~changeScene("RiverScene")
->END