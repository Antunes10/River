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
#background:swamp #enviroSound:swamp #music:swamp
#speaker:
~unlockImage(14)
Grey is the world clouded by the uncertain mist.
A greyness that brings confusion, fear and the loss of bearings.
The night went by, and now the slow river reaches a marsh and its waters spread throughout the unseen horizon.
From few meters wide, it transforms into several hundred, with no unified flow or direction.
#layout:middle:tails_sad #layout:right:sparks_sad_m #layout:left:nimbus_default
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
#background:swapCrowTree
A tree appears.
A dead tree.
Twisted and grey, as if choked by the murky waters and mud that surrounds it.
They all feel an icy shiver down their spines.
#speaker:Sparks #portrait:sparks_sad
Hmmm, I don’t wanna be here…
#speaker: 
The others stay as apprehensive, looking at the macabre.
#speaker:Nimbus #portrait:nimbus_default
There's a crow up there.
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
    I sense he's not to be trusted.
    #speaker:
    No one seems to disagree with him.
    #background:swamp
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
    The crow looks down, unsurprised.
    #speaker:Tails #portrait:tails_sad
    Hey there, friend!
    #speaker:
    The bird leans downwards and takes a look at them.
    #speaker:Tails #portrait:tails_sad
    Could you help us get out of this bog?
    We can’t figure out where’s West.
    #speaker:
    The bird’s wings open wide, making it look a lot bigger than before.
    He then flaps them with ease and lowers himself to a branch closer to them.
    #portrait:crow_default #layout:right:crow_default_m #layout:middle_left:sparks_sad
    #speaker:Crow 
    Many greetings to you all.
    What brings you to my swamp?
    #speaker:
    His voice is harsh and deep.
    #speaker:Tails #portrait:tails_default #layout:middle:tails_default
    We got lost, thanks to this sly mist. And we are trying to find our way West.
    #speaker:Crow #portrait:crow_default #background:swapTree
    I see…
    Many more have passed through here.
    Many more traveling West.
    #portrait:crow_menacing #layout:right:crow_menacing_m
    I helped them all.
    #speaker:Nimbus #portrait:nimbus_default #layout:left:nimbus_default
    That’s great. Can you help us too?
    #speaker: #layout:right:crow_default_m
    The crow looks at each of them individually.
    #speaker:Crow #portrait:crow_menacing #layout:right:crow_menacing_m
    Of course.
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
    Just a bit.
    This swamp covers all the land.
    #speaker:Tails #portrait:tails_default
    Is it that big?
    #speaker:
    The bird laughs.
    #speaker:Crow #portrait:crow_menacing
    Much bigger than you can imagine.
    And it is not alone. Hundred more now paint the once green fields.
    Grey and mud fills the world.
    As bodies pile up East and are brought by the murky river.
    #speaker:Sparks #portrait:sparks_sad
    But there is an enchanted land in the West, right?
    #speaker:
    The bird laughs again.
    #speaker:Crow #portrait:crow_menacing
    That’s what they all say.
    But there are humans West too.
    And death follows in their wake.
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
    And he said this is his swamp, so he must know it well.
    #speaker:
    Tails gets pensive.
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
    Suddenly, the helmet starts to sink.
    #speaker:Tails #portrait:tails_scared #layout:middle:tails_scared
    This is not mud, this is oil!
    #speaker: #layout:left:nimbus_scared
    They all scream.
    Slowly, the helmet starts to sink in the tar pit.
    #layout:right:default
    Nimbus opens his wings, but he can't fly away.
    #layout:sparks:default
    Tails looks for Sparks, but she's nowhere to be found.
    #background:black #layout:middle:default
    They try to escape, but are also swallowed by the artificial blackness.
    The crow’s laugh is heard again...
    As they drown in agony and fear.
    A slow and asphyxiating death.

-
~gameOver()

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

{
    - getFood() > 0:
        ->hasFoodAndWaited
    -else:
        ->noFoodAndWaited
}

=== hasFoodAndWaited ===
The mouse returns inside.
Any changes?
He shakes his head.
It’s fine, let’s eat something while we wait.
Here we are safe from the cold.
~changeFood(-nSaved)
They all agree and start munching away their anxiety and hunger.
Time passes.
And again, the mouse goes to the top.
And again, the mist hasn’t disappeared.

->ChoicePanel

=== noFoodAndWaited ===
As you return to the inside of the helmet, you notice there's no more food left.
->RiskIt

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
Tails has a feeling they will starve if they stay in this forsaken place.
We can’t risk waiting anymore. We have to venture forward, no matter the direction we take.
Apprehension is all around, but no other animal voices a better option.
The mouse takes out his faithful stick and pushes the helmet forward.
On mud and murky waters, they travel.
The mist grip keeps thigh on the world around.
A white hand that strangles hope.
Time passes.
Hours pass.
And the only thing getting stronger is the smell of death.
(Bump)
The shell gets stuck.
Tails perches on the helmet’s border to see what is holding it down, and his eyes widen.
A dead human blocks the way.
Is everything alright?
Yeah, yeah…
Don’t worry, you can stay there.
He does is best to avoid sharing the horror he is seeing.
With some effort, he frees the helmet and goes around the body.
The mist starts to dissipate and a terrifying image lays before the small mouse’s eyes.
Tens of bodies, sunken and swallowed by the marsh’s waters, float all around them.
Some bodies still red, others, maimed in ways inconceivable.
His hands shake with the horror he was seeing.
But he keeps going, occasionally closing his eyes to avoid the nightmares that already shook his life.
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