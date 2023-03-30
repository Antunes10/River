INCLUDE globals.ink

->main

=== main ===
#speaker: #layout:left:tails_default #layout:right:sparks_happy_m #background:bridge
As the sunlight begins to pierce the darkness, also birds start to sing their melody.
The cold and grey tunnels gives place to a small forest, painted in colours of golden brown, orange and red.
#speaker:Sparks #portrait:sparks_happy
We made it!
#speaker:Tails #portrait:tails_happy #layout:left:tails_happy
All thanks to you, Sparks.
#speaker:
The young firefly glows with happiness.
#speaker:Tails #portrait:tails_happy 
It’s good to be around nature again. At least this place seems to be unscathed.
#speaker:Sparks #portrait:sparks_sad #layout:right:sparks_sad_m
Yes, tunnels and stone forests can be quite depressing.
#speaker:Sparks #portrait:sparks_default #layout:right:sparks_default_m
Specially if they are all reduce to rumble, with no life around.
#speaker: #layout:right:sparks_happy_m
The mouse understood what the end of the tunnel meant to their relationship of coincidence.
#speaker:Tails #portrait:tails_happy #layout:left:tails_happy
Thank you for your help, Sparks. I think this is where we part ways.
#speaker: #layout:right:sparks_scared_m
The firefly looked confused.
#speaker:Sparks #portrait:sparks_scared
Why? You didn’t like my company?
#speaker:Tails #portrait:tails_sad #layout:left:tails_sad
No, no, that’s not it.
I suppose now you are going to find your mother.
#speaker:Sparks #portrait:sparks_default #layout:right:sparks_default_m
What about you?
#speaker:Tails #portrait:tails_default #layout:left:tails_default
Well, I will keep going West.
To a place where I can find my kind again, without fires or explosions.
A place of peace.
#speaker:Sparks #portrait:sparks_happy #layout:right:sparks_happy_m
That seems nice!
Can I go with you to this enchanted place?
#speaker:Tails #portrait:tails_sad #layout:left:tails_sad
What about your mother?
#speaker:
The firefly smiled.
#speaker:Sparks #portrait:sparks_happy #layout:right:sparks_happy_m 
She is going to find me, I’m sure!
We fireflies always manage to find each other!
#speaker:
His hope was unwavering.
#speaker:Tails #portrait:tails_happy #layout:left:tails_happy
Well in that case we will keep on traveling together.
#speaker: Tails #portrait:sparks_happy #layout:right:sparks_happy_m
Yay!
#speaker:
The two animals faced forward towards the West that awaits them.
It was going to be a long and arduous trip.
But for a moment hope reigned uncontested and they dared to dream.

//TODO: SOMETHING TO SYMBOLIZE TIME PASSING

#speaker: #layout:left:tails_sad #layout:right:sparks_scared_m
A couple of moments pass, and a stone bridge appears between the trees, over the river that now narrowed and slowed a bit.
There were no songs, either by flying birds or climbing mammals.
Silence was now the primary sound.
#speaker:Tails #portrait:tails_scared #layout:left:tails_scared
Something is wrong, stay close Sparks.
#speaker:
The firefly nodded silently.
A chirp pierced the emptiness.
A desperate chirp. Clearly screaming of hopelessness.
#layout:middle:nimbus_sad_hurt_m
As the helmet approached the bridge, they saw a bird fighting against a net of sharp metal claws.
Trapped it was trying to free itself, but each movement allowed the claws to pierce him painfully.

+[Help the Bird]
    #speaker:Sparks #portrait:sparks_sad #layout:right:sparks_sad_m #layout:middle:nimbus_sad_hurt_m
    Poor thing! We have to help him!
    #speaker:
    The mouse did not answer, he just steered the Helmet towards the shore, with his helm.
    The helmet hit solid ground and both animals darted in the direction of the one that was trapped.
    The bird was clearly desperate.
    #speaker:Bird #portrait:nimbus_scared #layout:middle:nimbus_scared_hurt_m
    Help me please! I can’t get out! I’ve been trying for hours.
    #speaker:Tails #portrait:tails_sad #layout:left:tails_sad
    Don’t worry we are going to help you. Just stay still or you’re going to hurt yourself even more.
    Blood was already running down one of his wings.
    
    ->ChoicePanel

+[Ignore the Bird]
    #speaker: #layout:left:nimbus_sad_hurt #layout:middle:tails_sad #layout:right:sparks_sad_m
    There was nothing that they could do.
    A trap like that was too complex for them to disarm.
    They would only lose precious time.
    The mouse looked to the bird with sad eyes.
    #speaker:Tails #portrait:tails_sad
    I’m sorry, we can’t help you.
    #speaker:Bird #portrait:nimbus_scared #layout:left:nimbus_scared_hurt
    No please, no! Don’t leave me here!
    #speaker:
    The birds’ cries were met with deaf ears.
    The mouse was decided.
    #layout:left:default
    He jumped onto the helmet again and kept on following the river.
    The bird still tried to free himself, but in vain.
    Has the bridge started to get smaller with the distance, Sparks broke the silence.
    #speaker:Sparks #portrait:sparks_sad
    Why did we leave him?
    #speaker:Tails #portrait:tails_sad
    Sometimes we can’t save those who need saving.
    #speaker:
    The firefly got sad with the remark.
    It was life and life wasn’t fair.
    There was no place for naivety if they wanted to reach the West.
    
-END OF DIALOGUE

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
The sea of metal intertwines in intrinsic patterns, with fangs sticking out everywhere.
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
The fangs start to cut the trapped animal and Tails stops his efforts.
Then he tries to grab other two metal strings and apply the same tactic.
Until one of the strings escapes his hand and cuts him on the belly.
#speaker:Tails #portrait:tails_scared #layout:left:tails_scared
Dam! That hurts!
#speaker:
No matter where he grabs it seems impossible to free the bird without hurting someone.
->ChoicePanel

=== LookForSomething ===
#speaker:
Looking at the trap the bird got himself into, Tails understood it would be too difficult to free him with his own hands.
The best way was to use something to help.
He looks around at the ground and bushes.
#speaker:Tails #portrait:tails_sad #layout:left:tails_sad
Sparks, help me find something to cut these wires.
#speaker:Sparks #portrait:sparks_default #layout:right:sparks_default_m
You got it!
#speaker: #layout:right:default
The firefly darts away rising in the air to get a better view.
A few moments pass as they both cover a good area in search of the perfect item.
#speaker:Sparks #portrait:sparks_default #layout:right:sparks_default_m
Tails! Tails! I’ve found it!
#speaker: #layout:left:tails_sad 
The mouse approaches the young bug and sees a piece of sharp glass buried on the dirt.
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
    It was clear that not just the glass wasn’t able to cut metal as it would kill the bird if they tried to.
    It was time to choose another way.
    ->ChoicePanel
    
+++[Continue]
    #speaker:
    Tails ignored the bird’s cries.
    With determination he started to cut again.
    Everything shook.
    #layout:right:sparks_scared_m
    The bird started to cry again for him to stop.
    But Tails was decided.
    With every movement the fangs pierced the bird making the blood run red.
    #layout:right:sparks_sad_m #layout:middle:nimbus_sad_hurt_m
    Until suddenly the bird stopped moving.
    #speaker:Sparks #portrait:sparks_sad #layout:right:sparks_sad_m
    Ta… Tails… I think he…
    #speaker:
    The mouse, blinded by his task until now, rose his eyes to meet the trapped animal.
    He was dead.
    Blood was running everywhere.
    He should have stopped cutting.
    ->END

=== LeaveHim ===
#speaker: #layout:left:nimbus_sad_hurt #layout:middle:tails_sad #layout:right:sparks_sad_m
There was nothing that they could do.
A trap like that was too complex for them to disarm.
They would only lose precious time.
The mouse looked to the bird with sad eyes.
#speaker:Tails #portrait:tails_sad
I’m sorry, we can’t help you.
#speaker:Bird #portrait:nimbus_scared #layout:left:nimbus_scared_hurt
No please, no! Don’t leave me here!
#speaker:
The birds’ cries were met with deaf ears.
The mouse was decided.
#layout:left:dafault
He jumped onto the helmet again and kept on following the river.
The bird still tried to free himself, but in vain.
Has the bridge started to get smaller with the distance, Sparks broke the silence.
#speaker:Sparks #portrait:sparks_sad
Why did we leave him?
#speaker:Tails #portrait:tails_sad
Sometimes we can’t save those who need saving.
#speaker:
The firefly got sad with the remark.
It was life and life wasn’t fair.
There was no place for naivety if they wanted to reach the West.
->END

=== UseBranches ===
#speaker:
If they wanted to free the bird they would need to protect him from the metal razors.
#speaker:Tails #portrait:tails_default #layout:left:tails_default
Sparks, help me find some branches.
#speaker:Sparks #portrait:sparks_default #layout:right:sparks_default_m
Roger, roger!
#speaker:
They both ran towards the bushes and started to collect small branches.
A couple of minutes after, they returned with half a dozen dry wooden branches.
#speaker:Tails #portrait:tails_sad #layout:left:tails_sad
Hold still, friend.
#speaker:
The bird looked apprehensive as the mouse placed several branches between him and the wired fangs that encircled him.
Finally, when Tails felt it was safe he place his hands on one of the wires and started to untangle the bird.
The wires moved and didn’t cut the bird.
#speaker:Sparks #portrait:sparks_happy #layout:right:sparks_happy_m
That’s it! You’re doing it, Mr.Tails!
#speaker: #layout:left:tails_scared #layout:middle:nimbus_scared_hurt_m #layout:right:sparks_scared_m
The joyous words were suddenly stuffed by a huge metal roar from above the bridge.
#speaker:Bird #portrait:nimbus_scared
What the hell is this?
#speaker:
All of them stood motionless.
The sound was deafening, and the bridge started to shake.
#speaker:Tails #portrait:tails_scared
Sparks, go see what it is.
#speaker: #layout:right:default
The firefly flown up and disappeared above the bridge.
The mouse continued his work with renewed determination.
Dirt and small rocks started to fall from under the bridge.
#speaker:Bird #portrait:nimbus_scared
Quickly, please! Or we’re going to be buried here.
#speaker: #layout:right:sparks_scared_m
The young bug came back in a hurry.
#speaker:Sparks #portrait:sparks_scared
There are huge metal rocks with wheels, traversing the bridge.
With humans all around.
#speaker:Tails #portrait:tails_scared
Get the helmet ready, then. We must move fast.
#speaker:
As the firefly went away, the mouse removed another wire.
More rocks began to fall and above, human voices began to sound.
The time was running out.
->ChoicePanel

=== KeepTrying ===
#speaker: #layout:middle:nimbus_sad_hurt_m #layout:left:tails_sad #layout:right:sparks_sad_m
Tails kept on with his task of removing the wires.
If the bird was to die, there he wouldn’t die alone.
#layout:middle:nimbus_sad_m
Finally, the last wire was moved away and the bird managed to escape the trap.
The tried to fly away, but fell miserably on the ground.
His right wing was bleeding heavily, and it seemed displaced.
#speaker:Bird #portrait:nimbus_sad 
Darned, I can’t move my right wing!
#speaker:
A huge rock fell right next to the mouse, making him jump with the scare.
#speaker:Sparks #portrait:sparks_scared #layout:right:sparks_scared_m
Hurry Mr.Tails, the bridge is about to fall!
#speaker:
The mouse looked towards the bird that was struggling to walk.
He runs to him and grabs his left wing.
#speaker:Tails #portrait:tails_sad #layout:left:tails_sad
Come on, we can take you inside our shell.
#speaker:
The bird initially argues in pain but then accepts the help.
They drag each other slowly towards the helmet.
Falling debris are now big enough to kill them on impact.
The bird is lunged inside and the mouse jumps behind, pushing the helmet free with his stick.
The “boat” moves away from the ground and away from the bridge.
In an instant all the bridge collapses.
And the shockwave sends the helmet away with the strength of the tide.
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
#speaker:nimbus #portrait:nimbus_happy #layout:middle:nimbus_happy_m
My name is nimbus.
#portrait:nimbus_default #layout:middle:nimbus_default_m
I can’t thank you enough for saving me.
#speaker:Sparks #portrait:sparks_happy #layout:right:sparks_happy_m
You don’t have to! That’s what friends do.
#speaker:
The bird smiles but then he looks at his wing and his face becomes dark.
#speaker:Tails #portrait:tails_default #layout:left:tails_default
Now its not a time for you to worry about it.
I will patch it up in a bit, but our focus should be on getting away from this place.
#speaker:nimbus #portrait:nimbus_default
Where are you going?
#speaker:Sparks #portrait:sparks_default #layout:right:sparks_default_m
West. Towards the enchanted land.
#speaker:nimbus #portrait:nimbus_default 
Guess I’ll accompany you..
For now…
#speaker:
Tails understood his reservation.
#speaker:Tails #portrait:tails_happy #layout:left:tails_happy
You are welcome to.
#portrait:tails_default #layout:left:tails_default
The river kept on flowing.
Taking them away from the forest.
Into the far away land they were searching for.
~ nimbusSaved = 1
->END
