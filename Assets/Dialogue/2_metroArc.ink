INCLUDE globals.ink

->main

=== main ===
#speaker: #portrait:narrator #layout:left:default #background:metro
#portrait:tails_default #layout:middle:tails_default #music:prologue
The darkness engulfs the world.
The water sounds echo inside the underground passage.
Tails feels claustrophobic.
His little heart starts to race, while his nose darts around sniffing a way out.

+[Keep following the water’s flow.]
    Decided he keeps himself safe inside the helmet.
    The river keeps flowing slowly and takes the “boat” with it.

+[Stop and look for a way out.]
    Tails changes the helmet’s course towards the shore made of debris, with the help of his little stick.
    The “boat” hits the dirt and he jumps down onto the ground.
    There is little to no light and he stumbles a bit.
    He tries to use his nose to help him find the surface but to no avail.
    Time passes and he understands it was a bad decision to stop following the river.
    He goes back defeated and pushes the helmet back to the waters.

- After a couple of minutes the darkness starts to get slightly pushed back.
A small ray of light creates a beacon. A cloud of blueish colour that tries to survive where it should not.
Tails gets on the edge of the helmet and tries to get a better look with his unused eyes.
The light is weak and cold.
Clearly not sunlight.
And suddenly it moves!
Its origin unknown to the little mouse, moves closer to the ground.

+[Follow the light.]
    #background:tunnel #music:tunnel
    Against his most primal instincts, Tails puts the little stick in the waters and changes the direction of the shell, approaching the light.
    Once the “boat” hit the dirt, he jumped onto the ground.
    He walks slowly, one part curious another part scared.
    He was a mouse after all, there was no way he could defend himself against the dangers of this world.
    The light was now on the ground, behind a fallen garbage can.
    The light was now more intense and warmer.
    He peeked over the blockage…
    And surprise took his face.
    A young firefly was eating some crumbs, siting over a small pebble.
    He was carefree, swinging his little legs and occasionally shaking his bright behind.
    It was contradictory. The dark and scary surroundings were disarmed by the smile of the clearly innocent bug.
    Tails lost his fear and stood over the trash can so he could see the firefly better.
    On that moment the bug took notice.
    #speaker:Sparks #portrait:sparks_happy #layout:right:sparks_happy_m #layout:left:tails_default #layout:middle:default #music:sparks
    Oh, hi there friend! 
    My name is Sparks and I’m a firefly has you can see. What is your name?
    #speaker:
    The mouse was unsure how to answer. 
    
    ++[Greet him.]
        #speaker:Tails #portrait:tails_happy #layout:left:tails_happy
        Hi… my name is Tails… I am a mouse. 
        #speaker:
        The bug waved satisfied with the response.
        #speaker:Sparks #portrait:sparks_default #layout:right:sparks_default_m
        I’m just finishing, are you hungry? I believe there are some crumbs left where I found this one. 
        #speaker:Tails #portrait:tails_default #layout:left:tails_default
        No thanks… I’m not hungry. 
        Why are you here? 
        #speaker:Sparks #portrait:sparks_default #layout:right:sparks_default_m
        Oh well, that is a very long story. 
        I was flying with my mother when the “Big Booms” happened.
        #speaker:Sparks #portrait:sparks_sad #layout:right:sparks_sad_m
        We got separated and after that I went looking for her. 
        Didn’t find her though.
        #speaker: Sparks #portrait:sparks_happy #layout:right:sparks_happy_m
        But I found food. 
        #speaker:
        Her face lightens up as he shakes the small piece of bread. 

    ++[Ask why he’s here, alone.]
        #speaker:Tails #portrait:tails_default #layout:left:tails_default
        What are you doing here all by yourself? Don’t you have family or friends? 
        #speaker: Sparks #portrait:sparks_default #layout:right:sparks_default_m
        Oh, we got separated during the “Big Booms”. It was very chaotic, even the two-legged giants were running everywhere.
        #speaker:
        The mouse understood he shouldn’t have started with that question. 
        #speaker:Tails #portrait:tails_sad #layout:left:tails_sad
        I am sorry. I hope you can find them again. 
        #speaker:Sparks #portrait:sparks_happy #layout:right:sparks_happy_m
        Oh, don’t worry, I know I will. We fireflies are easy to find… at least during the night, eh eh. 
        #speaker:
        The young bug’s levity caught Tails off-guard. 
        He was expecting a totally different reaction, but there is not a hint of sadness in her face.
        It looks like she totally believed what he was saying.
    
    --#speaker:Tails #portrait:tails_default #layout:left:tails_default 
    Have you thought about what you are going to do? 
    #speaker:Sparks #portrait:sparks_happy #layout:right:sparks_happy_m
    I’m going to help you get out of here, of course. You don’t have a light booty like me. 
    #speaker:
    The mouse is not able to hold his smile at the comical remark.
    #speaker:Tails #portrait:tails_default #layout:left:tails_default
    That would really help me, but shouldn’t you look for your mother?
    #speaker:Sparks #portrait:sparks_default #layout:right:sparks_default_m
    Not to worry. I will find her eventually. Right now, it’s you the one that’s lost.
    #speaker:
    She finishes the crumb with one last bite and flies towards Tails still munching.
    #speaker:Sparks #portrait:sparks_default
    Where are we going? 
    #speaker:Tails #portrait:tails_default
    I have a big shell that I’m using to follow the river. I think it might lead us to the surface.
    #speaker:Sparks #portrait:sparks_happy #layout:right:sparks_happy_m
    Funtastic! I’ve always wanted to swim in the river.
    #speaker:Sparks #portrait:sparks_sad #layout:right:sparks_sad_m
    Although my mother told me it was very dangerous for my wings.
    #portrait:sparks_happy #layout:right:sparks_happy_m
    But if I go inside the shell, I’ll be dry! 
    You are very smart, Mr.Tails.
    #speaker:
    The mouse felt a bit flattered by the compliment and took the bug with him to the half shell.
    The firefly sat on its border and the mouse pushed it back to the river.
    Now with Sparks’ light it was easy to navigate through the rubble and soon they would find the exit.



+[Avoid the light.]
    #speaker: #layout:middle:tails_default
    ~decreaseHope(1)
    ~ currentHope = currentHope - 1
    There was a hint of curiosity in his eyes, but his instincts reigned his body.
    He was a mouse after all, any danger was a possible deadly one.
    He just saw an entire stone forest razed by fire and explosions; he wasn’t going to take any risks now.
    So, he lets the shell keep its path down the river, into the darkness.
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
    A small light appears far away amidts the black.
    It becomes stronger and stronger, shinning away the fear and uncertainty.
    #speaker:??? #portrait:blank 
    Hello? 
    Are you hurt Mr.Mouse? 
    #speaker: #layout:left:tails_default #layout:right:sparks_default_m #layout:middle:default #background:tunnel #music:sparks
    Tails opens his eyes and sees a young firefly over him, shinning his light.
    #speaker:??? #portrait:sparks_default
    You’re all wet. Did you go for a swim and got tired? 
    #speaker:
    The mouse regains his strength and rises to his feet.
    #speaker:Tails #portrait:tails_sad #layout:left:tails_sad 
    I think I drowned… 
    #speaker:??? #portrait:sparks_sad #layout:right:sparks_sad_m
    Oh, that is a bummer. My mommy says the water is bad for the wings so that’s why I never go near it. 
    #speaker: #layout:right:sparks_happy_m
    The firefly seems joyous even though destruction surrounds them. 
    She is the only light that shines in that place.
    #speaker:Tails #portrait:tails_default #layout:left:tails_default
    My name is Tails, what is yours? 
    #speaker:Sparks #portrait:sparks_happy #layout:right:sparks_happy_m
    I’m Sparks. I’m a firefly as you can see! 
    #speaker:
    She shakes his behind signalling his identity. Just like a happy puppy.
    #speaker:Tails #portrait:tails_default #layout:left:tails_default
    Where is your mother? Are you alone? 
    #speaker:Sparks #portrait:sparks_sad #layout:right:sparks_sad_m
    Oh, we got separated during the “Big Booms”. It was very chaotic, even the two-legged giants were running everywhere. 
    #speaker:
    The mouse understood he shouldn’t have started with that question. 
    #speaker:Tails #portrait:tails_sad #layout:left:tails_sad
    I am sorry. I hope you can find her again. 
    #speaker:Sparks #portrait:sparks_happy #layout:right:sparks_happy_m
    Oh, don’t worry, I know I will. We fireflies are easy to find… at least during the night, eh eh.
    #speaker: #layout:left:tails_happy
    The young bug’s levity caught Tails off-guard. 
    He was expecting a totally different reaction, but there was not a hint of sadness in her face.
    It looked like she totally believed what she was saying.
    #speaker:Sparks #portrait:sparks_happy
    So, were are we going? 
    #speaker:Tails  #portrait:tails_happy
    We? You want to come with me? 
    #speaker:Sparks #portrait:sparks_happy
    Of course! 
    Its much more fun when you fly with friends.
    #speaker:
    The mouse laughted at the idea. 
    #speaker:Tails #portrait:tails_happy
    Well, unfortunately I cannot fly. 
    #speaker:Sparks #portrait:sparks_happy
    Oh, bummer. 
    Then how do you got here? Did you swim?
    #speaker:Tails #portrait:tails_happy
    No, I had a shell that helped me float. 
    #speaker:Sparks #portrait:sparks_happy
    Funtastic! I’ve always wanted to swim in the river. 
    If I go inside the shell, I’ll be dry!
    You are very smart, Mr.Tails.
    #speaker:
    The mouse felt a bit flattered, but his mood changed fast. 
    #speaker:Tails #portrait:tails_sad #layout:left:tails_sad
    Unfortunately, I lost it when I almost drowned. 
    #speaker:Sparks #portrait:sparks_happy 
    Not to worry! With my booty we shall find it in no time. 
    #speaker:Tails #portrait:tails_happy #layout:left:tails_happy
    Are you always this optimistic? 
    #speaker:Sparks #portrait:sparks_happy
    No Mr.Tails, I’m a firefly. 
    #speaker:
    The mouse laughed with those innocent words and in turn made the young bug laugh.
    Now, light was not only shinning in the tunnel but also in Tails hearts.
    He forgot the sadness he felt before, and a few moments later they found the helmet and continued following the river to reach the surface.  
    
- 

~recruitSparks()
~changeScene("RiverScene")

->END
