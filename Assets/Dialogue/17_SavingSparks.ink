INCLUDE globals.ink
{
    - not hasSparks():
        ~changeScene("DialogueScene")
    - else:
        ->main
}

=== main ===
#background:city
#speaker: #layout:middle_left:tails_default #layout:sparks:sparks_default_m
{
    - hasNimbus():
        #layout:middle_right:nimbus_default_m
}
{
    - hasOak():
        #layout:left:oak_default
}
{
    - hasCotton():
        #layout:right:bunny_default_m
}

Tails manages to avoid all hell around him.
And as they seem almost out of the woods...
A bomb blows near them.

{
    - hasNimbus():
        #layout:middle_right:nimbus_scared_m
}
{
    - hasOak():
        #layout:left:oak_scared
}
{
    - hasCotton():
        #layout:right:bunny_scared_m
}
#speaker:Sparks #portrait:sparks_scared #layout:sparks:default #layout:middle_left:tails_scared

Ahhhhhhh!
#speaker:
Sparks falls into the water as the shockwave unbalances the helmet.
#speaker:Tails #portrait:tails_scared
SPARKS!
#speaker:
The strong current pulls the little firefly underwater...
As she struggles to stay afloat.
#layout:middle_left:default #layout:left:default #layout:middle_right:default #layout:right:default
-> decision

== decision ==
+[Jump into the water]
    ->savedSparks
+[Paddle against the current]
    ->lostSparks

== savedSparks ==
#layout:middle:tails_default
#speaker:
Without a moment's thought, Tails jumps into the water.
The waves are really strong.
Thunderous explosions sound all around.
He tries to swim in the direction of his friend...
But its too hard.
Then...
He has an idea...
He dives underwater and...
He manages to swim against the current much more easily.
Avoiding obstacles and waves that crash on the surface.
He grabs Sparks by the hand and brings him to the surface.
#layout:right:sparks_sad_m #layout:middle_right:tails_default #layout:middle:default
#speaker:Sparks #portrait:sparks_sad
You... came... for... me...
#speaker:
Her wings are completely wet.
#layout:middle_right:default #layout:right:tails_default_m #layout:sparks:sparks_sad_m
Tails doesn't answer.
It takes all his strength to carry her to the helmet.
{
    - hasNimbus():
        #speaker:Nimbus #portrait:nimbus_scared
        #layout:middle:nimbus_scared
        Hurry!
}
{
    - hasOak():
        #layout:middle_left:oak_scared
        #speaker:Oak #portrait:oak_scared
        Take her closer so I can grab her!
}
{
    - hasCotton():
        #layout:left:bunny_scared
        #speaker:Cotton #portrait:cotton_scared
        Be careful!
}
#speaker:
With his last strength the mouse manages to put the little firefly inside the helmet.
#layout:middle_left:default #layout:left:default #layout:middle_right:default #layout:right:default #layout:middle:default #layout:sparks:default
#background:black
Just before he hits a rock with force.
A very intense pain pierces his body...
He blacks out.
...
~changeScene("EndDayScene")
-> END


== lostSparks ==
{
    - hasNimbus():
        #layout:middle:nimbus_scared
}
{
    - hasOak():
        #layout:middle_left:oak_scared
}
{
    - hasCotton():
        #layout:left:bunny_scared
}
#layout:middle_right:tails_default
The waves are really strong.
Thunderous explosions sound all around.
He turns the helmet around and tries paddling in the direction of his friend...
But its too hard.
The current is too strong...
Sparks silhuete starts to disappear.
Between the crashes of the waves, they lose hope...
#layout:middle_right:sparks_sad
Soon Tails understands the inevitable...
His friend is gone.
He falls on the ground...
Too tired...
Too desperate.
The river takes them away from the city.
~changeHope((-2))
~recruitSparks(false)
~changeScene("EndDayScene")
-> END