INCLUDE globals.ink

->main

=== main ===
#speaker: #layout:left:tails_default #layout:right:sparks_sad_m #background:village
The night is about to fall.
They reach the outskirts of a small, destroyed village, illuminated by the shimmering pale light of the sunset.
They have been travelling for hours.
#speaker:Tails #portrait:tails_default
perhaps its best if we stop here for the night.
#speaker:
The firefly doesn’t answer.
#layout:left:tails_sad
He has been silent for some time.
His antennas hang low.
Tails docks the helmet near the river’s shoreline, next to a large log.
His paws touch the murky sands, and he starts walking in the direction of a house with a collapsed ceiling.
Sparks is still in the shell.

+[Ask Sparks to go check the village.]
    ~increaseHope(1)
    #speaker:Tails #portrait:tails_sad
    Tails: Hey, little guy… are you alright?
    #speaker:
    He nods his head, clearly lying.
    #speaker:Tails #layout:left:tails_default #portrait:tails_default
    Tails: I need your help; can you do that?
    #speaker: #layout:right:sparks_default_m
    His antennas raise a bit.
    #speaker:Tails #portrait:tails_default
    Tails: I need you to go and check the village up ahead.
    Tails: To make sure it’s safe.
    Tails: With your wings you should have a much better view than me.
    #speaker:Sparks #layout:right:sparks_default_m 
    Sparks: O… Okay.
    #speaker: #layout:right:default
    He gets up slowly and takes off buzzing through the air, disappearing in the night.
    The mouse sits alone, looking towards the river.
    #layout:left:tails_sad
    He knew why his friend was down.
    #speaker:Tails #layout:left:tails_sad #portrait:tails_sad
    Tails: Did I do the right thing?
    
    {nimbusStatus == 1:
        Tails: It was risky to try and save him.
        Tails: I was just trying to keep us both safe.
        #speaker:
        Unsure if he made the right decision, his mind loses itself in thoughts.
        - else:
        Tails: I was trying to save him…
        Tails: I didn’t expect him too…
        #speaker:
        He sniffs his little nose, while his tears drop in the river’s waters.
        He lowers his head while bearing the pain in his chest.
    }
    
    #speaker:
    After a few moments, the buzzing is heard again.
    #speaker:Tails #layout:left:tails_default
    With a fast landing the firefly re-joins.
    #speaker: Sparks #layout:right:sparks_default_m #portrait:sparks_default
    Sparks: It’s… it’s… it’s…
    #speaker: 
    The mouse composes himself.
    #speaker:Tails #portrait:tails_default
    Tails: Breath first, little one.
    #speaker: #layout:right:sparks_happy_m
    The bug takes and exaggerated breath and then smiles jokingly.
    #speaker:Sparks #portrait:sparks_happy
    Sparks: It’s empty!
    Sparks: No badies around.
    #speaker: #layout:left:tails_happy
    The good news is amplified by the fact that the bug seems a little less depressed.
    Perhaps it was a good idea to give him a task.
    Soothed by the information, the animals go to the human settlement in search for a place to spend the night.
    #background:villageHouse #layout:left:tails_default #layout:right:sparks_default_m
    Now closer they see that most of the buildings are reduce to rubble. With the house they were eyeing, one of the few that could offer any kind of shelter.
    Craters make the path uneven and what were once fences are now piles.
    #speaker:Tails #portrait:tails_default
    Tails: Why would they destroy so much?
    #speaker:
    Sparks stayed silent.
    None of them were equipped to answer the mouse’s question.
    They could only watch as a once yellow and lush land was made barren.
    
    Their steps echoed inside the destroyed building.
    Here at least the wind didn’t bite them.
    
    With Spark’s help, Tails was able to build a small shelter of leaves and twigs.
    #speaker:Sparks #layout:right:sparks_happy_m #portrait:sparks_happy
    Sparks: Awesome! Our own little nest.
    #speaker:Tails #portrait:tails_default
    Tails: It’s a bit dark though.
    #speaker:Sparks #portrait:sparks_happy
    Sparks: I got it cover.
    Sparks: Lo and behold my shiny booty!
    #speaker: #layout:left:tails_happy
    The firefly rises his behind and shines light inside the shelter.
    The mouse laughs with the juvenal joy of Sparks and takes his place with comfort.
    Inside they could share their heat and sleep more comfortably.

+[Go and check the village yourself.]
    #speaker:Tails #layout:left:tails_default #layout:right:sparks_sad_m #portrait:tails_default
    Tails: Hey, little guy… are you alright?
    #speaker:
    He nods his head, clearly lying.
    #speaker:Tails #portrait:tails_default
    Tails: I am going to check the village ahead, to see if it’s safe.
    Tails: Can you stay here quiet, until I come back?
    #speaker:Sparks #portrait:sparks_sad
    Sparks: Yes, Mr.Tails…
    #speaker:
    The mouse kisses his forehead and then runs towards the village.
    #layout:right:default #layout:left:default #layout:middle:tails_default
    Now closer he sees that most of the buildings are reduce to rubble. With the house he was eyeing, one of the few that could offer any kind of shelter.
    Craters make the path uneven and what were once fences are now piles.
    However, the village seemed deserted.
    And deserted meaned, safe.
    He didn’t want to stay much time away from the little bug, so he urged back.
    #layout:left:tails_happy #layout:right:sparks_sad_m #layout:middle:default
    Sparks was still sitting quietly on the shell.
    #speaker:Tails #portrait:tails_default
    Tails: Good news little one, the village is safe.
    Tails: We can spend the night inside of the houses.
    #speaker:Sparks #portrait:sparks_sad
    Sparks: O… Okay.
    #speaker: #layout:left:tails_default
    The firefly starts flying slowly in the village’s direction.
    He is clearly affected by what happened at the bridge.
    Once safe, Tails should cheer him up.
    
    #background:villageHouse
    Their steps echoed inside the destroyed building.
    Here at least the wind didn’t bite them.
    
    #layout:left:default #layout:right:default #layout:middle:tails_default
    Tails was able to build a small shelter of leaves and twigs.
    It took a bit of time without Spark’s help.
    Who could blame him?
    He sat in a corner sniffing occasionally.
    #speaker:Tails #portrait:tails_default
    Tails: Hey little one, do you want to join me in this cosy shelter?
    #speaker: #layout:left:tails_default #layout:right:sparks_default_m #layout:middle:default
    The bug nodded and flew inside.
    #speaker:Sparks #layout:right:sparks_default_m #portrait:sparks_default
    Sparks: It’s cozy.
    His faint smile was enough to cheer Tails.

-
Now that the night reigned, they scraped the little food they had into a tasty dinner.
Soon they would eat the last of their supplies, perhaps it was a good idea to go and find more in the village.
Or perhaps it was best if Tails spent some time with his companion.

+[Look for food]
    #speaker:
    Right now, their provisions take priority.
    The mouse warns his companion and goes out into the night.
    #layout:left:default #layout:right:default #layout:middle:tails_default
    It is cold and dark, but thankfully his nose can “see” very well.
    There are some natural scents…
    Some that could come from food…
    And some that he wanted to avoid…
    He follows the stronger and most promising.
    Arriving to a crater where there is nothing left besides crumbs.
    #speaker:Tails #portrait:tails_default
    Tails: Unto the next one.
    #speaker:
    His nose guides him again, but he is unlucky a second time.
    #speaker:Tails #portrait:tails_default
    Tails: There has to be something around.
    #speaker:
    Suddenly his snout picks the scent of bread.
    But it was next to another one that remind him of…
    #layout:middle:tails_sad
    Death.
    
    ++[Go anyway]
        ~increaseFood(1)
        It was uncomfortable, but it was a necessary evil.
        He got closer to the origin and saw a body lying on the ground, in a pool of murky red.
        It was an old man.
        With grey hair and a green bucket hat.
        He didn’t deserve that fate.
        No one did.
        Tails washed away his eyes and climbed the cold body to reach his pocket.
        There was a good lump of bread still edible, protected by the clothes.
        He pulled hard and made it fall into the dirt.
        That would feed them for another day.
        As he starts to drag the food back to the shelter, he takes one last look back.
        It was sad.
        Left there alone and forgotten.
        A fate no one deserved.
    ++[Go back to the shelter]
        It was not worth it.
        They could fight hunger for a bit…
        But to fight against desperation…
        That was a much harder fight.
        He turned his back and went back to the cosiness of their nest.
    --
+[Talk with Sparks]
    #speaker: #layout:left:tails_default #layout:right:sparks_sad_m
    Right now, hope was more important than fighting hunger.
    Her mother always taught him the spirit was as much important as the body.
    And right now, his friend was suffering.
    Tails looked around and found the firefly’s light hight above, on the parapet on an open window.
    Nimbly he climbed unto it and sat next to Sparks.
    He was shining his light brightly into the night.
    #speaker:Sparks #layout:right:sparks_default_m #portrait:sparks_default
    Sparks: Hey Mr.Tails.
    Sparks: Do mouses like to stare at the dark too?
    #speaker:Tails #portrait:tails_default
    Tails: Not usually.
    Tails: I don’t think most animals enjoy the dark.
    #speaker: #layout:right:sparks_sad_m
    The firefly lowers his head.
    #speaker:Sparks #portrait:sparks_sad
    Sparks: Oh, that’s unfortunate.
    #speaker:Tails #portrait:tails_default
    Tails: But I bet fireflies do.
    #speaker: #layout:right:sparks_default_m #portrait:sparks_default
    Sparks face lightens up.
    Sparks: Yes, we do!
    #layout:right:sparks_happy_m
    Sparks: It’s thanks to it that our lights can shine so bright and be seen far, far away.
    #speaker: #layout:left:tails_happy
    The mouse lets out a smile.
    #speaker:Tails #portrait:tails_happy
    Tails: I think I can understand that.
    #speaker: #layout:left:tails_default #layout:right:sparks_default_m
    His eyes looked towards the infinite void, and somehow…
    He finds quiet and peace.
    After days of catastrophe and apocalyptic chaos.
    The silence was soothing.
    Furthermore, no destruction could be seen without the sun.
    He could imagine everything beautiful again.
    A few moments pass.
    
    {nimbusStatus == 1:
        #speaker:Sparks #layout:right:sparks_sad_m #portrait:sparks_sad
        Sparks: Why did we leave him behind?
        #speaker: #layout:left:tails_sad
        The words pierce the silence abruptly, leaving Tails apprehensive.
        He knows he must tackle this problem, or his friend might lose hope.
        ->nimbusLeftBehind
        
    - else:
        #speaker:Sparks #layout:right:sparks_sad_m #portrait:sparks_sad
        Sparks: Why did he had to die?
        #speaker: #layout:left:tails_sad
        The words pierce the silence abruptly, leaving Tails apprehensive.
        He knows he must tackle this problem, or his friend might lose hope.
        ->nimbusDead
    }
-
~changeScene("EndDayScene")
->END

=== nimbusLeftBehind ===
+[It was too risky]
    ~decreaseHope(1)
    #speaker:Tails #portrait:tails_sad
    Tails: It was too risky.
    Tails: We would have died there too.
    #speaker:Sparks #portrait:sparks_sad
    Sparks: But couldn’t we have tried a little more?
    #speaker: #layout:middle:tails_sad #layout:left:default
    The mouse approaches and places his paw on Spark’s shoulder.
    #speaker:Tails #portrait:tails_sad
    Tails: Your heart is in the right place…
    #layout:middle:tails_default
    Tails: But in this world we sometimes have to listen to our head, instead of our heart.
    #layout:middle:tails_sad
    Tails: Or we will share the fate of those we lost.
    #speaker: #layout:middle:default #layout:left:tails_sad
    The firefly takes the advice badly.
    He gets sad and moves away from the mouse.
    #speaker:Sparks #portrait:sparks_sad
    Sparks: I would like to be alone a bit, Mr.Tails…
    #speaker:
    The request hurts the rodent’s feelings, but he heeds it.
    Tails turns his back to his friend and goes back to the nest to sleep away the pain.
    
    ~changeScene("EndDayScene")
    ->DONE
+[You both are the ones that matter]
    #speaker:Tails #portrait:tails_sad
    Tails: We are the ones that matter, little bug.
    Tails: I had a hard choice to make, but in the end I did it for you.
    #speaker:Sparks #portrait:sparks_sad
    Sparks: I know…
    Sparks: I’m not mad at you for that.
    Sparks: I’m just sad we can’t save everyone.
    #speaker: #layout:left:default #layout:middle:tails_sad
    The mouse puts his paw on his friend’s shoulder.
    #speaker:Tails #portrait:tails_sad
    Tails: You have a good heart.
    Tails: You already saved me, so that’s one more than no one.
    #speaker: #layout:middle:default #layout:left:tails_default #layout:right:sparks_default_m
    They both share a smile.
    Looking at the stary sky.

-
#speaker:Tails #portrait:tails_default
Tails: I think I am going to sleep now. Do you want to come too?
#speaker:Sparks #portrait:sparks_default
Sparks: Not yet.
Sparks: I’ll shine my light a bit longer.
#speaker:Tails #portrait:tails_default
Tails: You can shine it down there if you want.
#speaker:Sparks #portrait:sparks_default
Sparks: But that way my mother won’t be able to see it.
#speaker:
Tails understood now why he was there facing the open night.
Why he was looking hopefully to the stary night.
#speaker:Sparks #portrait:sparks_default
Sparks: Here in the night, she will be able to spot my light.
Sparks: She will find me, I know she will.
#speaker:Tails #portrait:tails_default
Tails: Yes, I know she will too.
#speaker:
The mouse gives a little kiss to the firefly’s forehead and goes back to the nest.

~changeScene("EndDayScene")
->END

=== nimbusDead ===
+[It was mankind’s fault]
    ~decreaseHope(1)
    #speaker:Tails #portrait:tails_sad
    Tails: We did the best we could.
    Tails: But look around you.
    Tails: Those who destroy our world…
    Tails: Those who kill all beings…
    Tails: They were the ones that killed that bird.
    #speaker:
    The firefly lowers his head with sadness.
    #speaker:Sparks #portrait:sparks_sad
    Sparks: But we couldn’t save him…
    Sparks: We are too weak to save anybody…
    Sparks: I would like to be alone a bit, Mr.Tails…
    #speaker:
    The request hurts the rodent’s feelings, but he heeds it.
    Tails turns his back to his friend and goes back to the nest to sleep away the pain.
    
    ~changeScene("EndDayScene")
    ->DONE
    
+[It wasn’t your fault.]
    #speaker:Tails #portrait:tails_sad
    Tails: It was not your fault, little one.
    Tails: We did the best we could to save him.
    #speaker:Sparks #portrait:sparks_sad
    Sparks: But… he died… right in front of us…
    #speaker:
    The mouse holds his friend close to his chest.
    #speaker:Tails #portrait:tails_sad
    Tails: I know it hurts.
    Tails: But we won’t fail the next time.
    Tails: Remember you already saved each other.
    Tails: And that’s two more and no one.
    #speaker:
    Sparks tears dry up.
    He raises his eyes towards his friend.
    #speaker:Sparks #layout:right:sparks_default_m #layout:left:tails_default #portrait:sparks_default
    Sparks: You’re right.
    #speaker:
    And embraces him, recovering his spirit.

-
#speaker:Tails #portrait:tails_default
Tails: I think I am going to sleep now. Do you want to come too?
#speaker:Sparks #portrait:sparks_default
Sparks: Not yet.
Sparks: I’ll shine my light a bit longer.
#speaker:Tails #portrait:tails_default
Tails: You can shine it down there if you want.
#speaker:Sparks #portrait:sparks_default
Sparks: But that way my mother won’t be able to see it.
#speaker:
Tails understood now why he was there facing the open night.
Why he was looking hopefully to the stary night.
#speaker:Sparks #portrait:sparks_default
Sparks: Here in the night, she will be able to spot my light.
Sparks: She will find me; I know she will.
#speaker:Tails #portrait:tails_default
Tails: Yes, I know she will too.
#speaker:
The mouse gives a little kiss to the firefly’s forehead and goes back to the nest.

~changeScene("EndDayScene")
->END

=== endDialogue ===
->END