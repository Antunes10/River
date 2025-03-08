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
#layout:middle:tails_sad #layout:sparks:sparks_sad_m #layout:left:oak_scared #layout:right:nimbus_default_m
A scent of death hangs in the air.
#speaker:Tails #portrait:tails_sad
I cannot see where we are going.
I no longer know where’s West.
#speaker:
They all seem uncertain and apprehensive about the march they now traverse.
#speaker:Sparks #portrait:sparks_sad
My light can’t make the fog go away…
And the water in the air makes my wings heavy…
#speaker:Oak #portrait:oak_sad #layout:left:oak_sad
Stay inside our transportation, little bug.
We need to stay together, or we risk losing ourselves in the shifty mist.
#speaker:Tails #portrait:tails_sad
This smell is awful, where is it coming from?
#speaker:Oak #portrait:oak_sad
I believe we do not want to know.
#speaker:
They try to keep going in one direction but make no visible progress.
#background:swapCrowTree
A tree appears.
A dead tree.
#layout:sparks:sparks_sad_m
Twisted and grey, as if choked by the murky waters and mud that surrounds it.
They all feel an icy shiver down their spines.
#speaker:Sparks #portrait:sparks_sad
Hmmm, I don’t wanna be here…
#speaker: #layout:sparks:default
The small bug hides inside the dog’s hat, shaking in terror.
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
    #speaker:Oak #portrait:oak_sad
    Are we not going to inquire him for help?
    #speaker:Tails #portrait:tails_sad
    I rather not.
    I sense he's not to be trusted.
    #speaker:
    No one seems to disagree with him.
    #background:swamp
    And so the helmet keeps daring through the thick mist that surrounds the world.
    Minutes pass.
    Hours pass.
    And nothing.
    Just mud, drowned brushes and a scent of death.
    #speaker:Nimbus #portrait:nimbus_default
    We are going in circles. What if we just wait out this mist?
    #speaker:Tails #portrait:tails_default
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
    #portrait:crow_default #background:swapTree #layout:right:crow_default_m #layout:middle_left:nimbus_default
    #speaker:Crow 
    Many greetings to you all.
    What brings you to my swamp?
    #speaker:
    His voice is harsh and deep.
    #speaker:Tails #portrait:tails_default #layout:middle:tails_default
    We got lost, thanks to this sly mist. And we are trying to find our way West.
    #speaker:Crow #portrait:crow_default
    I see…
    Many more have passed through here.
    Many more traveling West.
    #portrait:crow_menacing #layout:right:crow_menacing_m 
    I helped them all.
    #speaker:Nimbus #portrait:nimbus_default
    That’s great. Can you help us too?
    #speaker: #layout:right:crow_default_m
    The crow looks at each of them individually.
    #layout:right:crow_menacing_m #portrait:crow_menacing #speaker:Crow
    Of course.
    #speaker: #layout:right:nimbus_default_m #layout:middle_left:default
    He opens his wings again and starts flying away.
    The mouse loses no time getting back in the water and following the black bird.
    #speaker:Nimbus #portrait:nimbus_default
    He’s going left. We were going in the wrong direction.
    #speaker:
    Some faces lighten up with the new route.
    Some time passes as the bird keeps flying above them, within voice reach.
    #speaker:Tails #portrait:tails_default #layout:middle:tails_default
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
    #portrait:crow_default
    And it is not alone. Hundred more now paint the once green fields.
    Grey and mud fills the world.
    As bodies pile up East and are brought by the murky river.
    #speaker:Sparks #portrait:sparks_sad #layout:sparks:sparks_sad_m
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
    #speaker:Oak #portrait:oak_scared #layout:left:oak_scared
    I have a bad feeling about all of this, friends.
    #speaker:Tails #portrait:tails_default #layout:middle:tails_default
    What do you mean?
    #speaker:Oak #portrait:oak_scared
    I mean, we better turn back…
    #speaker:Nimbus #portrait:nimbus_default
    Nonsense, he flies, he can see the way better than us.
    And he said this is his swamp, so he must know it well.
    #speaker:Oak #portrait:oak_scared
    Exactly, Sir Nimbus. Who would want to call this place his home?
    #speaker:
    The dog’s words bring another perspective.
    A perspective so dark, they could not see it initially.
    Tails’ stick gets stuck in the mud and the helmet is brought to a halt.
    The waters have turned to black mud.
    A sticky and shifty mud.
    #speaker:Nimbus #portrait:nimbus_scared #layout:right:nimbus_scared_m
    Hey! Crow! We are stuck.
    #speaker:
    But the flying guide is nowhere to be seen.
    Suddenly, the helmet starts to sink.
    #speaker:Tails #portrait:tails_scared #layout:middle:tails_scared
    This is not mud, this is oil!
    #layout:left:oak_scared #layout:right:nimbus_sad_m #speaker:
    They all scream.
    Slowly, the helmet starts to sink in the tar pit.
    #layout:left:default
    Oak tries to jump out of the helmet, but the oil gets to him.
    #layout:right:default
    Nimbus opens his wings, but he can't fly away.
    #background:black #layout:middle:default #layout:sparks:default
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
#speaker:
The mouse returns inside.
#speaker:Nimbus #portrait:nimbus_default
Any changes?
#speaker:
He shakes his head.
#speaker:Tails #portrait:tails_sad #layout:middle:tails_sad
It’s fine, let’s eat something while we wait.
Here we are safe from the cold.
#speaker:
~changeFood(-nSaved)
They all agree and start munching away their anxiety and hunger.
Time passes.
And again, the mouse goes to the top.
And again, the mist hasn’t disappeared.

->ChoicePanel

=== noFoodAndWaited ===
#speaker:
As you return to the inside of the helmet, you notice there's no more food left.
->RiskIt

=== Wait ===
#speaker:Tails #portrait:tails_default
Let’s play safe.
#speaker:
The mouse stores the stick inside and sits comfortably.
The others also take their place, with the dog covering the top with his head and hat.
#speaker:Sparks #portrait:sparks_sad #layout:sparks:sparks_sad_m
Are we going to stay here too long?
#speaker:Tails #portrait:tails_default
Just until the mist starts to disappear.
#speaker:Sparks #portrait:sparks_default #layout:sparks:sparks_default_m
It’s comfy inside. Mr. Oak keeps us all warm.
#speaker:
The firefly smiles, looking at the dog, that returns the smile.
Time passes.
Finally, tired of waiting, Tails peaks from under Oak’s hat.
The mist hasn’t disappeared.

->ChoicePanel

=== RiskIt ===
#speaker: 
Tails has a feeling they will starve if they stay in this forsaken place.
#speaker:Tails #portrait:tails_sad #layout:middle:tails_sad
We can’t risk waiting anymore. We have to venture forward, no matter the direction we take.
#speaker:
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
#speaker:Nimbus #portrait:nimbus_sad #layout:right:nimbus_sad_m
Is everything alright?
#speaker:Tails #portrait:tails_default
Yeah, yeah…
Don’t worry, you can stay there.
#speaker:
He does is best to avoid sharing the horror he is seeing.
With some effort, he frees the helmet and goes around the body.
The mist start to dissipate and a terrifying image lays before the small mouse’s eyes.
Tens of bodies, sunken and swallowed by the marsh’s waters, float all around them.
Some bodies still red, others, maimed in ways inconceivable.
His hands shake with the horror he was seeing.
But he keeps going, occasionally closing his eyes to avoid the nightmares that already shook his life.
Time seems infinite.
Minutes turn to years.
Until finally a huge shadow obscures them and everything around.
A huge object before them, towers the waters, covering the sun behind.
The rest of the group notice the sudden darkness and emerge from under the hat with curiosity.
#speaker:Nimbus #portrait:nimbus_scared #layout:right:nimbus_scared_m
What in the…
#speaker:
A huge building appears from inside the mist.
Bigger than any tree they had seen.
It has huge scars on his body, with half its structure already collapsed.
And another building follows behind.
And another, and another…
#speaker:Oak #portrait:oak_scared #layout:left:oak_scared
This is not a swamp…
This is a city…
#speaker: #layout:middle:tails_sad 
Shock and awe.
#speaker:Tails #portrait:tails_sad
The river flooded an entire city…
Was it them and their war?
#speaker:
No animal in this world could answer that question.
No animal in this world had seen what they were about to…
A city flooded by waters that carried the dead with it.
A city in ruins.

~changeScene("RiverScene")

->END