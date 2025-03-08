INCLUDE globals.ink

~recruitSparks(false)
~recruitNimbus(false)
~recruitOak(false)
->main

=== main ===
#background:hallway
#layout:middle:tails_default #speaker:
Tails wakes up in the hallway.
The sun rays are already faint and orange.
He sees none of his friends around him.
Behind him the entrance to the building has collapsed.
And he hears humans on the otherside.
#speaker:Tails #portrait:tails_default
I can't get out now...
I hope they're all okay...

{not savedCotton():
    #speaker:
    His back is hurting.
    And he is worried about his friends.
    #speaker:Tails #portrait:tails_default #layout:middle:tails_default_m
    I should probably find a place to rest.
    If I go to the higher levels I might find a vantage point to see if I can find them.
    #speaker:
    Decided the mouse ignores the sounds coming from bellow and climbs up the stairs.
    #background:roomNight
    After some time he manages to find a empty room, with sturfy walls...
    And a intact roof to protect him from the rain.

    ~changeScene("DialogueScene")
    ->END
}


#speaker:
Suddently a noise comming from the lower levels interrupts his thoughts.
Some rumagging.
He remembers the rabbit went that way.
She took no time choosing her path even when there were several possibilities.

+[Forget the rabbit and go find a place to rest]
    His back is hurting.
    The rabbit didn't even look back after being saved.
    Tails sees to reason to keep chasing her.
    He was more worried about his friends.
    #speaker:Tails #portrait:tails_default #layout:middle:tails_default_m
    I should probably find a place to rest.
    If I go to the higher levels I might find a vantage point to see if I can find them.
    #speaker:
    Decided the mouse ignores the sounds coming from bellow and climbs up the stairs.
    #background:roomNight
    After some time he manages to find a empty room, with sturfy walls...
    And a intact roof to protect him from the rain.

    ~changeScene("DialogueScene")
    ->END


+[Try and find the rabbit]
    ~recruitCotton(true)
    #speaker:
    The rabbit clearly was in a rush. Perhaps she needed help.
    Tails turns to the stairs and starts descending, following the faint noises.
    #layout:sparks:default #layout:left:default
    The light becomes weak as he arrives to the lower levels.
    #background:hallway
    #layout:middle:default #layout:left:tails_default #layout:right:bunny_sad
    Entering a corridor, he sees the rabbit trying to move a piece of wood that fell from the ceiling.
    She’s doing it like her life depends on it.
    There is rubble all around, revealing a recent crumbling.
    #speaker:Tails #portrait:tails_sad #layout:left:tails_sad
    Do you need help with that?
    #speaker:
    The rabbit doesn’t stop her efforts.
    #speaker:??? #portrait:bunny_sad #layout:right:bunny_sad_m
    Yes… yes!
    Please help me!
    #speaker: #layout:left:default #layout:middle:tails_sad
    The mouse approaches the wooden board and puts his hands on it.
    They both push and the wooden board moves slightly, allowing Tails to see a hole behind it. Large enough for a rabbit to enter.
    #speaker:Tails #portrait:tails_sad
    Why are you in this kind of hurry?
    #speaker:
    She doesn’t answer immediately.
    #speaker:??? #portrait:bunny_sad
    My…
    My cubs are in the hole behind this wood…
    I went outside to get some food when an explosion rocked the building.
    I must make sure they are alright.
    #speaker:
    She was clearly stressed.
    Now Tails totally understood her lack of social interaction with them.
    With renewed strength he pushed with all he had.
    The wooden board moved further, and they managed to displace it enough to uncover the hole.
    #layout:right:default
    The rabbit took no time to enter it and Tails followed.
    #layout:middle:default  #layout:middle_left:tails_sad #layout:middle_right:bunny_sad_m
    The tunnel was covered in metal, perfectly smoothed.
    It was clearly human made and the rabbit must have taken advantage of it.
    The mouse starts to feel a bit nervous.
    Afraid that this story wouldn’t have a happy ending.
    #background:room #music:tunnel
    The tunnel ends inside a small room, with just a tiny window close to the ceiling, on the opposite wall.
    There is a lot of dust around.
    Silence is heard.
    Then…
    Tails sees an enormous mountain of rubble.
    The ceiling had collapsed.
    Half of the room was covered in rocks, metals and wooden planks.
    The rabbit stops.
    She sniffs the air with her ears wide open.
    #layout:middle_right:bunny_scared_m #speaker:??? #portrait:bunny_scared
    No… no… no…
    #speaker:
    The world darkens.
    #speaker:??? #portrait:bunny_scared
    Please no… Oh please…
    #speaker:
    She moves slowly towards the rubble.
    #speaker:??? #portrait:bunny_scared
    Darlings?
    Cherry?
    Blue?
    Silk? Autumn?
    #speaker:
    Tails heart sinks.
    His lungs lacking enough air to breath.
    There is no other voice, than the rabbit mother’s.
    #speaker:??? #layout:middle_right:bunny_sad_m
    Where are you!?
    Please answer me!
    Please…
    #speaker:
    She starts to dig the rubble.
    First slowly then erratically.
    A pain so strong no one could bare.
    The ones born out of her womb.
    The ones she nurtured with all the love she had to give.
    Now…
    Gone…
    She starts to cry, unable to stop digging.
    Unable to believe the nightmare she is living.
    ~changeHope(-1)
    
    ++[Place a paw on her shoulder]
        The mouse cleans his tears and moves slowly towards the rabbit.
        He would take half the pain she was going through if life allowed it.
        But she couldn’t share it.
        So, he places his paw on her shoulder.
        Ever so gently.
        She doesn’t even feel it.
        She keeps on digging as her paws start to bleed.
        #speaker:Tails #portrait:tails_sad 
        I am so sorry…
        #speaker:
        The digging slows down.
        The crying gets stronger.
        The rabbit falls on her fours and places her head against the rocks.
        She holds her belly.
        Tails embraces her the best he can, sharing his warmth with her.
        While she cries over the rocks that crushed her cubs.
        Just one more childless mother.

    ++[Stay quiet]
        The mouse cleans his tears.
        He doesn’t feel intitled to them.
        He is suffering, but next to her?
        What pain is worthy to stand against the one of a mother losing her children?
        What emotion has a voice against such a tragedy.
        Tails keeps quiet.
        As the rabbit starts to bleed from her paws, until she understands the inevitable truth.
        She curses life.
        She curses all that still live.
        She curses herself.
        No mother should outlive her cubs.
        No mother should try to dig them out of the ground.
        No living being deserved this fate.


-
~changeScene("DialogueScene")
->END