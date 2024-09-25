INCLUDE globals.ink

->main

=== main ===
#speaker: #layout:left:tails_sad #layout:right:sparks_scared_m #background:bridge
~unlockImage(2)
A stone bridge appears between the trees, over the river that now narrows and slows a bit.
There are no songs, either by flying birds or climbing mammals.
Silence is now the primary sound.
#speaker:Tails #portrait:tails_scared #layout:left:tails_scared
Something is wrong, stay close Sparks.
#speaker:
The firefly nodds silently.
A chirp pierces the emptiness.
A desperate chirp. Clearly screaming of hopelessness.
#layout:middle:nimbus_sad_hurt_m #music:nimbus
As the helmet approaches the bridge, they see a bird fighting against a "net of sharp metal claws".
Trapped, it's trying to free itself, but each movement makes the claws pierce him painfully.

+[Help the Bird]
    #speaker:Sparks #portrait:sparks_sad #layout:right:sparks_sad_m #layout:middle:nimbus_sad_hurt_m
    Poor thing! We have to help him!
    #speaker:
    The mouse doesn't answer, he just steers the helmet towards the shore.
    It hits solid ground and both animals dart in the direction of the trapped one.
    The bird is clearly desperate.
    #speaker:Bird #portrait:nimbus_scared #layout:middle:nimbus_scared_hurt_m
    Help me please! I can’t get out! I’ve been trying for hours.
    #speaker:Tails #portrait:tails_sad #layout:left:tails_sad
    Don’t worry, we are going to help you. Just stay still or you’re going to hurt yourself even more.
    Blood is already running down one of his wings.
    
    ->ChoicePanel

+[Ignore the Bird]
    ~decreaseHope(1)
    ~currentHope = currentHope - 1
    #speaker: #layout:left:nimbus_sad_hurt #layout:middle:tails_sad #layout:right:sparks_sad_m
    There is nothing that they could do.
    A trap like that is too complex for them to disarm.
    They will only lose precious time and be vulnerable to the unknown dangers that lurk on the shore.
    The mouse looks at the bird with sad eyes.
    #speaker:Tails #portrait:tails_sad
    I’m sorry, we can’t help you.
    #speaker:Bird #portrait:nimbus_scared #layout:left:nimbus_scared_hurt
    No please, no! Don’t leave me here!
    #speaker:
    The birds’ cries are met with deaf ears.
    The mouse is decided.
    #layout:left:default
    The bird still tries to free himself, but in vain.
    They turn their backs on him.
    As the bridge starts to get smaller with the distance, Sparks breaks silence.
    #speaker:Sparks #portrait:sparks_sad
    Why did we leave him?
    #speaker:Tails #portrait:tails_sad
    Sometimes we can’t save those who need saving.
    #speaker:
    The firefly gets sad with the remark.
    It's life and life isn't fair.
    There's no place for naivety if they want to reach the West.
    
-
~changeScene("RiverScene")

->END

=== ChoicePanel ===
++ {not TakeALook} [Take a look at the barbed wire and the bird]
    ->TakeALook
    
++ {not TryToOpen} [Try to open a gap for the bird to escape]
    ->TryToOpen
    
++ {not LookForSomething} [Look for something to cut the barbed wire]
    ->LookForSomething
    
++ {TakeALook} {not UseBranches} [Use branches to protect the  bird from the fangs]
    ->UseBranches
    
++ {UseBranches} [Keep trying to free the bird]
    ->KeepTrying
    
++ {TryToOpen or LookForSomething} [Leave him]
    ->LeaveHim
    
->DONE


=== TakeALook ===
#speaker:
The "sea of metal" intertwines in intrinsic patterns, with "fangs" sticking out everywhere.
These wires don’t seem to be too heavy to move, but the problem is that every movement can hurt the bird and the one who tries to free him.
If you can manage to protect the bird from the cuts, you will be able to free him.
-> ChoicePanel

=== TryToOpen ===
#speaker:
The mouse places his hands slowly on the metal strings, where there are no cutting edges.
Slowly he starts to separate them, trying to open a gap for the bird to escape.
#speaker:Bird #portrait:nimbus_scared #layout:middle:nimbus_scared_hurt_m
Ouch! It’s cutting my leg!
#speaker:
The "fangs" start to cut the trapped animal and Tails stops his efforts.
Then he tries to grab other two metal strings and apply the same tactic.
Until one of the strings escapes his hand and cuts him on the belly.
#speaker:Tails #portrait:tails_scared #layout:left:tails_scared
Dam! That hurts!
#speaker:
No matter where he grabs it seems impossible to free the bird without hurting someone.
->ChoicePanel

=== LookForSomething ===
#speaker:
Looking at the trap the bird got himself into, Tails understands it's too difficult to free him with his own hands.
The best way is to use something else.
He looks around at the ground and bushes.
#speaker:Tails #portrait:tails_sad #layout:left:tails_sad
Sparks, help me find something to cut these wires.
#speaker:Sparks #portrait:sparks_default #layout:right:sparks_default_m
You got it!
#speaker: #layout:right:default
The firefly darts away rising in the air to get a better view.
A few moments pass as they both cover a large area in search of the perfect item.
#speaker:Sparks #portrait:sparks_default #layout:right:sparks_default_m
Tails! Tails! I’ve found it!
#speaker: #layout:left:tails_sad 
The mouse approaches the young bug and sees a piece of sharp glass buried in the dirt.
#layout:middle:nimbus_sad_hurt_m
With some effort he digs it out and takes it to the barbed wire.
#speaker:Bird #portrait:nimbus_scared #layout:middle:nimbus_scared_hurt_m
What are you going to do with that?
#speaker:Tails #portrait:tails_sad #layout:left:tails_sad #layout:right:sparks_sad_m
Just stay still.
#speaker:
The mouse places the glass’ edge against one of the wires and starts to cut vigorously.
The entire trap shakes.
#speaker:Bird #portrait:nimbus_scared
Stop it! Are you crazy! It hurts!
+++[Stop It]
    #speaker:
    It's clear that only the glass wasn’t able to cut metal as it would kill the bird if he continued.
    It's time to choose another way.
    ->ChoicePanel
    
+++[Continue]
    ~decreaseHope(2)
    ~currentHope = currentHope - 2
    ~nimbusStatus = 0
    #speaker:
    Tails ignores the bird’s cries.
    With determination he starts cutting again.
    Everything shakes.
    #layout:right:sparks_scared_m
    The bird starts to cry again for him to stop.
    But Tails is decided.
    With every movement the fangs pierce the bird making the blood run red.
    #layout:right:sparks_sad_m #layout:middle:nimbus_sad_hurt_m
    Until suddenly the bird stops moving.
    #speaker:Sparks #portrait:sparks_sad #layout:right:sparks_sad_m
    Ta… Tails… I think he…
    #speaker:
    The mouse, blinded by his task until now, rises his head to meet the trapped animal.
    He's dead.
    Blood is running everywhere.
    He should have stopped cutting.
    ~changeScene("RiverScene")
    ->END

=== LeaveHim ===
~decreaseHope(1)
~currentHope = currentHope - 1
~nimbusStatus = 1
#speaker: #layout:left:nimbus_sad_hurt #layout:middle:tails_sad #layout:right:sparks_sad_m
There's nothing that they could do.
A trap like that is too complex for them to disarm.
They will only lose precious time and be vulnerable to the unknown dangers that lurk on the shore.
The mouse looks at the bird with sad eyes.
#speaker:Tails #portrait:tails_sad
I’m sorry, we can’t help you.
#speaker:Bird #portrait:nimbus_scared #layout:left:nimbus_scared_hurt
No please, no! Don’t leave me here!
#speaker:
The birds’ cries are met with deaf ears.
The mouse is decided.
#layout:left:dafault
He jumps onto the helmet again and keeps following the river.
The bird still tries to free himself, but in vain.
Has the bridge starts to get smaller with the distance, Sparks breaks silence.
#speaker:Sparks #portrait:sparks_sad
Why did we leave him?
#speaker:Tails #portrait:tails_sad
Sometimes we can’t save those who need saving.
#speaker:
The firefly gets sad with the remark.
It's life and life isn't fair.
There's no place for naivety if they want to reach the West.

~changeScene("RiverScene")
->END

=== UseBranches ===
#speaker:
If they want to free the bird they need to protect him from the metal razors.
#speaker:Tails #portrait:tails_default #layout:left:tails_default
Sparks, help me find some branches.
#speaker:Sparks #portrait:sparks_default #layout:right:sparks_default_m
Roger, roger!
#speaker:
They both run towards the bushes and start to collect small branches.
A couple of minutes after, they return with half a dozen dry branches.
#speaker:Tails #portrait:tails_sad #layout:left:tails_sad
Hold still, friend.
#speaker:
The bird looks apprehensive as the mouse places several branches between him and the "wired fangs" that encircled him.
Finally, when Tails feels it's safe he places his hands on one of the wires and starts to untangle the bird.
The wires move, but don't cut the bird.
#speaker:Sparks #portrait:sparks_happy #layout:right:sparks_happy_m
That’s it! You’re doing it, Mr.Tails!
#speaker: #layout:left:tails_scared #layout:middle:nimbus_scared_hurt_m #layout:right:sparks_scared_m
The joyous words are suddenly stuffed by a huge metal roar from above the bridge.
#speaker:Bird #portrait:nimbus_scared
What the hell is this?
#speaker:
All of them stand motionless.
The sound is deafening, and the bridge starts to shake.
#speaker:Tails #portrait:tails_scared
Sparks, go see what it is.
#speaker: #layout:right:default
The firefly flies up and disappears above the bridge.
The mouse continues his work with renewed determination.
Dirt and small rocks start to fall from under the bridge.
#speaker:Bird #portrait:nimbus_scared
Quickly, please! Or we’re going to be buried here.
#speaker: #layout:right:sparks_scared_m
The young bug comes back in a hurry.
#speaker:Sparks #portrait:sparks_scared
There are huge "metal rocks with wheels", traversing the bridge.
With humans all around.
#speaker:Tails #portrait:tails_scared
Get the "shell" ready, then. We must move fast.
#speaker:
As the firefly goes away, the mouse removes another wire.
More rocks fall and above, human voices start to be heard.
Time is running out.
->ChoicePanel

=== KeepTrying ===
~increaseHope(1)
~currentHope = currentHope + 1
#speaker: #layout:middle:nimbus_sad_hurt_m #layout:left:tails_sad #layout:right:sparks_sad_m
Tails keeps on with his task of removing the wires.
If the bird is to die here, he won't die alone.
#layout:middle:nimbus_sad_m
Finally, the last wire is removed and the bird manages to escape the trap.
The tries to fly away immediatly, but falls miserably on the ground.
His right wing is bleeding heavily, and it seems displaced.
#speaker:Bird #portrait:nimbus_sad 
Darned, I can’t move my right wing!
#speaker:
A huge rock falls right next to the mouse, making him jump with the scare.
#speaker:Sparks #portrait:sparks_scared #layout:right:sparks_scared_m
Hurry Mr.Tails, the bridge is about to fall!
#speaker:
The mouse looks towards the struggling bird and runs to him, grabbing his left wing.
#speaker:Tails #portrait:tails_sad #layout:left:tails_sad
Come on, we can take you inside our "shell".
#speaker:
The bird initially argues in pain but then accepts the help.
They drag each other slowly towards the helmet.
Falling debris are now big enough to kill them on impact.
The bird is lunged inside and the mouse jumps behind, pushing the helmet into the river, with his stick.
In an instant the bridge collapses.
And the shockwave sends the helmet flying with the strength of the tide.
The dust settles.
All three are safe.
#speaker:Sparks #portrait:sparks_happy #layout:right:sparks_happy_m
That was awesome!
#speaker: #layout:left:tails_happy
The mouse smiles with the young one’s positivity.
#layout:left:tails_default
The bird seems perplexed.
#speaker:Tails #portrait:tails_default
I’m Tails and this is Sparks.
I’m glad we managed to save you.
#speaker:
The bird awakes from his comatose state.
#speaker:Bird #portrait:nimbus_default #layout:middle:nimbus_default_m
Yes, yes… I’m sorry I was shocked…
#speaker:Nimbus #portrait:nimbus_happy #layout:middle:nimbus_happy_m
My name is Nimbus.
#portrait:nimbus_default #layout:middle:nimbus_default_m
I can’t thank you enough for saving me.
#speaker:Sparks #portrait:sparks_happy #layout:right:sparks_happy_m
You don’t have to! That’s what friends do.
#speaker:
The bird smiles but then he looks at his wing and his face darkens.
#speaker:Tails #portrait:tails_default #layout:left:tails_default
Now its not the time for you to worry about it.
I will patch it up in a bit, but our focus should be on getting away from this place.
#speaker:Nimbus #portrait:nimbus_default
Where are you going?
#speaker:Sparks #portrait:sparks_default #layout:right:sparks_default_m
West. Towards the enchanted land.
#speaker:Nimbus #portrait:nimbus_default 
Guess I’ll accompany you..
For now…
#speaker:
Tails understands his reservation.
#speaker:Tails #portrait:tails_happy #layout:left:tails_happy
You are welcome to.
#portrait:tails_default #layout:left:tails_default
~unlockImage(3)
The river keeps on flowing.
Taking them away from the forest.
In the direction of the far away land they are searching for.

~ nimbusSaved = 1
~recruitNimbus()
~ nimbusRecruited = 1
~changeScene("RiverScene")
->END
