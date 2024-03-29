INCLUDE globals.ink

->main

=== main ===
#background:swamp #speaker: #layout:left:tails_default #layout:right:sparks_default_m
~unlockImage(14)
Grey is the world clouded by the uncertain mist.
A greyness that brings confusion, fear and the loss of bearings.
The night went by and now the slow river reaches a march an its waters spread throughout the unseen horizon.
From few meters wide, it transforms into several hundred, with no unified flow or direction.
#layout:left:tails_sad #layout:right:sparks_sad_m
A scent of death hangs in the air.
#speaker:Tails #portrait:tails_sad
Tails: I cannot see where we are going.
Tails: I no longer know where’s West.
#speaker:
The firefly seems to get smaller and more frightened.
#speaker:Sparks #portrait:sparks_sad
Sparks: My light can’t make the fog go away…
Sparks: And the water in the air makes my wings heavy…
#speaker:Tails #portrait:tails_sad
Tails: Stay inside the shell, Sparks. You’re safe here with me.
#speaker:
They try to keep going in one direction but make no visible progress.
A tree appears.
A dead tree.
Twisted and grey, as if choked by the murky waters and mud that surrounds it.
They both feel an icy shiver down their spines.
#speaker:Sparks #portrait:sparks_sad
Sparks: Hmmm, I don’t wanna be here…
#speaker: #layout:right:default
The small bug hides inside the helmet, shaking in terror, while Tails stays apprehensive, looking at the macabre.
A single black bird stands atop the tree, in one of its longer branches.
It seems unphased by all the eeriness around him.
Looking around with dark eyes.

+[Avoid the Crow]
    #speaker: #layout:right:sparks_sad_m
    Tails pushes the helmet forward and away from the dead tree.
    #speaker:Tails #portrait:tails_sad
    Tails: I sense he is not to be trusted.
    #speaker:
    The helmet keeps daring through the thick mist that surrounds the world.
    Minutes pass.
    Hours pass.
    And nothing.
    Just mud, drowned brushes, and a scent of death.
    #speaker:Sparks #portrait:sparks_sad
    Sparks: I think we’ve been here.
    Sparks: Are we going in circles, Mr.Tails?
    #speaker:Tails #portrait:sparks_sad
    Tails: I don’t know, Sparks. With this heavy fog I can’t see much.
    #speaker:
    The mouse looks around, but he can’t seem to find the right path.
    
    ->ChoicePanel
+[Ask the Crow for help]
    #speaker: #layout:right:sparks_sad_m
    Tails pushes the helmet forward.
    The tree gets bigger and bigger. Becoming even more frightening.
    They stop right under it.
    The crow looks down unsurprised.
    #speaker:Tails #portrait:tails_sad
    Tails: Hey there, friend!
    #speaker:
    The bird leans downwards and takes a look at them.
    #speaker:Tails #portrait:tails_sad
    Tails: Could you help us get out of this bog?
    Tails: We can’t figure out where’s West.
    #speaker:
    The bird’s wings open wide, making it look a lot bigger than before.
    #layout:middle:tails_sad #layout:left:sparks_sad #layout:right:crow_default_m
    He then flaps them with ease and lowers himself to a branch closer to them.
    #speaker:Crow #portrait:crow_default
    Crow: Many greetings to you all.
    Crow: What brings you to my swamp?
    #speaker:
    His voice is harsh and deep.
    #speaker:Tails #portrait:tails_default #layout:middle:tails_default
    Tails: We got lost, thanks to this sly mist. And we are trying to find our way West.
    TODO:colocar os fundos com e sem o corvo quando ele aparece e desaparece
    #speaker:Crow #portrait:crow_default
    Crow: I see…
    Crow: Many more have passed through here.
    Crow: Many more traveling West.
    #portrait:crow_menacing #layout:right:crow_menacing_m
    Crow: I helped them all.
    #speaker: 
    The crow looks at each of them individually.
    #layout:right:default
    He opens his wings again and starts flying away.
    The mouse loses no time getting back in the water and following the black bird.
    #speaker:Sparks #portrait:sparks_sad #layout:middle:tails_default_m
    Sparks: He’s going the other way…
    #speaker:
    Sparks face lightens up with the new route.
    Some time passes as the bird keeps flying above them, within voice reach.
    #speaker:Tails #portrait:tails_default #layout:middle:tails_default
    Tails: Is it much further?
    #speaker:
    The crow looks around.
    #speaker:Crow #portrait:crow_default
    Crow: Just a bit.
    Crow: This swamp covers all the land.
    #speaker:Tails #portrait:tails_default
    Tails: Is it that big?
    #speaker:
    The bird laughs.
    #speaker:Crow #portrait:crow_menacing
    Crow: Much bigger than you can imagine.
    Crow: And it is not alone. Hundred more now paint the once green fields.
    Crow: Grey and mud fills the world.
    Crow: As bodies pile up East and are brough by the murky river.
    #speaker:Sparks #portrait:sparks_sad
    Sparks: But there is an enchanted land in the West, right?
    #speaker:
    The bird laughs again.
    #speaker:Crow #portrait:crow_default
    Crow: That’s what they all say.
    Crow: But there are humans West too.
    Crow: And death follows in their wake.
    #speaker:
    The ominous words make everyone go sad.
    Hope is drowned by the blackness of the bird’s figure.
    They see no end to the swamp.
    #speaker:Sparks #portrait:sparks_sad #layout:middle:tails_default_m
    Sparks: I’m feeling weird in my tummy, Mr. Tails.
    #speaker:Tails #portrait:tails_default
    Tails: What do you mean? Are you sick?
    #speaker:Sparks #portrait:sparks_sad
    Sparks: I wanna go back.
    #speaker:Tails #portrait:tails_default
    Tails: It’s going to be alright, Sparks, just a bit further and we’ll be out of here.
    #speaker:
    Tails’ stick gets stuck in the mud and the helmet is brought to a halt.
    The waters have turned to black mud.
    A sticky and shifty mud.
    #speaker:Tails #portrait:tails_default #layout:middle:tails_default
    Tails: Hey! Mr. Crow! We are stuck.
    #speaker:
    But the flying guide is nowhere to be seen.
    Suddenly the helmet starts to sink.
    #speaker:Tails #portrait:tails_sad #layout:middle:tails_sad_m
    Tails: This is not mud, this is oil!
    #speaker:
    They all scream.
    Slowly the helmet starts to sink in the tar pit.
    They try to escape but are also swollen by the artificial blackness.
    The crow’s laugh is heard again as they drown in agony and fear.
    A slow and asphyxiating death.

-
TODO:change to dead scene
~changeScene("RiverScene")

->END

=== ChoicePanel ===
+{not Wait} [Wait for the mist to dissipate]
        ->Wait
    +{Wait} [Keep Waiting]
        ->KeepWaiting
    +[Risk it]
        ->RiskIt
    -
->END

=== KeepWaiting === 
        
{currentFood > 0: ->hasFoodAndWaited | ->noFoodAndWaited}

~changeScene("RiverScene")

->END

=== hasFoodAndWaited === 
~currentFood = currentFood - 1
~decreaseFood(1)

#speaker:
The mouse returns inside.
#speaker:Sparks #portrait:sparks_default
Sparks: Are we going now?
#speaker:
He shakes his head.
#speaker:Tails #portrait:tails_sad #layout:left:tails_sad
Tails: Let’s eat something while we wait.
Tails: Here we are safe from the cold.
#speaker:
They all agree and start munching away their anxiety and hunger.
Time passes.
And again, the mouse goas to the top.
And again, the mist hasn’t disappeared.

->ChoicePanel

=== noFoodAndWaited ===
TODO:change to dead scene
~changeScene("RiverScene")
->END

=== Wait ===
#speaker:Tails #portrait:tails_default
Tails: Let’s play safe.
#speaker:
The mouse stores the stick inside and sits comfortably.
The others also take their place, with the dog covering the top with his head and hat.
#speaker:Sparks #portrait:sparks_sad #layout:right:sparks_sad_m
Sparks: Are we going to stay here too long?
#speaker:Tails #portrait:tails_default
Tails: Just until the mist starts to disappear.
#speaker:Sparks #portrait:sparks_default #layout:right:sparks_default_m
Sparks: It’s comfy inside. Mr.Oak keeps us all warm.
#speaker: 
The firefly smiles looking at the dog, that returns the smile.
Time passes.
Finally, tired of waiting, Tails peaks from under Oak’s hat.
The mist hasn’t disappeared.
->ChoicePanel

=== RiskIt ===
#speaker: #layout:right:sparks_sad_m
Tails had the feeling they would starve if they stayed in that forsaken place.
#speaker:Tails #portrait:tails_sad #layout:left:tails_sad
Tails: We can’t risk waiting any more. We have to venture forward, no matter the direction we take.
#speaker:
Apprehension was all around, but no other animal voiced a better option.
The mouse took out his faithful stick and pushed the helmet forwards.
On mud and murky waters, they travel.
The mist grip keeps thigh on the world around.
A white hand that strangles hope.
Time passes.
Hours pass.
And the only thing getting stronger is the smell of death.
(Bump)
The shell gets stuck.
Tails perches on the helmet’s border to see what is holding it down and his eyes widen.
A dead human blocks the way.
#speaker:Sparks #portrait:sparks_sad #layout:right:sparks_sad_m
Sparks: Is everything alright?
#speaker:Tails #portrait:tails_sad
Tails: Yeah, yeah…
Tails: Don’t worry, you can stay there.
#speaker:
He does is best to avoid sharing the horror he is seeing.
With some effort he frees the helmet and goes around the body.
The mist starts to dissipate and a terrifying image lays before the small mouse’s eyes.
Tens of bodies sunken and swallowed by the marsh’s waters, float all around them.
Some bodies still red, others, maimed in ways inconceivable.
His hands shook with the horror he was seeing.
But he kept going, occasionally closing his eyes to avoid the nightmares that already shook his life.
Time seems infinite.
Minutes turn to years.
Until finally a huge shadow obscures them and everything around.
A huge object before them, towers the waters, covering the sun behind.
#speaker:
A huge building appears from inside the mist.
Bigger than any tree they had seen.
It has huge scars on his body, with half its structure already collapsed.
And another building follows behind.
And another, and another…
#speaker:Tails #portrait:tails_sad
Tails: This is not a swamp…
Tails: This is a city…
#speaker:
Shock and awe.
#speaker:Tails #portrait:tails_sad
Tails: The river flooded an entire city…
Tails: Was it them and their war?
#speaker:
No animal in this world could answer that question.
No animal in this world had seen what they were about to…
A city flooded by waters that carried the dead with it.
A city in ruins.

~changeScene("RiverScene")

->END
