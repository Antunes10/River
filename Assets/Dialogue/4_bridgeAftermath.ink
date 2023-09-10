INCLUDE globals.ink

->main

=== main ===
#speaker: #layout:middle:nimbus_default #layout:left:tails_default #layout:right:sparks_default_m #background:village #nextMusic:
The night is about to fall.
They reach the outskirts of a small, destroyed village, illuminated by the shimmering pale light of the sunset.
They have been travelling for hours.
#speaker:Tails #portrait:tails_default
perhaps its best if we stop here for the night.
#speaker:Nimbus #portrait:nimbus_default
Why don’t we keep going? The river is making all the work.
#speaker:Tails #portrait:tails_sad #layout:left:tails_sad
My arms are tired, steering this shell is no easy work.
#portrait:tails_default #layout:left:tails_default
Besides, we don’t know what dangers might lurk in the dark of night.
#speaker:
They agree with the plan, docking the helmet near the river’s shoreline, next to a large log.
Their paws and feet touch the murky sands and start walking in the direction of a house with a collapsed ceiling.
#speaker:Nimbus #portrait:nimbus_happy #layout:middle:nimbus_happy
Perhaps its best if I scout ahead, my wing should be healed now.
#speaker:
The bird flaps his wings and lunges upwards.
#speaker:Nimbus #portrait:nimbus_scared #layout:middle:nimbus_scared
Ahhhhhhh!
#speaker: #layout:middle:nimbus_sad
Only to fall hard on the ground, unable to fly.
#speaker:Nimbus #portrait:nimbus_sad 
My wing!
#speaker: #layout:left:tails_sad #layout:right:sparks_sad_m
The other two rush to his side.
His wing still seems badly hurt.
#speaker:Sparks #portrait:sparks_default #layout:right:sparks_default_m
Don’t worry Mr.nimbus, I can go take a look!
You should rest your beautiful wings.
#speaker: #layout:right:default
He takes off buzzing through the air, disappearing in the night.
Tails and nimbus stand next to each other, and the mouse can see that wing’s damage was irreversible.

+[Tell him the truth about his wing.]
    ~decreaseHope(1)
    ~currentHope = currentHope - 1
    ~nimbus_hopeful_VS_truth = 1
    #speaker:
    Tails approaches him and his voice goes soft.
    #speaker:Tails #portrait:tails_sad
    nimbus… I’m sorry but your wing…
    #speaker:
    The bird frowns.
    #speaker:Nimbus #portrait:nimbus_default #layout:middle:nimbus_default
    What are you trying to say?
    #speaker:
    It hurst him to say it, but he knows he must.
    #speaker:Tails #portrait:tails_sad #layout:left:tails_sad
    I don’t think you will ever recover.
    #speaker:Tails #portrait:nimbus_scared #layout:middle:nimbus_scared
    You are lying!
    It just needs a bit of rest.
    #speaker:Tails #portrait:tails_sad
    You know it as well as I.
    I’m sorry.
    #speaker:Nimbus #portrait:nimbus_sad #layout:middle:nimbus_sad
    No… no…
    #speaker:
    His initially hard demeanour starts crumbling and tears start to fall from his eyes.
    The mouse places his little paw on the bird’s head.
    The darkness of night fell even stronger.
    Perhaps because it was time.
    Or perhaps because of a broken spirit.

+[Keep him hopeful.]
    ~increaseHope(1)
    ~currentHope = currentHope + 1
    ~ nimbus_hopeful_VS_truth = 0
    #speaker:Tails #portrait:tails_default #layout:left:tails_default
    I know you want to be helpful.
    But that wing won’t fix itself if you don’t let it rest.
    #speaker: #layout:middle:nimbus_sad
    The bird exhales unsatisfied with the situation.
    #speaker:Nimbus #portrait:nimbus_sad
    You’re right.
    #portrait:nimbus_default #layout:middle:nimbus_default
    But I want to do my part. I don’t want to be a burden to both of you.
    #speaker:
    The mouse places his paw on the bird’s good wing.
    #speaker:Tails #portrait:tails_default 
    And you will.
    But you must do it from the ground.
    #speaker:Nimbus #portrait:nimbus_default 
    What can I do without my wings?
    #speaker:Tails #portrait:tails_happy #layout:left:tails_happy
    Well… I don’t have any. Do you think I’m useless?
    #speaker: #layout:middle:nimbus_happy
    The birds lets out a small laugh.
    #speaker:Nimbus #portrait:nimbus_happy
    A mouse with wings, ah ah.
    That would be something worth to see.
    #speaker:
    He then regains his determination.
    #speaker:Nimbus #portrait:nimbus_default #layout:middle:nimbus_default
    No, you are invaluable. Without you I would have died in that wire.
    I will follow your example and try to find ways to be helpful.
    #speaker: #layout:left:tails_happy
    Tails smiles happily.
    He managed to make a bad situation, good.


-#speaker: #layout:left:tails_default #layout:middle:nimbus_default 
The buzzing is heard again.
#layout:right:sparks_happy_m
With a fast landing the firefly re-joins the group.
#speaker:Sparks #portrait:sparks_happy
It’s… it’s… it’s…
#speaker:Tails #portrait:tails_default
Breath first, little one.
#speaker:
The bug takes and exaggerated breath and then smiles jokingly.
#speaker:Sparks #portrait:sparks_happy 
It’s empty!
No badies around.
#speaker:
Soothed by the information, the animals go to the human settlement in search for a place to spend the night.
#background:villageHouse
Now closer they see that most of the buildings are reduce to rubble. With the house they were eyeing, one of the few that could offer any kind of shelter.
Craters make the path uneven and what were once fences are now piles.
#speaker:Tails #portrait:tails_default
Why would they destroy so much?
#speaker:Nimbus #portrait:nimbus_default
Humans... My brother always told me it was useless to understand them.
Today they build, tomorrow they destroy.
#speaker:
None of them were equipped to answer the mouse’s question.
They could only watch as a once yellow and lush land was made barren.
Their steps echoed inside the destroyed building.
Here at least the wind didn’t bite them.

{nimbus_hopeful_VS_truth == 0: ->if_hopeful_1 | ->if_truth_1}

~currentFood = currentFood - 1
~changeScene("EndDayScene")

->END

=== main2 ===
#speaker:
Now that the night reigned, they scraped the little food they had into a tasty dinner.
Soon they would eat the last of their supplies, perhaps it was a good idea to go and find more in the village.
Or perhaps it was best if Tails spent some time with his companions.

+[Look for food]
    #speaker:
    Right now, their provisions take priority.
    #layout:middle:tails_default #layout:right:default #layout:left:default 
    The mouse warns his companions and goes out into the night.
    It is cold and dark, but thankfully his nose can “see” very well.
    There are some natural scents…
    Some that could come from food…
    And some that he wanted to avoid…
    He follows the stronger and most promising.
    Arriving to a crater where there is nothing left besides crumbs.
    #speaker:Tails #portrait:tails_default
    Unto the next one.
    #speaker:
    His nose guides him again, but he is unlucky a second time.
    #speaker:Tails #portrait:tails_default
    There has to be something around.
    #speaker:
    Suddenly his snout picks the scent of bread.
    But it was next to another one that remind him of…
    #layout:middle:tails_scared
    Death.
    
    ++[Go anyway.]
        ~increaseFood(1)
        ~currentFood = currentFood + 1
        ~ found_food = found_food + 1
        #speaker: #layout:middle:tails_sad
        It was uncomfortable, but it was a necessary evil.
        #layout:middle:tails_scared
        He got closer to the origin and saw a body lying on the ground, in a pool of murky red.
        It was an old man.
        #layout:middle:tails_sad
        With grey hair and a green bucket hat.
        He didn’t deserve that fate.
        No one did.
        Tails washed away his eyes and climbed the cold body to reach his pocket.
        There was a good lump of bread still edible, protected by the clothes.
        He pulled hard and made it fall into the dirt.
        That would feed them for another day.
        As he starts to drag the food back to the shelter he takes one last look back.
        It was sad.
        Left there alone and forgotten.
        A fate no one deserved.

    ++[Go back to the shelter.]
        #speaker:
        It was not worth it.
        They could fight hunger for a bit…
        But to fight against desperation…
        That was a much harder fight.
        He turned his back and went back to the cosiness of their nest.
        
    

+[Talk with the others]
    ~increaseHope(1)
    ~currentHope = currentHope + 1
    #speaker:
    Right now, hope was more important than fighting hunger.
    Her mother always taught him the spirit was as much important as the body.
    
    ++[Sparks]
        #speaker: #layout:left:tails_default #layout:middle:default #layout:right:sparks_default_m
        Tails looked around and found the firefly’s light hight above, on the parapet on an open window.
        Nimbly he climbed unto it and sat next to Sparks.
        He was shinning his light brightly into the night.
        #speaker:Sparks #portrait:sparks_default
        Hey Mr.Tails!
        Do mouses like to stare at the dark too?
        #speaker:Tails #portrait:sparks_default
        Not usually.
        I don’t think most animals enjoy the dark.
        #speaker:Sparks #portrait:sparks_default
        Oh, that’s unfortunate.
        #portrait:sparks_happy #layout:right:sparks_happy_m
        We love the dark!
        It’s thanks to it that our lights can shine so bright and be seen far, far away.
        #speaker:
        The mouse lets out a smile.
        #speaker:Tails #portrait:tails_happy #layout:left:tails_happy
        I think I can understand that.
        #speaker: #layout:left:tails_default
        His eyes looked towards the infinite void, and somehow…
        He finds quiet and peace.
        After days of catastrophe and apocalyptic chaos.
        The silence was soothing.
        Furthermore, no destruction could be seen without the sun.
        He could imagine everything beautiful again.
        A few moments pass.
        #speaker:Tails #portrait:tails_default 
        I think I am going to sleep now. Do you want to come too?
        #speaker:Sparks #portrait:sparks_default #layout:right:sparks_default_m
        Not yet.
        I’ll shine my light a bit longer.
        #speaker:Tails #portrait:tails_default
        You can shine it down there if you want.
        #speaker:Sparks #portrait:sparks_default
        But that way my mother wouldn’t be able to see it.
        #speaker:
        Tails understood now why he was there facing the open night.
        Why he was looking hopefully to the stary night.
        #speaker:Sparks #portrait:sparks_default
        Here in the night, she will be able to spot my light.
        She will find me, I know she will.
        #speaker:Tails #portrait:tails_default
        Yes, I know she will too.
        The mouse gives a little kiss to the firefly’s forehead and goes back to the nest.

    ++[Nimbus]
        {nimbus_hopeful_VS_truth == 0: ->if_hopeful_2 | ->if_truth_2}
        
    -
~currentFood = currentFood - 1
~changeScene("EndDayScene")

->END


=== if_hopeful_1 ===
#speaker: #layout:left:tails_default #layout:middle:nimbus_default #layout:right:sparks_default_m
With nimbus’s help, Tails was able to build a small shelter of leaves and twigs.
Although unable to fly, his beak could still carry several things.
And thanks to Tail’s words he was determined to help.
#speaker:Sparks #portrait:sparks_happy
Awesome! Our own little nest.
#speaker:Nimbus #portrait:nimbus_default
It’s a bit dark though.
#speaker:Sparks #portrait:sparks_happy
I got it cover.
Behold my shiny booty!
#speaker:
The firefly rises his behind and shines light inside the shelter.
The bird and mouse laugh with the juvenal joy of Sparks and take their place with comfort.
Inside they could share their heat and sleep more comfortably.

->main2


=== if_truth_1 ===
#speaker: #layout:right:nimbus_sad_m #layout:middle:sparks_happy
Tails was able to build a small shelter of leaves and twigs.
It took a bit of time without nimbus’s help.
Who could blame him?
He sat in a corner sniffing occasionally, while checking his wing for the inevitable truth.
#speaker:Sparks #portrait:sparks_happy
Hey Mr.nimbus, do you want to join us in this cosy shelter?
#speaker:
The bird did not answer.
#speaker:Tails #portrait:tails_sad #layout:left:tails_sad
It is alright, Sparks. He needs time.
#speaker: #layout:middle:sparks_sad
The firefly’s antennas fell with sadness, and he went inside defeated.

->main2


=== if_hopeful_2 ===
#speaker: #layout:left:tails_default #layout:middle:default #layout:right:nimbus_default_m
The bird is sitting inside the shelter, checking is wing.
#speaker:Tails #portrait:tails_default
Everything alright?
#speaker:Nimbus #portrait:nimbus_default
Yep, I just finished patching it a bit tighter.
#speaker:
He shows his wing tighten to his chest with a little cloth.
#speaker:Tails #portrait:tails_default
That’s neat. How did you manage to do it without paws?
#speaker:
The bird smiles.
#speaker:Nimbus #portrait:nimbus_default
It’s something my older brother taught me.
You just have to use your feet and beak and use them as counterweights.
#speaker:
He seems proud of himself.
#speaker:Tails #portrait:nimbus_default
You seem to have learned a lot from your brother.
#speaker:Nimbus #portrait:nimbus_default
yes. He is wise as an owl, strong as an eagle and brave as a pigeon.
#speaker:
The fact that nimbus said “is” gave Tails courage to make the question.
#speaker:Tails #portrait:tails_default
Where is he now?
#speaker:
The birds’ eyes turn East.
#speaker:Nimbus #portrait:nimbus_default
Somewhere. Out there.
He stayed behind to save as many as he could.
#speaker:Tails #portrait:tails_default
Woodpeckers?
#speaker:Nimbus #portrait:nimbus_default
Animals. All kinds.
Brave and kind. That is a great brother.
#layout:right:nimbus_sad_m
nimbus looks down a bit sad.
#speaker:Nimbus #portrait:nimbus_sad 
Yes, he is. But a part of me wishes he didn’t stay behind. That he’d be selfish for once.
That way we would still be together.
#speaker:Tails #portrait:tails_default
Somewhere out there, someone is thinking otherwise.
#speaker: #layout:right:nimbus_happy_m
The bird gave him a proud smile and a tear fell.
#speaker:Nimbus #portrait:nimbus_default #layout:right:nimbus_default_m
Yes, there is.
And I can only hope to make half the difference here, that he is making out there.
#speaker:Tails #portrait:tails_default
You will need your full strength for that!
And a good night’s rest.
#speaker:Nimbus #portrait:nimbus_default
Oi! Don’t go acting like a lousy parent.
I’m almost full grown!
#speaker: #layout:left:tails_happy #layout:right:nimbus_happy_m
They try too initially but fail to contain a thunderous laughter.
Tails falls on his back and nimbus feels his injury sting with the uncontrollable giggling.
It takes a few seconds for them to compose themselves.
#speaker:Nimbus #portrait:nimbus_default #layout:right:nimbus_default_m
Thank you, Tails. I needed that.
#speaker:Tails #portrait:tails_default #layout:left:tails_default
You and me both.
#speaker:
With a smile and a small goodbye, the woodpecker goes to lie down on a small pile of leaves.

~currentFood = currentFood - 1
~changeScene("EndDayScene")

->DONE

=== if_truth_2 ===
#speaker: #layout:left:tails_default #layout:middle:default #layout:right:nimbus_sad_m
The bird is sitting alone in a dark corner.
He checks is wing occasionally, still incredulous with the truth the mouse told him.
#speaker:Tails #portrait:tails_default
Are you alright?
#speaker:
The bird does not turn around to meet him.
#speaker:Nimbus #portrait:nimbus_sad
How could I be?
It was not enough to lose everything, I had to lose the most important thing to a bird.
#speaker:Tails #portrait:tails_default
No, you did not…
You are still alive.
Lots of other birds where not that lucky.
#speaker:
Silence speaks.
Then the bird finally turns around.
#speaker:Nimbus #portrait:nimbus_default #layout:right:nimbus_default_m
I guess you’re right.
Rather alive and flyless than dead with wings.
#speaker:
It was a macabre line of thought but it was better than the previous one he was having.
Right now, he needed motivation to go on.
#speaker:Tails #portrait:tails_default
This is not over yet. We saved you today, but we might need you to save us tomorrow.
We are only three and we need you with us.
#speaker:Nimbus #portrait:nimbus_sad #layout:right:nimbus_sad_m
Why would you need a wingless bird?
#speaker:Tails #portrait:tails_default
I am wingless too.
#speaker:
The basic revelation weights on nimbus’s mind.
#layout:right:nimbus_default_m
He then looks at Tails with more energy.
#speaker:Nimbus #portrait:nimbus_default
I will try to help.
#speaker:Tails #portrait:tails_default
Try is all we can do.
And together we will prevail.
#speaker:
They share a small moment of hope.
Even though the world outside harbours dangers to greater to face. In that small moment they fear nothing.
#speaker:Tails #portrait:tails_default
I will go back. We have a long day ahead of us.
Want to come too?
#speaker:Tails
The bird confirms with a small nod, and they go back to the warmth of the shelter together.

~currentFood = currentFood - 1
~changeScene("EndDayScene")

->DONE

->END