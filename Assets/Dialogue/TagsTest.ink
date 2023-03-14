INCLUDE globals.ink

->main

=== main ===
It was a dark night #speaker:Narrator #portrait:narrator #layout:left:narrator
Tails was lonely and cold
He was hungry
Do you wanna feed the rat?

+[Feed]
    Rat was fed
    -> main2("fed")
+[Don't feed]
    Rat is still hungry
    -> main3("dont")
    
=== main2(argument) ===
~choice = argument
Hello, my name is tails #speaker:Tails #portrait:tails_happy #layout:middle:tails_happy
Thanks for feeding me

->DONE

=== main3(argument) ===
~choice = argument
Hello, my name is tails #speaker:Tails #portrait:tails_sad #layout:middle:tails_sad
I'm hungry

->END

