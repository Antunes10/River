INCLUDE globals.ink

->main

=== main ===
#background:city #layout:middle:tails_default

{- hasCotton(): 
    #layout:left:bunny_default
    ~nSaved = nSaved + 1
}
{- hasOak():
    #layout:middle_left:oak_default
    ~nSaved = nSaved + 1
}

#speaker:
This part of the city is totally flooded.
The river carries all sorts of debris and Tails job to keep the helmet afloat becomes increasingly difficult.

{- hasOak():
    #speaker:Oak #portrait:oak_default
    {- hasCotton():
        Can any of you young ones see young Nimbus?
        I'm afraid my old eyes can't help me.
        -else:
            Can you see young Nimbus?
            I'm afraid my old eyes can't help me.
            #speaker:Tails #portrait:tails_default
            No, but...
    }
    
    
}
{- hasCotton():
    #speaker:Cotton #portrait:bunny_default
    I can't seem to find him.
    His tracks lead to this area.
    But this "stone forest" is so big...
}
{
    - nSaved > 0:
        #speaker:Tails #portrait:tails_default
        We can't give up on him.
        We'll find him... I know it.
        NIMBUS!
        {
            - hasOak():
                #speaker:Oak #portrait:oak_default
                I don't think yelling is a good idea...
                There might be humans around...
            -else:
                #speaker:Cotton #portrait:bunny_default
                Don't yell, little one!
                Humans will hear you!
        }
    -else:
        #speaker:Tails #portrait:tails_default
        I can't give up on him.
        I must find him.
        NIMBUS!
}

#speaker:
No answer is heard.
Only the passing water pierces the silence.
Then... by the corner of his eyes, Tails spots a bloody cloth.
The same cloth that Nimbus uses to hold his wing.

{
    - nSaved > 1:
        #speaker:Tails #portrait:tails_default
        Up there!
}
#speaker:
Tails steers the "half-shell" in the direction of a small extruded iron where the cloth is held.
But he has to brake immediately as he sees an underground entrance next to it...
Swallowing water by the waves.
->Underground

{- hasOak():
    #speaker:Oak #portrait:oak_default
    {- hasCotton():
            I'll stay here with the young miss rabbit.
            There is a passage you can take, next to the sign.
            Go! Nimbus can be hiding under there.
        - else:
            I'll stay here, holding the "shell".
            There is a passage you can take, next to the sign.
            Go! Nimbus can be hidding under there.
    }
    ->Underground
}

{- hasCotton():
        #speaker:Cotton
        He might be hidden in the "cave".
        You must search it.
        I'll hold the "shell" for you.
        ->Underground
}



=== Underground ===
#speaker:
Tails takes the helmet to a place where it can be anchored.
And then jumps onto a ledge that goes down without being touched by the waves that dive underground.
#background:tunnel #layout:middle_left:default #layout:left:default

#speaker:
The water crashes with force against the rocks as its sound echoes through the tunnel.
Its dark down here and Tails squints his eyes to see further.
#layout:middle:default
That's when his paws slip...
He tries to grab something but there is nothing to be grabbed...
He falls...
#layout:middle_left:tails_default_m
But as he though his life was over, his tail is caught by something.
It pulls him to a safe place.
#layout:middle_left:tails_scared
He looks behind him...
#layout:right:nimbus_default_m
And sees a young bird with a red patch on his head.
#speaker:Tails #layout:middle_left:tails_scared #portrait:tails_scared
Nimbus!
You saved me!
#layout:middle_left:tails_happy
It's so good to see you safe.
#speaker: #layout:right:nimbus_sad
But the bird doesn't share his enthusiasm.
#layout:middle_left:tails_sad
Nimbus turns his back and moves into the dark.
#layout:middle_left:tails_sad
There is something wrong.
He seems a shadow of himself.
Tails notices his wing is patched with a fresh cloth...
But its tied too high...
Leaving his wing hangging.

++[Ask if he's alright]
    #speaker:Tails #portrait:tails_default #layout:middle_left:tails_default
    Has something happened?
    Are you alright?
    #speaker:
    The bird answers in a lowly voice.
    #speaker:Nimbus #portrait:nimbus_sad #layout:right:nimbus_sad_m
    Alright?
    Look at my wing...
    It's broken.
    What kind of bird am I if I can't fly?
    What would you do if you lost your paw?
    #speaker:
    His spritit is broken
    Tails has never seen him so hopeless.
    ->Talk_to_Nimbus_Q2

++[Offer to help him adjust the cloth]
    #speaker:Tails #portrait:tails_default #layout:middle_left:tails_default
    Your bandage needs adjusting...
    Can I?
    #speaker:Nimbus #portrait:nimbus_sad
    No.
    #speaker:
    His voice is cold.
    A façade of strength and maturity.
    #speaker:Tails #portrait:tails_sad #layout:middle_left:tails_sad 
    I can do it fast.
    So we can make sure it protects the wing and doesn’t let it get in the way.
    #speaker:
    The bird stops his efforts.
    #speaker:Nimbus #portrait:nimbus_sad #layout:right:nimbus_scared_m
    Get in the way?
    It’s my wing! I am a bird.
    It’s supposed to help me fly, to help me be a bird.
    #speaker:
    He raises his voice annoyed at the fact.
    #speaker:Nimbus #portrait:nimbus_scared #layout:right:nimbus_scared_m
    Should I use the bandage for the rest of my life?
    What if you lost a paw? How would you feel?
    #speaker:
    Tails has never seen the bird so annoyed.
    ->Talk_to_Nimbus_Q2


=== Talk_to_Nimbus_Q2 ===

++[I would trust on others to help me]
    #speaker: #layout:middle_left:tails_sad #layout:right:nimbus_sad_m 
    The mouse looks at his precious paws and back at the bird.
    #speaker:Tails #portrait:tails_sad
    I would give thanks to the friends I had.
    And would value their help when I needed it.
    #speaker: #layout:right:nimbus_sad_m
    Nimbus aggressiveness dies down.
    But his eyes remain sad.
    #speaker:Nimbus #portrait:nimbus_sad
    And what if they weren’t there to help you?
    You can’t depend on others for the rest of your life.
    My brother used to protect me from everything…
    #speaker:
    He lowers his beak with sadness.
    #speaker:Nimbus #portrait:nimbus_sad
    Now he’s not here anymore…
    #speaker:
    His tears start to fall.
    #speaker:Nimbus #portrait:nimbus_sad
    To see the failure I've become…
    ->Talk_to_Nimbus_Q3

++[I would accept my new life]
    #speaker:Tails #portrait:tails_default #layout:middle_left:tails_default #layout:right:nimbus_sad_m 
    I would accept my new life.
    Be happy that I was still alive.
    And that I could still help other be happy.
    #speaker: #layout:right:nimbus_sad_m
    Nimbus aggressiveness dies down.
    But his eyes remain sad.
    #speaker:Nimbus #portrait:nimbus_sad
    And what if you couldn't make them happy?
    What if no matter how much you tried...
    You just messed things up.
    #speaker:
    His eyes meet the ground.
    #speaker:Nimbus #portrait:nimbus_sad
    My brother used to make me laugh.
    Now he’s not here anymore…
    #speaker:
    His tears start to fall.
    #speaker:Nimbus #portrait:nimbus_sad
    To see the failure I've become…
    ->Talk_to_Nimbus_Q3


=== Talk_to_Nimbus_Q3 ===

++[You can depend on us]
    #speaker:Tails #layout:middle_left:tails_sad #layout:right:nimbus_sad_m #portrait:tails_sad
    I know your brother can never be replaced.
    #portrait:tails_default #layout:middle_left:tails_default
	But you have us now.
	And we’ll be here to help you when you need it.
	#speaker:
	The bird looks away into the darkness of the tunnel.
	#speaker:Nimbus #portrait:nimbus_sad
	My brother died trying to protect me.
	The same will happen to you.
    I am a burden… that only brings pain to those he loves.
    #speaker:
    He joins the dark, which embraces his dark colors.
    #speaker:Nimbus #portrait:nimbus_sad
    Don’t come looking for me… I am not worth it…
    #speaker: #layout:right:default
    He disappears deep inside the tunnel.
    The world fills itself with emptyness...
    As cold embraces Tails.
    Nimbus is gone.
    ->Nimbus_lost

++[You are not a failure]
    #speaker:Tails #portrait:tails_sad #layout:right:nimbus_sad_m #layout:middle_left:tails_sad
    You are far from a failure, Nimbus.
	You have helped us so much.
	You have the best eyes and a strong beak.
	But most importantly, you are dependable.
	#speaker:
	The bird looks up.
	#speaker:Tails #portrait:tails_sad
	You are fearless.
	You give us strength to carry on.
	#speaker:Nimbus #portrait:nimbus_sad #layout:right:nimbus_sad_m
	You are… lying… just to make me feel better.
	#speaker: #layout:middle:tails_default #layout:middle_left:default
    The mouse gets closer to nimbus and looks him in the eyes.
    #speaker:Tails #portrait:tails_default
    I am not.
    We wouldn’t have made it this far without you.
    You just saved me moments ago!
    And that's the hardest of proof.
    #speaker:
    He places his paw over the bird’s shoulder.
    #speaker:Tails #portrait:tails_default
    Your brother would be proud.
    #speaker:
    The words hit him like a sunshine, brightening away the darkness that had taken hold of his heart.
    He smiles and brushes Tails’ head with his beak.
    #speaker:Nimbus #portrait:nimbus_default #layout:right:nimbus_default_m
    Thank you, Tails.
    You remind me of my brother.
    #speaker: 
    The mouse shows his teeth proudly.
    #speaker:Tails #portrait:tails_happy #layout:middle:tails_happy
    I will take it as the biggest compliment I could ever receive.
    #speaker:
    His chest puffs out in an exaggerated manner.
    #speaker:Nimbus #portrait:nimbus_default
    Although my brother Cloud was a tab bit taller.
    And better looking…
    #speaker:Tails #portrait:tails_default
    Oi, don’t push it!
    #speaker: #layout:middle:tails_happy #layout:right:nimbus_happy_m
    They crack up laughing.
    Joyous for the companionship they had created.
    #speaker:Nimbus #portrait:nimbus_default #layout:right:nimbus_default_m
    Okay, let's leave this place.
    I miss our old "half-shell"
    #speaker:
    The small rodent agrees.
    ~recruitNimbus(true)
    ->Nimbus_saved

== Nimbus_saved ==
#speaker: #background:city #layout:middle:default #layout:right:default
They climb the ledge back to the surface, helping each other as they go.

{
- hasOak():
    #layout:middle_right:oak_scared_m #layout:middle_left:tails_default #layout:left:nimbus_default 
    Oak pushes the helmet towards them.
    #speaker:Oak #layout:middle_right:oak_happy_m #portrait:oak_happy
    Nimbus, dear friend!
    It's a delight to see you well.
    #speaker: #layout:middle_left:tails_happy #layout:left:nimbus_happy
    Nimbus jumps to the dog's back as soons as he's within reach.
    And scratches his head vigorously.

    {hasCotton():
        #layout:right:bunny_default_m #layout:left:nimbus_default
        Soon he stops as he looks at the rabbit besides him.
        #speaker:Cotton #portrait:bunny_happy
        Hello little bird.
        I'm Cotton and I'm really happy Tails managed to find you.
        #speaker:Nimbus #portrait:nimbus_default
        The feeling is mutual...
        However you didn't need to run from us.
        #speaker:Cotton #portrait:bunny_sad #layout:right:bunny_sad_m #layout:middle_left:tails_sad
        Im sorry but...
        I had to save my children...
        #speaker: #layout:left:nimbus_sad #layout:middle_right:oak_sad_m
        Nimbus understands by her and Tails reactions, that she didn't managed to.
        He immediately jumps down and lowers his head.
        #speaker:Nimbus #portrait:nimbus_sad
        I'm so sorry...
        I didn't know.
        #speaker:Cotton #portrait:bunny_default #layout:right:bunny_default_m
        It's alright.
        Now my mission is to save you all.
        This little mouse made me see that.
        #speaker:Nimbus #portrait:nimbus_default #layout:left:nimbus_happy
        Yeah he does tends to have the bad habbit of saving others.
        #layout:right:bunny_happy_m #layout:middle_left:tails_happy #layout:middle_right:oak_happy_m
    }

    #speaker:
    They all laugh together.
    #speaker:Tails #portrait:tails_default #layout:middle_left:tails_default_m
    It's time to decide what to do next.
    -> conclusion

-else:
    {- hasCotton(): 
        They spot the helmet and move towards it, jumping between rocks.
        #layout:right:bunny_default_m #layout:left:nimbus_default
        Soon Nimbus stops as he looks at the rabbit inside.
        #speaker:Cotton #portrait:bunny_happy
        Hello little bird.
        I'm Cotton and I'm really happy Tails managed to find you.
        #speaker:Nimbus #portrait:nimbus_default
        The feeling is mutual...
        However you didn't need to run from us.
        #speaker:Cotton #portrait:bunny_sad #layout:right:bunny_sad_m #layout:middle_left:tails_sad
        Im sorry but...
        I had to save my children...
        #speaker: #layout:left:nimbus_sad
        Nimbus understands by her and Tails reactions, that she didn't managed to.
        He immediately enters the helmet and lowers his head.
        #speaker:Nimbus #portrait:nimbus_sad
        I'm so sorry...
        I didn't know.
        #speaker:Cotton #portrait:bunny_default #layout:right:bunny_default_m
        It's alright.
        Now my mission is to save you all.
        This little mouse made me see that.
        #speaker:Nimbus #portrait:nimbus_default
        Yeah he does tends to have the bad habbit of saving others.
        #layout:right:bunny_happy_m #layout:middle_left:tails_happy

    - else:
        #speaker: #layout:middle_left:tails_default #layout:right:nimbus_default_m
        Tails leads Nimbus into the helmet, that was waiting for them.
        #speaker:Nimbus #portrait:nimbus_happy #layout:right:nimbus_happy_m
        Glad to see it still in one piece.
        I was afraid you had lost it in the attack.
        #speaker:Tails #portrait:tails_default
        Yeah... it's tought and resilient.
        Just like us.
        #speaker:Nimbus #portrait:nimbus_happy
        Certainly as hard-headed as me.
    }

    #speaker:
    They all laugh together.
    #speaker:Tails #portrait:tails_default
    It's time to decide what to do next.
    -> conclusion
}

== Nimbus_lost ==
#speaker: #background:city #layout:middle_left:tails_sad #layout:right:default
After a bit of effort he finnally sees daylight again.
{
- hasCotton():
    #layout:right:bunny_scared_m
    {
        - hasOak():
            #layout:middle_right:oak_scared_m
    }
    #speaker:Cotton #portrait:bunny_scared
    Where is your friend?
    He wasn't down there?
    #speaker:
    Tails lowers his head.
    #speaker:Tails #portrait:tails_sad
    Yes...
    But he won't come with us...
    {
        - hasOak():
            #speaker:Oak #portrait:oak_scared
            What do you mean?
            Is he hurt?!
            Do you need me to carry him here?
    }
    #speaker:
    The mouse stays silent for a bit.
    He looks at the water, going by.
    #speaker:Tails #portrait:tails_sad
    Nimbus is gone...
    We have to keep going.
    It's time to decide what to do next.
    -> conclusion
-else:
    {
        - hasOak():
            #speaker:Oak #portrait:oak_scared #layout:middle_right:oak_scared_m
            Where is young Nimbus?
            Was it too dark down there?
            #speaker:
            Tails lowers his head.
            #speaker:Tails #portrait:tails_sad
            I found him...
            But he doesn't want to go on...
            #speaker:Oak #portrait:oak_scared
            It can't be.
            His spirit never faultered!
            You have to make him see reason, mister Tails!
            #speaker:
            The mouse stays silent for a bit.
            He looks at the water, going by.
            #speaker:Tails #portrait:tails_sad
            Nimbus is gone...
            We have to keep going.
            It's time to decide what to do next.
            -> conclusion

        - else:
            The mouse stays silent for a bit.
            He looks at the water, going by.
            #speaker:Tails #portrait:tails_sad
            Nimbus is gone...
            I have to keep going.
            It's time to decide what to do next.
            -> conclusion
    }
}

== conclusion ==
#speaker: #layout:left:default #layout:middle_left:default #layout:middle_right:default #layout:right:default
Tails looks at the skies.

{
    - getCityTime() < 2:
        It's about noon.
        He can still do one more voyage before dark.
        -> choices
    - else:
        The sun has disappeared between the buildings.
        Night is coming.
        It's time to go back to the shelter.
        {
            -not hasOak():
            He wasn't able to save his old friend, Oak.
        }
        {
            -not hasNimbus():
            And he had to leave the young bird behind.
        }
        ~changeScene("RiverScene")
        -> END
}

== choices ==
+{hasCotton() and savedOak() and not hasOak()}[Follow Oak's Trail]
    ->oak_trail
+[Look for food]
    ->food_trail
+[Go Back to the Shelter]
    ->back_trail
+{not hasCotton() and savedOak()}[Look for his remaining friends]
    ->random_trail


== oak_trail ==
~cityDecision(1)
#speaker:Tails #portrait:tails_default #layout:left:tails_default
We need to look for Oak.
Where did the North trail led?
#speaker: #layout:middle_right:bunny_default_m
{
    - hasNimbus():
        #layout:right:nimbus_default_m
}
The bunny looks down the river.
Which engulfs all bellow the big "stone trees".
#speaker:Cotton #portrait:bunny_default
That's were the humans are at.
And with them destruction and fire.
This can be our end...
#speaker:Tails #portrait:tails_default
I have no choice.
#speaker:Cotton #portrait:bunny_default
Then get ready.
It will be dangerous.
#speaker:
The mouse goes back to the helmet decided to save the old dog.
If he's still alive, he knows he will find him.
~changeScene("RiverScene")
-> END

== food_trail ==
~cityDecision(0)
#speaker:
He knew they needed food.
The city was big, so certainly there would be food for scavenge.
However he knew this meant Oak would have to be left behind.

{
    - hasNimbus():
        #speaker:Tails #portrait:tails_default #layout:left:tails_default
        We'll look for food.
        We'll need it for the rest of the journey.
        #layout:middle_right:nimbus_scared_m
        {
            - hasCotton():
            #speaker: #layout:right:bunny_scared_m
            They get a bit surprised with the mouse's decision.
        
            - else:
            #speaker:
            Nimbus gets a bit upset with the mouse's decision.
        }
        #speaker:Nimbus #portrait:nimbus_scared
        What are you saying, Tails?
        Why won't we look for Oak?
        #speaker:Tails #portrait:tails_sad #layout:left:tails_sad
        I want to...
        But food is our priority right now.
    
    - else:
        #speaker:Tails #portrait:tails_default #layout:left:tails_default
        Let's look for food.
        We'll need it for the rest of the journey.
        {
            - hasCotton():
            #speaker: #layout:right:bunny_scared_m
            She gets a bit surprised with the mouse's decision.
            #speaker:Oak #portrait:bunny_scared
            What about the dog you talked about?
            #speaker:
            The mouse lowers his voice.
            #speaker:Tails #portrait:tails_sad #layout:left:tails_sad #layout:right:oak_sad_m
            We need food...
        }
}
#speaker:
The mouse slowly pushes the helmet away from the shore.
Heartbroken, for giving up on his friends.
~changeScene("RiverScene")
-> END

== back_trail ==
~cityDecision(4)
#speaker:
He knew it was a risk to keep traversing the city.
Humans were all around and every moment could be their last.

{
    - hasCotton():
        #speaker:Tails #portrait:tails_default #layout:left:tails_default
        We'll go back.
        It's too risky to stay out here.
        #layout:middle_right:bunny_scared_m
        {
            - hasOak():
            #speaker: #layout:right:oak_scared_m
            They get a bit surprised with the mouse's decision.
            #speaker:Oak #portrait:oak_default
            {savedNimbus(): Are we leaving young Nimbus behind?}
            And what about Sparks?
            #speaker:Tails #portrait:tails_sad #layout:left:tails_sad
            I already managed to save you, Oak.
            And Cotton as well.
            We can't save everyone...
            #layout:left:tails_default
        
            - else:
            #speaker:
            Cotton gets a bit surprised with the mouse's decision.
            #speaker:Cotton #portrait:bunny_default
            Are you leaving your friends behind?
            #speaker:Tails #portrait:tails_sad #layout:left:tails_sad
            I tried already to save one...
            I don't want to be the death of you... or me...
            #layout:left:tails_default
        }
    
    - else:
        #speaker:Tails #portrait:tails_default #layout:left:tails_default
        Let's go back.
        It's too risky to stay out here.
        {
            - hasOak():
            #speaker: #layout:right:oak_scared_m
            He gets a bit surprised with the mouse's decision.
            #speaker:Oak #portrait:oak_default
            {savedNimbus(): Are we leaving young Nimbus behind?}
            And what about Sparks?
            #speaker:Tails #portrait:tails_sad #layout:left:tails_sad
            I already managed to save you, Oak.
            We can't save everyone...
            #layout:left:tails_default
        }
}
#speaker:
The mouse turns his back and goes to the helmet slowly.
Heartbroken.
~changeScene("RiverScene")
-> END

== random_trail ==
~cityDecision(3)
{
- savedOak():
    #speaker:
    Tails had no way of knowing where his friends were.
    It was a shot i the dark, but he had to try...
    For everything they meant to him.
- else:
    #speaker:
    Tails had no way of knowing where his friend was.
    It was a shot in the dark, but he had to try...
    For everything Sparks meant to him.
}
~changeScene("RiverScene")
-> END