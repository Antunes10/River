INCLUDE globals.ink

->main

=== main ===
#speaker: #portrait:narrator #layout:left:default #background:metro
#portrait:tails_default #layout:middle:tails_default #music:prologue
~unlockImage(0)
Darkness engulfs the world.
The water sounds echoes inside the underground passage.
Tails feels claustrophobic.
His little heart starts racing, while his nose darts around sniffing a way out.

+[Keep following the water’s flow.]
    Decided, he keeps himself safe inside the helmet.
    The river keeps flowing slowly and takes the shell with it.

+[Stop and look for a way out.]
    Tails changes the shell’s course towards the shore made of debris, with the help of his little stick.
    The "shell" hits the dirt and he jumps down onto the ground.
    There is little to no light and he stumbles a bit.
    He tries to use his nose to help him find the surface but to no avail.
    Time passes and he understands it was a bad decision to stop following the river.
    He goes back defeated and pushes the shell back into the waters.

- After a couple of minutes darkness starts to get slightly pushed back.
A small ray of light creates a beacon. A cloud of blueish colour that tries to survive where it should not.
Tails gets on the edge of the "boat" and tries to get a better look with his unused eyes.
The light is weak and cold.
Clearly not sunlight.
And suddenly it moves!
Its origin unknown to the little mouse, moves closer to the ground.

+[Follow the light.]
    #background:tunnel #music:tunnel
    Against his most primal instincts, Tails puts the little stick in the waters and changes the boat's direction, approaching the light.
    Once the boat hits the dirt, he jumps onto the ground.
    He walks slowly, one part curious another part scared.
    He is a mouse after all, there's no way he could defend himself against the dangers of this world.
    The light was now on the ground, behind a fallen garbage can.
    The light is now more intense and warmer.
    He peeks over the blockage…
    And surprise takes his face.
    A young firefly is eating some crumbs, siting over a small pebble.
    He's carefree, swinging his little legs and occasionally shaking his bright behind.
    It is contradictory. The dark and scary surroundings are disarmed by the smile of a clearly innocent bug.
    Tails loses his fear and stands over the trash can so he can see the firefly better.
    On that moment the bug takes notice.
    #speaker:Sparks #portrait:sparks_happy #layout:right:sparks_happy_m #layout:left:tails_default #layout:middle:default #music:sparks
    Oh, hi there friend! 
    My name is Sparks and I’m a firefly has you can see. What is your name?
    #speaker:
    The mouse is unsure how to answer. 
    
    ++[Greet her.]
        #speaker:Tails #portrait:tails_happy #layout:left:tails_happy
        Hi… my name is Tails… I am a mouse. 
        #speaker:
        The bug waves satisfied with the response.
        #speaker:Sparks #portrait:sparks_default #layout:right:sparks_default_m
        I’m just finishing, are you hungry? I believe there are some crumbs left where I found this one. 
        #speaker:Tails #portrait:tails_default #layout:left:tails_default
        No thanks… I’m not hungry. 
        Why are you here? 
        #speaker:Sparks #portrait:sparks_default #layout:right:sparks_default_m
        Oh well, it's a very long story. 
        I was flying with my mother when the “Big Booms” happened.
        #speaker:Sparks #portrait:sparks_sad #layout:right:sparks_sad_m
        We got separated and after that I went looking for her. 
        Didn’t find her though.
        #speaker: Sparks #portrait:sparks_happy #layout:right:sparks_happy_m
        But I found food. 
        #speaker:
        Her face lightens up as he shakes the small piece of bread. 

    ++[Ask why she’s here, alone.]
        #speaker:Tails #portrait:tails_default #layout:left:tails_default
        What are you doing here all by yourself? Don’t you have family or friends? 
        #speaker: Sparks #portrait:sparks_default #layout:right:sparks_default_m
        Oh, we got separated during the “Big Booms”. It was very chaotic, even the "two-legged giants" were running everywhere.
        #speaker:
        The mouse understands he shouldn’t have started with that question. 
        #speaker:Tails #portrait:tails_sad #layout:left:tails_sad
        I am sorry. I hope you can find them again. 
        #speaker:Sparks #portrait:sparks_happy #layout:right:sparks_happy_m
        Oh, don’t worry, I know I will. We fireflies are easy to find… at least during the night, eh eh...
        #speaker:
        The young bug’s levity catches Tails off-guard. 
        He was expecting a totally different reaction, but there is no hint of sadness on her face.
        It looks like she totally believes what she's saying.
    
    --#speaker:Tails #portrait:tails_default #layout:left:tails_default 
    Have you thought about what you are going to do? 
    #speaker:Sparks #portrait:sparks_happy #layout:right:sparks_happy_m
    I’m going to help you get out of here, of course. You don’t have a "light booty" like me. 
    #speaker:
    The mouse isn't able to hold his smile at the comical remark.
    #speaker:Tails #portrait:tails_default #layout:left:tails_default
    That would really help me, but shouldn’t you look for your mother?
    #speaker:Sparks #portrait:sparks_default #layout:right:sparks_default_m
    Don't worry. I'll find her eventually. Right now, it’s you the one that’s lost.
    #speaker:
    She finishes the crumb with one last bite and flies towards Tails still munching.
    #speaker:Sparks #portrait:sparks_default
    Where are we going? 
    #speaker:Tails #portrait:tails_default
    I have a big ""shell" that I’m using to follow the river. I think it might lead us to the surface.
    #speaker:Sparks #portrait:sparks_happy #layout:right:sparks_happy_m
    Funtastic! I’ve always wanted to swim in the river.
    #speaker:Sparks #portrait:sparks_sad #layout:right:sparks_sad_m
    Although my mother told me it was very dangerous for my wings.
    #portrait:sparks_happy #layout:right:sparks_happy_m
    But if I go inside the "shell", I’ll be dry! 
    You are very smart, Mr.Tails.
    #speaker:
    The mouse feels a bit flattered by the compliment and takes the bug with him to the "half shell".
    The firefly sits on its border and the mouse pushes it back into the river.
    Now with Sparks’ light it was easier to navigate through the rubble and soon they will find the exit.



+[Avoid the light.]
    #speaker: #layout:middle:tails_default
    ~decreaseHope(1)
    ~ currentHope = currentHope - 1
    There's a hint of curiosity in his eyes, but his instincts reign his body.
    He's a mouse after all, any danger is possibly a deadly one.
    He just saw an entire "stone forest" razed by fire and explosions; he isn't going to take any risks now.
    So, he lets the "shell" keep its path down the river, into the darkness.
    Soon the light fades behind him and darkness engulfs everything.
    He hears the water, but he can’t see a thing.
    Suddenly the shell hits a rock making a dry sound.
    Tails tumbles inside it, totally disorientated.
    Then hits another…
    And another…
    Until it hits with enough strength to turn it around and send Tails into the cold water.
    He submerges and in desperation tries to surface in search of air.
    He swims rapidly and when he reaches the surface he hits a rock.
    #background:black #layout:middle:default
    He succumbs to the pain and falls unconscious.
    
    Time passes.
    #background:blackLight
    A small light appears far away amidts the black.
    It becomes stronger and stronger, shinning away the fear and uncertainty.
    #speaker:??? #portrait:blank 
    Hello? 
    Are you hurt Mr.Mouse? 
    ~playSparksAnim()
    #speaker: #music:sparks
    Tails opens his eyes and sees a young firefly over him, shinning her light.
    #speaker:??? #portrait:sparks_default 
    You’re all wet. Did you go for a swim and got tired? 
    #speaker:
    The mouse regains his strength and rises to his feet.
    #speaker:Tails #portrait:tails_sad #layout:left:tails_sad 
    I think I drowned… 
    #speaker:??? #portrait:sparks_sad #layout:right:sparks_sad_m
    Oh, that's a bummer. My mommy says the water is bad for the wings so that’s why I never go near it. 
    #speaker: #layout:right:sparks_happy_m
    The firefly seems joyous even though destruction surrounds her. 
    She's' the only light that shines in that place.
    #speaker:Tails #portrait:tails_default #layout:left:tails_default
    My name is Tails, what is yours? 
    #speaker:Sparks #portrait:sparks_happy #layout:right:sparks_happy_m
    I’m Sparks. I’m a firefly as you can see! 
    #speaker:
    She shakes her behind signalling her identity. Just like a happy puppy.
    #speaker:Tails #portrait:tails_default #layout:left:tails_default
    Where is your mother? Are you alone? 
    #speaker:Sparks #portrait:sparks_sad #layout:right:sparks_sad_m
    Oh, we got separated during the “Big Booms”. It was very chaotic, even the "two-legged giants" were running everywhere. 
    #speaker:
    The mouse understood he shouldn’t have started with that question. 
    #speaker:Tails #portrait:tails_sad #layout:left:tails_sad
    I am sorry. I hope you can find her again. 
    #speaker:Sparks #portrait:sparks_happy #layout:right:sparks_happy_m
    Oh, don’t worry, I know I will. We fireflies are easy to find… at least during the night, eh eh...
    #speaker: #layout:left:tails_happy
    The young bug’s levity catches Tails off-guard. 
    He was expecting a totally different reaction, but there is no hint of sadness on her face.
    It looks like she totally believes what she's saying.
    #speaker:Sparks #portrait:sparks_happy
    So, where are we going? 
    #speaker:Tails  #portrait:tails_happy
    We? You want to come with me? 
    #speaker:Sparks #portrait:sparks_happy
    Of course! 
    It's much more fun when you fly with friends.
    #speaker:
    The mouse laughs at the idea. 
    #speaker:Tails #portrait:tails_happy
    Well, unfortunately I cannot fly. 
    #speaker:Sparks #portrait:sparks_happy
    Oh, bummer. 
    Then how did you get here? Did you swim?
    #speaker:Tails #portrait:tails_happy
    No, I had a "shell" that helped me float. 
    #speaker:Sparks #portrait:sparks_happy
    Funtastic! I’ve always wanted to swim in the river. 
    If I go inside the shell, I’ll be dry!
    You are very smart, Mr.Tails.
    #speaker:
    The mouse feels a bit flattered, but his mood changes fast. 
    #speaker:Tails #portrait:tails_sad #layout:left:tails_sad
    Unfortunately, I lost it when I almost drowned. 
    #speaker:Sparks #portrait:sparks_happy 
    Not to worry! With my booty we shall find it in no time. 
    #speaker:Tails #portrait:tails_happy #layout:left:tails_happy
    Are you always this optimistic? 
    #speaker:Sparks #portrait:sparks_happy
    No Mr.Tails, I’m a firefly. 
    #speaker:
    The mouse laughs at those innocent words and in turn makes the young bug laugh.
    Now, light was not only shinning in the tunnel but also in Tails' heart.
    He forgot the sadness he felt before, and a few moments later they find the helmet and continue following the river to reach the surface.  
    
- 

~recruitSparks()
~sparksRecruited = 1
~changeScene("RiverScene")

->END
