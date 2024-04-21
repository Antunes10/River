INCLUDE globals.ink

->main

=== main ===
#background:swamp #speaker: #layout:middle:tails_default #layout:left:nimbus_default #layout:right:sparks_default_m
~unlockImage(14)
Grey is the world clouded by the uncertain mist.
A greyness that brings confusion, fear and the loss of bearings.
The night went by and now the slow river reaches a march an its waters spread throughout the unseen horizon.
From few meters wide, it transforms into several hundred, with no unified flow or direction.
#layout:middle:tails_sad #layout:right:sparks_sad_m
A scent of death hangs in the air.
#speaker:Tails #portrait:tails_sad
I cannot see where we are going.
I no longer know where’s West.
#speaker:
They all seem uncertain and apprehensive about the march they now traverse.
#speaker:Sparks #portrait:sparks_sad
My light can’t make the fog go away…
And the water in the air makes my wings heavy…
#speaker:Tails #portrait:tails_sad
Stay inside the shell, Sparks. You’re safe here with us.
We need to stay together.
#speaker:Nimbus #portrait:nimbus_default 
This smell is awful, where is it coming from?
#speaker:Tails #portrait:tails_sad
I believe we do not want to know.
#speaker:
They try to keep going in one direction but make no visible progress.
A tree appears.
A dead tree.
Twisted and grey, as if choked by the murky waters and mud that surrounds it.
They all feel an icy shiver down their spines.
#speaker:Sparks #portrait:sparks_sad
Hmmm,I don’t wanna be here…
#speaker: 
The others stay as apprehensive, looking at the macabre.
#speaker:Nimbus #portrait:nimbus_default
There is a crow up there.
#speaker:
The woodpecker points up with his beak.
A single black bird stands atop the tree, in one of its longer branches.
It seems unphased by all the eeriness around him.
Looking around with dark eyes.

+[Avoid the Crow]
    #speaker:
    Tails pushes the helmet forward and away from the dead tree.
    #speaker:Nimbus #portrait:nimbus_default
    What are you doing? Don’t you want to ask him for help?
    #speaker:Tails #portrait:tails_sad
    I rather not.
    I sense he is not to be trusted.
    #speaker:
    No one seems to disagree with him.
    And so, the helmet keeps daring through the thick mist that surrounds the world.
    Minutes pass.
    Hours pass.
    And nothing.
    Just mud, drowned brushes, and a scent of death.
    #speaker:Nimbus #portrait:nimbus_default
    We are going in circles. What if we just wait out this mist?
    #speaker:Tails #portrait:tails_sad
    Do you think it will go away?
    #speaker:Nimbus #portrait:nimbus_default
    I’ve never known a mist to stay for too long.
    Besides, we might be heading towards something dangerous we can’t see.
    #speaker:
    The mouse looks around, but none of them holds a better answer.
    
    ->ChoicePanel
    
+[Ask the Crow for help]
    #speaker:
    Tails pushes the helmet forward.
    The tree gets bigger and bigger. Becoming even more frightening.
    They stop right under it.
    The crow looks down unsurprised.
    #speaker:Tails #portrait:tails_sad
    Hey there, friend!
    #speaker:
    The bird leans downwards and takes a look at them.
    #speaker:Tails #portrait:tails_sad
    Could you help us get out of this bog?
    We can’t figure out where’s West.
    #speaker:
    The bird’s wings open wide, making it look a lot bigger than before.
    #layout:right:crow_default_m #layout:middle_left:sparks_sad
    He then flaps them with ease and lowers himself to a branch closer to them.
    #speaker:Crow #portrait:crow_default
    Crow: Many greetings to you all.
    Crow: What brings you to my swamp?
    #speaker:
    His voice is harsh and deep.
    #speaker:Tails #portrait:tails_default #layout:middle:tails_default
    We got lost, thanks to this sly mist. And we are trying to find our way West.
    TODO:colocar os fundos com e sem o corvo quando ele aparece e desaparece
    #speaker:Crow #portrait:crow_default
    Crow: I see…
    Crow: Many more have passed through here.
    Crow: Many more traveling West.
    #portrait:crow_menacing #layout:right:crow_menacing_m
    Crow: I helped them all.
    #speaker:Nimbus #portrait:nimbus_default #layout:left:nimbus_default
    That’s great. Can you help us too?
    #speaker: #layout:right:crow_default_m
    The crow looks at each of them individually.
    #speaker:Crow #portrait:crow_menacing #layout:right:crow_menacing_m
    Crow: Of course.
    #speaker: #layout:right:default #layout:right:sparks_sad_m
    He opens his wings again and starts flying away.
    The mouse loses no time getting back in the water and following the black bird.
    #speaker:Nimbus #portrait:nimbus_default
    He’s going left. We were going in the wrong direction.
    #speaker:
    Some faces lighten up with the new route.
    Some time passes as the bird keeps flying above them, within voice reach.
    #speaker:Tails #portrait:tails_default
    Is it much further?
    #speaker:
    The crow looks around.
    #speaker:Crow #portrait:crow_default
    Crow: Just a bit.
    Crow: This swamp covers all the land.
    #speaker:Tails #portrait:tails_default
    Is it that big?
    #speaker:
    The bird laughs.
    #speaker:Crow #portrait:crow_menacing
    Crow: Much bigger than you can imagine.
    Crow: And it is not alone. Hundred more now paint the once green fields.
    Crow: Grey and mud fills the world.
    Crow: As bodies pile up East and are brough by the murky river.
    #speaker:Sparks #portrait:sparks_sad
    But there is an enchanted land in the West, right?
    #speaker:
    The bird laughs again.
    #speaker:Crow #portrait:crow_menacing
    Crow: That’s what they all say.
    Crow: But there are humans West too.
    Crow: And death follows in their wake.
    #speaker:
    The ominous words make everyone go sad.
    Hope is drowned by the blackness of the bird’s figure.
    They see no end to the swamp.
    #speaker:Sparks #portrait:sparks_sad
    I’m feeling weird in my tummy, Mr. Tails.
    #speaker:Tails #portrait:tails_sad
    What do you mean? Are you sick?
    #speaker:Sparks #portrait:sparks_sad
    I wanna go back.
    #speaker:Tails #portrait:tails_sad
    It’s going to be alright, Sparks, just a bit further and we’ll be out of here.
    #speaker:Nimbus #portrait:nimbus_default
    Don’t worry Sparks, he flies, he can see the way better than us.
    And he said this is his sawm, so he must know it well.
    #speaker:
    Tails gets pensative.
    #speaker:Tails #portrait:tails_sad
    Who would want to stay in a place like this?
    #speaker:Nimbus #portrait:nimbus_default
    Perhaps he’s staying to help stranded animals, like the otter we met the other day.
    #speaker:Sparks #portrait:sparks_default
    Hazel was nice… this crow is not nice…
    #speaker:
    Nimbus understands the little bug’s words and looks again at the skies, changing his mind about the situation.
    Tails’ stick gets stuck in the mud and the helmet is brought to a halt.
    The waters have turned to black mud.
    A sticky and shifty mud.
    Hey! Crow! We are stuck.
    But the flying guide is nowhere to be seen.
    Suddenly the helmet starts to sink.
    #speaker:Tails #portrait:tails_scared #layout:middle:tails_scared
    This is not mud, this is oil!
    #speaker: #layout:left:nimbus_scared
    They all scream.
    Slowly the helmet starts to sink in the tar pit.
    They try to escape but are also swollen by the artificial blackness.
    The crow’s laugh is heard again as they drown in agony and fear.
    A slow and asphyxiating death.

-
TODO: change to dead scene
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

The mouse returns inside.
Any changes?
He shakes his head.
It’s fine, let’s eat something while we wait.
Here we are safe from the cold.
They all agree and start munching away their anxiety and hunger.
Time passes.
And again, the mouse goes to the top.
And again, the mist hasn’t disappeared.

->ChoicePanel

=== noFoodAndWaited ===
TODO:change to dead scene
~changeScene("RiverScene")
-> END

=== Wait ===
Let’s play safe.
The mouse stores the stick inside and sits comfortably.
The others also take their place.
Are we going to stay here too long?
Just until the mist starts to disappear.
It’s a bit cold.
The mouse gets closer to the bug and embraces her.
Is it better now?
Much better!
Time passes.
Finally, tired of waiting, Tails peaks outside.
The mist hasn’t disappeared.

->ChoicePanel

=== RiskIt ===
Tails had the feeling they would starve if they stayed in that forsaken place.
We can’t risk waiting any more. We have to venture forward, no matter the direction we take.
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
Is everything alright?
Yeah, yeah…
Don’t worry, you can stay there.
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
The rest of the group notices the sudden darkness and emerges from inside the helmet.
What in the…
A huge building appears from inside the mist.
Bigger than any tree they had seen.
It has huge scars on his body, with half its structure already collapsed.
And another building follows behind.
And another, and another…
This is not a swamp…
This is a city…
Shock and awe.
The river flooded an entire city…
Was it them and their war?
No animal in this world could answer that question.
No animal in this world had seen what they were about to…
A city flooded by waters that carried the dead with it.
A city in ruins.

~changeScene("RiverScene")

->END