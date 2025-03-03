INCLUDE globals.ink

{
    - hasSparks():
        ~nSaved = nSaved+1
}
{
    - hasNimbus():
        ~nSaved = nSaved+1
}
{
    - hasOak():
        ~nSaved = nSaved+1
}
~nSaved = nSaved+1
->main

=== main ===
#background:RestField #enviroSound:forest
#speaker: #layout:left:tails_default #layout:right:sparks_default_m
~unlockImage(0)
The waters of the river slow down as the rain goes away, allowing a brighter day rips slightly through the clouds.
The “boat” touches gently on the wet dirt, and they all disembark exhausted.
#speaker:Sparks #portrait:sparks_sad #layout:right:sparks_sad_m
That was scary.
If not for you, Mr.Tails, we would’ve drowned.
#portrait:sparks_happy #layout:right:sparks_happy_m
You are the best!
#speaker:Tails #portrait:tails_happy #layout:left:tails_happy
You were awesome too, Sparks. You helped me a lot spotting those rocks.
#speaker: #layout:left:tails_default #layout:right:sparks_default_m
Both fall onto the ground to recover their strength and breath.
#speaker:Sparks #portrait:sparks_sad #layout:right:sparks_sad_m
My wings hurt…
My belly hurts…
Can we eat something, Mr.Tails?

+[Eat together to recover your strength]
    ~changeFood(-nSaved)
    ~changeHope(1)

    #speaker:
    Tails goes back to the helmet and retrieves some food they had stored.
    #speaker:Tails #portrait:tails_default
    Here.
    It will do us no good to travel on an empty belly.
    #speaker: #layout:right:sparks_happy_m
    The firefly gives him a huge smile and starts munching vigorously.
    They had just avoided death and food was the fire they needed to keep hope from fading away.
    The mouse finishes his share and lies down on his belly, tired of all the strife.

+[Argue to save food]
    ~changeHope(-1)
    
    #speaker:Tails #portrait:tails_sad #layout:left:tails_sad
    I know it is hard, but we have to ration our food.
    We don’t know what lies ahead.
    #speaker: #layout:right:sparks_sad_m
    The little firefly’s antennas go down. And she sadly sits down on the grass, with her hands on her belly.
    Tails knew it was hard to make that choice, but they didn’t know when they would find food again.
    Time passes as they try to rest their limbs.
    The hungry silence affects the mouse, but he tries to ignore it.
    He lies on his belly, tired of all the strife.

-
#speaker: #layout:left:tails_default 
His eyes look up and see the everchanging clouds. Totally unfazed by what was happening below.
There was a certain serenity, a certain comfort those cotton seas inspired in him.
#speaker:Tails #portrait:tails_default #layout:right:sparks_default_m
I bet no problem in the world ever reaches the blue skies.
I bet everything is peaceful up there.
Have you ever flown that high, Sparks?
#speaker:
She imitates Tails and places her eyes on the big blue.
#speaker:Sparks #portrait:sparks_default
I would love to, but the winds are too strong for fireflies.
Only birds go there.
#speaker:
The wind breezes by.
#speaker:Tails #portrait:tails_default
When we reach the valley we might ask them, then.
#speaker:
The firefly looks at the mouse, with dreams in her eyes.
#speaker:Sparks #portrait:sparks_happy #layout:right:sparks_happy_m
Can you tell me about the valley? Pretty please?
#speaker: #layout:left:tails_happy
Tails breaks a smile.
#speaker:Tails #portrait:tails_happy
It’s a valley full of green. Where water flows in abundance and men are nowhere to be seen.
A place were there is no fire or explosions. Where animals live in peace and happiness.
#speaker:Sparks #portrait:sparks_happy
There must be tens of fireflies there! All shining together.
#speaker:Tails #portrait:tails_happy
Hundreds.
#speaker:Sparks #portrait:sparks_scared #layout:right:sparks_scared_m
Hundreds!?
#speaker: #portrait:sparks_happy #layout:right:sparks_happy_m
The firefly’s face lightens up alongside his behind.
#speaker:Tails #portrait:tails_happy
If we keep following the river we will get there, little one.
#speaker:Sparks #portrait:sparks_default #layout:right:sparks_happy_m
Spaks: And do you think my mother will be there too?
#speaker:Tails #portrait:tails_default #layout:right:sparks_default_m
Of course, she will be waiting for you.
#speaker: #layout:right:sparks_happy_m
The bug is filled with happiness.
His words make them both dream.
Dream they will reach that enchanted place and leave all their pain and suffering behind.
Dream they will be happy again.
And they deserve it, don’t they?
#speaker:Tails #portrait:tails_default #layout:left:tails_default
We will get there in a couple of days.
We just have to keep pressing on.
#speaker:
Sparks straightens himself and makes a salutation.
#speaker: #portrait:sparks_happy
Ay ay, Mr. Captain.
#speaker:
She then flies back to the helmet with renewed motivation.
#layout:left:tails_happy
Tails laughs.
#speaker:Tails #portrait:tails_happy
I did not mean right now.
#speaker:Sparks #portrait:sparks_happy
Not time to waste, Mr. Captain.
#speaker:
The mouse is conquered by her enthusiasm.
In agreement the pair goes back to the helmet and set sail to their assured horizon.

~changeScene("RiverScene")
->END