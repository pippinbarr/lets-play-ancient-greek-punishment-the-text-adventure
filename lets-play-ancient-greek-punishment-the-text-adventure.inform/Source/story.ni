"Let's Play: Ancient Greek Punishment: The Text Adventure" by Pippin Barr

Include Room Description Headings by Erwin Genstein.
Include Simple Chat by Mark Tilford.
[Include Mentioned In Room Description by Ron Newcomb.]
[Include Supplemental Actions by Al Golden.]
[Include Liquid Handling by Al Golden.]
[Include Basic Help Menu by Emily Short.]

Part 1 - Setup

Section 1 - Basic setup

Release along with an interpreter.
Use the serial comma.
Use scoring.
Use undo prevention.
Rule for printing room description details: stop.
The can't push vertically rule is not listed in any rulebook.

The description of the player is "You look deader than you remember looking.".
Your hand is part of the player. The description is "Cold. Dead.". Understand "hands" as your hand.
The fog is a backdrop. It is everywhere. The description is "It makes you feel distinctly less happy.".
Instead of taking the fog, say "You try to take some and it goes about as well as expected.".

Section 2 - Simple Chat

Talking to is an action applying to one visible thing.
Understand "talk to [someone]" as talking to.
Report talking to: say "You have nothing to say.".

When play begins: forbid exiting on zero.
Use scoring.

A name is a kind of value. The names are Nobody, Sisyphus, Prometheus, Tantalus, Danaid, and Zeno.
The player's name is a name that varies. The player's name is Nobody.

When play begins: 
	now the left hand status line is "[the player's surroundings]"; 
	now the right hand status line is "[score] points";

Section 3 - Some basic verb overrides

Instead of tasting something, say "Nothing tastes of anything in Hades.".
Instead of smelling something, say "A faint aroma of crushed bones.".
Instead of kissing something, say "Hades has a strict no-kissing policy.".
Instead of touching something, say "No touching!".
Instead of attacking something, say "Wrong game.".
Instead of burning something, say "You left your lighter in your other pants.".
Instead of waking up, say "Unfortunately you really are in Hades. Tough break.".
Instead of thinking, say "How'd that work out for you?".
Instead of listening to something, say "Nothing is forthcoming.".
Instead of cutting something, say "With what?".
Instead of jumping, say "Boing...".
Instead of tying something to something, say "With what?".
Instead of drinking something, say "Your drinking days are over.".
Instead of eating something, say "Your eating days are over.".
Instead of saying sorry, say "It's a bit late for that.".
Instead of climbing something, say "Nah.".
Instead of sleeping, say "But there's so much to do!".
Instead of pushing something, say "Stop being so pushy!".
Instead of pulling something, say "Stop beign so pully!".


[----------------------------------------------------]



Part 2 - Charon and the Ferry

Section 1 - The place

The Starting Place is a room. The description is "Here you are at the famous River Styx. The water flows sluggishly by.". The printed name is "The Bank of the River Styx".
The River Styx is a backdrop. The description is "The river seems to sneer at you.". Understand "water" as the River Styx when the player is in The Starting Place.
The River Styx is everywhere.

Charon's ferry is here. The description is "It's Charon's ferry, not totally unlike a small dinghy. [if the ferry is in The Starting Place]Right now it is moored at the bank of the river, ready to shove off.[otherwise]Right now it is grounded on a gritty beach.[end if]".
Charon's ferry is a vehicle.
Understand "boat" or "dinghy" as the ferry.
The oars are part of the ferry. The description is "Good, solid oars.".

The clipboard is an object. The description is "Charon irritably angles the clipboard away from you, but not before you've seen the list of names he's expecting for the trip across the river:[line break][line break]Sisyphus[line break]Tantalus[line break]Prometheus[line break]Danaids[line break]Zeno";

The clipboard can be secret. The clipboard is secret.
After examining the clipboard, now the clipboard is not secret.
Understand "board" as the clipboard.

Charon is here. The description is "Charon is one tall drink of stagnant water. His eyes look sourly out from beneath a cowl. [if Charon is in the ferry]He is sitting at the oars.[otherwise]He is holding a clipboard.[end if]".
Charon is a man.
Charon is carrying the clipboard.
Understand "man" as Charon.

Charon's eyes are part of Charon. The description is "Unhappy."
Charon's hand is part of Charon. The description is "Bony.".
Charon's arm is part of Charon. The description is "It makes thin arms look fat.".
Charon's pocket is part of Charon. It is a container. The description is "Looks roomy.".
Instead of searching Charon's pocket, say "Charon's frown is enough to prevent you.".
Instead of examining Charon's pocket: 
    say "[description of Charon's pocket][line break]";
    omit contents in listing.
The cowl is wearable. The description is "It's a standard-issue cowl."
Charon is wearing the cowl.
Understand "Charon's cowl" as the cowl.


Section 2 - The obol

The obol is an object. The description is "A small silver coin imprinted with the blurry image of a sleepy man's face."
The coin face is part of the obol. The description is "He looks like he's been through a lot.". Understand "coin face" and "face" and "sleepy man" and "sleepy man's face" as the coin face.
Instead of tasting the obol, say "The obol has spent plenty of time in your mouth already.".
Instead of eating the obol, say "The obol has spent plenty of time in your mouth already.".

Your mouth is part of the player. The description is "You purse your lips and can just make them out while staring strenuously downward. As you do, you feel something in your mouth." Your mouth is a container. Your mouth can be open or closed. Your mouth is closed.
The obol is in your mouth.
Understand "coin" or "money" as the obol.

Instead of opening your mouth:
	if your mouth is open:
		say "It's open already, and you've never looked better.";
	otherwise if the obol is in your mouth:
		say "You open your mouth and neatly catch the small coin that drops out.";
		now the player has the obol;
		now the your mouth is open;
	otherwise:
		say "Let's not. You shouldn't just stand around with your mouth open, you know.";

Instead of closing your mouth:
	if your mouth is open:
		say "Good idea.";
		now your mouth is closed;
	otherwise:
		say "It's closed already.";

Instead of showing the obol to Charon:
	say "Charon deadpans, 'Good for you.'";


Section 3 - Talking to Charon

Instead of telling Charon about something:
	if the obol is in your mouth: 
		say "You start trying to speak, but there's something in your mouth.";		
	otherwise if the player's name is Nobody:
		say "Charon rolls his eyes. 'Who are you, exactly?'";
	otherwise:
		say "Charon holds up a palm. 'Save it.'";
	
Instead of asking Charon about something:
	if the obol is in your mouth:
		say "You start trying to speak, but there's something in your mouth.";		
	otherwise:
		say "Charon looks at you with disinterest, then stops looking at you with equal disinterest";
		
Charon Conversation, My Name Is Sisyphus, My Name Is Tantalus, My Name Is Danaid, My Name Is Prometheus, My Name Is Zeno, Nevermind are chat nodes.

Instead of talking to Charon when the obol is in your mouth:
	say "You start trying to speak, but there's something in your mouth.";		

Instead of talking to Charon when the clipboard is secret:
	say "Before you can get a word in, Charon monotones, 'And you are?'[paragraph break]You realise you don't know and fall silent.";

Instead of talking to Charon when the player's name is not Nobody:
	say "Charon isn't interested in talking to you about anything else.";

Report giving text for Charon Conversation: 
	Instead say "Before you can get a word in, Charon monotones, 'And you are?'[paragraph break]Recalling the list of names on the clipboard, you say:[paragraph break]";
    
Carry out finding responses to Charon Conversation: 
	link to My Name Is Sisyphus; 
	link to My Name Is Tantalus; 
	link to My Name Is Prometheus;
	link to My Name Is Danaid;
	link to My Name Is Zeno;
	link to Nevermind.
    
Report giving link to My Name Is Sisyphus: 
	Instead say "'I'm Sisyphus!'";
Report giving text for My Name Is Sisyphus: 
	Now the player's name is Sisyphus;
	Instead say "Charon looks at you blankly, 'Sure. Pay me.'. [paragraph break]He holds out a bony hand.";
	
Report giving link to My Name Is Zeno: 
	Instead say "'I'm Zeno!'";
Report giving text for My Name Is Zeno: 
	Now the player's name is Zeno;
	Instead say "Charon looks at you blankly, 'Sure. Pay me.'. [paragraph break]He holds out a bony hand.";

Report giving link to My Name Is Tantalus: 
	Instead say "'I'm Tantalus!'";
Report giving text for My Name Is Tantalus: 
	Now the player's name is Tantalus;
	Instead say "Charon looks at you blankly, 'Sure. Pay me.'. [paragraph break]He holds out a bony hand.";
	
Report giving link to My Name Is Prometheus: 
	Instead say "'I'm Prometheus!'";
Report giving text for My Name Is Prometheus: 
	Now the player's name is Prometheus;
	Instead say "Charon looks at you blankly, 'Sure. Pay me.'. [paragraph break]He holds out a bony hand.";

Report giving link to My Name Is Danaid: 
	Instead say "'I'm a Danaid!'";
Report giving text for My Name Is Danaid: 
	Now the player's name is Danaid;
	Instead say "Charon looks at you blankly, 'Sure. Pay me.'. [paragraph break]He holds out a bony hand.";

Report giving link to Nevermind: 
	instead say "'Never mind...' ";
Report giving text for Nevermind: 
	instead say "You shrug, 'Never mind...'[paragraph break]Charon smirks.";

Instead of talking to Charon: run a conversation from Charon Conversation.


Section 4 - Paying Charon

Instead of giving the obol to Charon, try paying Charon.

Paying is an action applying to one visible thing.
Understand "pay [someone]" as paying.
Instead of paying Charon:
	If the player's name is Nobody:
		say "Charon looks at you wearily, 'No paying until you tell me who you are.' (Maybe you should talk to him first.)";
	otherwise If the player has the obol:
		say "You hand over the small coin. Charon drops it into a pocket and gestures at the ferry.";
		now the obol is in Charon's pocket;
	otherwise:
		say "You don't have any money.";


Section 5 - The boat

Instead of entering the ferry when the player's name is Nobody:
	say "Charon bars the way with a long, skinny arm. 'Nobody gets in the ferry without talking to me first.'";

Instead of entering the ferry when the the obol is not in Charon's pocket:
	say "You haven't paid.";

Before entering the ferry when the player's name is not Nobody and Charon has the obol and Charon is not in the ferry:
	say	"Charon takes pains not to help you step into the ferry."
	
After entering the ferry:
	say "Charon sets about unmooring the ferry.";
	Charon gets into the ferry in one turn from now;
	The ferry departs in two turns from now;

Instead of exiting when the player is in the ferry and the ferry is in The The Starting Place:
	say "Charon stops you with a look. 'There's no undo down here.'";

At the time when Charon gets into the ferry:
	say "Charon steps deftly into the ferry and takes up his position at the oars.";
	Now Charon is in the ferry;

At the time when the ferry departs:
	say "With a series of surprisingly muscular pulls on the oars, Charon sends the ferry across the river. You barely have time to take in the gloomy fog and lack of scenery before the prow of the boat grinds onto the rocky sand of a beach.[paragraph break]Charon looks at you implacably. You intuit that it's time for you to get out.";
	If the player's name is Sisyphus:
		Move the ferry to The Bottom of the Hill;
	otherwise if the player's name is Prometheus:
		Move the ferry to PrometheusRoom;
	otherwise if the player's name is Tantalus:
		Move the ferry to TantalusRoom;
	otherwise if the player's name is Zeno:
		Move the ferry to ZenoRoom;
	otherwise if the player's name is Danaid:
		Move the ferry to DanaidRoom;

	
After exiting when the player was in the ferry:
	If the player's name is Prometheus:
		say "Charon jumps lightly out of the ferry behind you and leads to you the imposing black rock embedded in the beach. With his guidance you lie down on top of it and Charon chains you securely in place. This done, he descends from the rock and walks back to the ferry.";
		The player is chained down in zero turns from now;
		Now Charon is in PrometheusRoom;
	otherwise if the player's name is Tantalus:
		say "Charon hops out of the ferry behind you and leads to you the pool a little way up the beach. He points and you find yourself wading into the centre of the pool. Satisfied you're in position, Charon turns and walks back to the ferry.";
		now the player is in the pool;
		Now Charon is in TantalusRoom;
	otherwise if the player's name is Zeno:
		say "Charon points you toward the starting line drawn in the sand and you walk obediently over to it.";
		now the player is on the starting line;
	The ferry vanishes in zero turns from now;
		
At the time when the ferry vanishes:
	say "Before he departs, Charon mentions you can get to your punishment faster by just announcing yourself immediately, such as saying 'My name is [player's name].' His duty discharged, Charon oars away without giving you a another thought.";
	Now Charon is in the ferry;
	Move the ferry to The Starting Place;


Section 6 - Skip aheads

SkipToSisyphus is an action applying to nothing.
Understand "My name is Sisyphus" as SkipToSisyphus.
Instead of SkipToSisyphus:
	if the player is in The Starting Place:
		Remove the obol from play;
		Now the player is in The Bottom of the Hill;
	Otherwise:
		say "Charon told you that would only work on arrival at his ferry. You're stuck here.";

SkipToPrometheus is an action applying to nothing.
Understand "My name is Prometheus" as SkipToPrometheus.
Instead of SkipToPrometheus:
	if the player is in The Starting Place:
		Remove the obol from play;
		The player is chained down in zero turns from now;
	Otherwise:
		say "Charon told you that would only work on arrival at his ferry. You're stuck here.";

SkipToDanaid is an action applying to nothing.
Understand "My name is Danaid" as SkipToDanaid.
Instead of SkipToDanaid:
	if the player is in The Starting Place:
		Remove the obol from play;
		Now the player is in DanaidRoom;
	Otherwise:
		say "Charon told you that would only work on arrival at his ferry. You're stuck here.";

SkipToTantalus is an action applying to nothing.
Understand "My name is Tantalus" as SkipToTantalus.
Instead of SkipToTantalus:
	if the player is in The Starting Place:
		Remove the obol from play;
		Now the player is in the pool;
	Otherwise:
		say "Charon told you that would only work on arrival at his ferry. You're stuck here.";

SkipToZeno is an action applying to nothing.
Understand "My name is Zeno" as SkipToZeno.
Instead of SkipToZeno:
	if the player is in The Starting Place:
		Remove the obol from play;
		Now the player is on the starting line;
	Otherwise:
		say "Charon told you that would only work on arrival at his ferry. You're stuck here.";


Xyzzy is an action applying to nothing.
Understand "Xyzzy" as Xyzzy.
Instead of Xyzzy:
	say "Nothing happens. Magic isn't real.";


Section 7 - Tests

Test sisyphus with "open mouth / x clipboard / talk to charon / 1 / pay charon / get into boat / z / z / get out".

Test prometheus with "open mouth / x clipboard / talk to charon / 2 / pay charon / get into boat / z / z / get out".

[----------------------------------------------------]



Part 3 - Sisyphus

Section 1 - the Hill Rooms

The previous location is a room that varies.
First carry out going rule: 
    now the previous location is the location.

After deciding the scope of the player: 
    if the location is in The Whole Hill, place the boulder in scope.

Rule for reaching inside a room: 
    say "It's too far away."; 
    deny access.

The Whole Hill is a region. The Bottom of the Hill, A Little Way Up the Hill, Partway Up the Hill, A Fair Way Up the Hill, Quite Far Up the Hill, Nearly the Top of the Hill, and The Hilltop are in The Whole Hill.

The Hillside is a backdrop in The Whole Hill. The description is "It's a good, solid hill. It probably never gets depressed.". Understand "hill" as the hillside.
The dirt is part of the Hillside. The description is "Not as dirty as you'd have thought.".
Instead of taking the dirt, say "You're not here to dig holes.".

The beach is a backdrop in The Whole Hill. The description is "Apparently death is a beach too.". Understand "sand" as the beach.

The Bottom of the Hill is a room. The description is "A grey, gritty beach meets the edge of the river. A low, bare hill rises gently upward.".

The worryingly large boulder is here. It is an object. The description is "That really is a lot of rock.[if the player is not in The Bottom of the Hill] At least it looks a bit smaller from up here.[end if]".
Understand "rock" or "stone" as the boulder.
The boulder is pushable between rooms.
The boulder can be rolling or stationary. The boulder is stationary.

Instead of taking the boulder, say "That would be hilarious, but it's too big, too heavy, and too destined to punish you for that.".

A Little Way Up the Hill is above the Bottom of the Hill. The printed name is "A Little Way Up the Hill". The description is "Just above the beach the grit-sand turns into a packed dirt of the same colour. The occasional sprig of dead grass serves to liven it up.".
The dead grass is scenery in A Little Way Up the Hill. The description is "It's dead, Jim.".
Instead of taking the grass, say "Leave it alone, it's been through enough.".
Instead of pushing the grass, say "Pick on someone your own size.".

Partway Up the Hill is above the A Little Way Up the Hill. The description is "The hill slopes up and down away from you, formidable in its general featurelessness. It looks like you're exactly half-way up. Or down.".

A Fair Way Up the Hill is above Partway Up the Hill. The printed name is "A Fair Way Up the Hill". The description is "A continuation of this relentless expanse of hillside. There seems to be a small hole in the dirt.".
The hole is a container in A Fair Way Up the Hill. It is scenery. The description is "A small absence of dirt amidst the dirt.".

Quite Far Up the Hill is above A Fair Way Up the Hill. The description is "[if the previous location is A Fair Way Up the Hill]Far enough up the hill to be out of breath if you don't get out much. [end if]Like the rest of the hill, this part is made entirely out of dirt.".

Nearly the Top of the Hill is above Quite Far Up the Hill. The description is "It's so barren up here you can't even imagine something growing, and you have a pretty good imagination.".
The Note to Sisyphus from Zeus is here. The printed name is "note from Zeus". The description is "The note reads:

lol[line break]
- Zeus".
Instead of taking the Note to Sisyphus from Zeus:
	say "A sudden gust of wind blows it out of your grasp and away into the distance. The wind sounded weirdly like laughter.";
	remove the Note to Sisyphus from play;
	
The Hilltop is above Nearly the Top of the Hill. The description is "The view is disappointing, with just the river below and everywhere a thick blanket of fog that prevents you seeing far in any direction.[if the boulder is not in The Hilltop] You should really go get the boulder.[end if]". The printed name is "The Top of the Hill".



Section 2 - Pushing the boulder

Instead of pushing the boulder:
	try pushing the boulder to up;	
	
Instead of going north from the Whole Hill, say "The only way is up, baby.".
Instead of going south from the Whole Hill, say "The only way is up, baby.".
Instead of going east from the Whole Hill, say "The only way is up, baby.".
Instead of going west from the Whole Hill, say "The only way is up, baby.".

Before going up with the boulder:
	if the boulder is rolling:
		Say "You go to push the boulder, but it's big, heavy, and on the move so you wisely step aside.";
		Stop the action;
	otherwise:
		Say "You furrow your brow and heave the boulder forward.";
		Now the player props the boulder;
		continue the action;
		
Instead of going down with the boulder:
	If the boulder is rolling:
		Say "The boulder is rolling downhill just fine without your help.";
		stop the action;
	otherwise:
		Say "For reasons known only to you, you give the boulder a little push downhill.";
		stop the action;

After going up with the boulder:
	if the player is not in the Hilltop:
		now the player props the boulder;
	otherwise:
		increase the score by 1;
	continue the action;
	
Before doing something:	
	now the player does not prop the boulder;

Propping relates one person to one thing. The verb to prop means the propping relation.

Every turn when the boulder is not in The Bottom of the Hill and the player does not prop the boulder:
	let next place be the room down from the location of the boulder;
	now the boulder is rolling;
	If the player is in the Hilltop and the boulder is in the Hilltop:		
		say "The boulder slips from your grasp as though it has a mind of its own and starts rolling back down the hill";
	otherwise if the player can see the boulder:	
		say "The boulder rolls calmly away down the hill.";
	otherwise if the next place is not the bottom of the hill and the player is not in the next place:
		say "Below, you see the boulder rolling down the hill.";
	move the boulder to the next place;
	If the player can see the boulder:
		say "The boulder rolls into view.";
	if the next place is the bottom of the hill:		
		if the player cannot see the boulder:
			if the player is in the room up from the next place:
				say "[line break]";
			say "You see the boulder settle into place at the bottom of the hill.";
		otherwise:
			say "[line break]The boulder settles ponderously back at its starting position.";
		now the boulder is stationary;
	If the player is in the Hilltop:
		If the boulder is in the Hilltop:
			increase the score by 1;



[----------------------------------------------------]



Part 4 - Tantalus

TantalusRoom is a room. The description is "An apple tree extends its branches above a clear pool of water set back a little way from the river's edge. A single apple hangs from a single branch.". The printed name is "A Desolate Beach".

The beach is a backdrop in TantalusRoom. The description is "Apparently death is a beach too.". Understand "sand" as the beach.

The tree is a supporter in TantalusRoom. The description is "Gnarly, man.". The tree is scenery.

The apple is on the tree. The apple is edible. The description is "A shiny, delicious apple just begging to be eaten.". The apple is scenery.

The pool is a container in TantalusRoom. The description is "Crystal clear, eminently drinkable water.". Understand "water" as the pool. The pool is scenery. 

Instead of exiting when the player is in the pool:
	say "Somehow that's not an option.";

Instead of drinking the pool:
	say "You stoop to drink some water, but it recedes as fast as you move toward it until the bottom of the bool is completely dry. On standing, the water rushes back in up to your waist.";
	
Instead of taking the apple:
	say "You reach up to pluck the apple from its branch, but as you do a gust of wind blows the branch up and away from you. It only resettles when you give up and drop your arm down again.";
	
Instead of jumping when the player is in the pool:
	say "You jump up toward the apple on its branch, but a gust of wind blows it just as far out of reach as always and all you manage to do is make a splash.";
	
Instead of taking the pool when the player is in the pool:
	say "You cup your hands to gather up some water to drink, but the pool quickly drains before you're able to get anything. Your hands somehow remain bone dry.";
	
Instead of eating the apple, try taking the apple;

Every turn when the player is in the pool: 
    choose a random row in the Table of Sustenance Complaints; 
    say "[sustenance entry][paragraph break]".

Table of Sustenance Complaints 
sustenance 
"You're feeling really hungry." 
"You're feeling really thirsty." 
"You're so hungry."
"You're so thirsty."
"You're hungry."
"You're thirsty."
"You're feeling hungry."
"You're feeling thirsty."
"You wish you had something to drink."
"You wish you had something to eat."
"You need to eat something."
"You need to drink something."
"Your stomach gurgles."
"You're parched."
"Your mouth is so dry."
"You haven't eaten in forever."
"Your stomach hurts with hunger."
"You feel terribly dehydrated."
"You're starving."

[----------------------------------------------------]



Part 5 - Prometheus

The liver is part of the player. The description is "[if the percentage of the player's liver is 100]You can't see your liver, your flesh is concealing it in the usual way.[otherwise if the percentage of the player's liver is not 0]Frankly, it's a mess.[otherwise]It's gone.[end if]".

The player's liver has a number called percentage. The percentage of the player's liver is 100.

At the time when the player is chained down:
	Now the player is on the rock;
	Now the player is chained;
	Now the right hand status line is "Liver: [percentage of the player's liver]%";

PrometheusRoom is a room. The description is "[if the location of the player is daytime]Beneath what passes for daylight here[otherwise]Dimly lit by what might be a moon somewhere behind the fog[end if], an unpleasantly jagged black rock rises from the ash colored sand of the beach. You are chained to said rock.". The printed name is "The Rock".
PrometheusRoom can be nighttime or daytime.

The beach is a backdrop in PrometheusRoom. The description is "Apparently death is a beach too.". Understand "sand" as the beach.

The rock is scenery in PrometheusRoom. The Rock is a supporter. The description is "It's very black and very rocky. A set of chains are firmly attached to the rock. They also happen to be firmly attaching you to it.".

The chains are part of the rock. The description is "Heavy iron chains.". Understand "chain" as the chains.

A person can be chained or unchained.

Rule for printing an enclosure preposition when the described enclosure is the player's enclosure and described enclosure is the rock: say "chained to ".

Instead of getting off when the player is chained:
	say "You are tightly chained to the rock, you're not going anywhere. At best you could writhe, struggle, strain, or something like that.";
	stop the action;
	
Instead of going when the player is chained:
	try getting off the rock;

Instead of jumping when the player is chained:
	try getting off the rock;
	
Instead of attacking the chains:
	say "You focus your attention on destroying the chains and come out on the losing end.";
	
The eagle is an animal. 
The eagle is nowhere.
Flight distance is a kind of value. The flight distances are appearing, distant, approaching, near, perched, hovering, leaving, and gone.
The eagle can be coming or departing. The eagle is coming.
The eagle has a flight distance called proximity. The proximity of the eagle is appearing.

Table of eagle descriptions
proximity_entry			reply
distant			"It's too far away to see much more than some flapping wings."
approaching			"It's close enough to look quite alarming."
near			"It is way too close for comfort."
perched			"A majestic creature. Terrifying, too. It has a determined look in its eye."
hovering			"It looks irritable."
leaving			"It looks like an eagle that's eaten a full liver for dinner."
gone			"It's gone."

The description of the eagle is "[the reply corresponding to a proximity_entry of the proximity of the eagle in the table of eagle descriptions]".
The eagle's eye is part of the eagle. The description is "[if the proximity of the eagle is perched]That is one cold and uncaring eye.[otherwise]You can't make out the eagle's eye from here.[end if]".

Every turn when the player is on the rock:
	if the eagle is coming:
		if the proximity of the eagle is appearing:
			Now the proximity of the eagle is distant;
			say "An eagle appears on the horizon.";
			now the eagle is in PrometheusRoom;
		otherwise if the proximity of the eagle is distant:
			Now the proximity of the eagle is approaching;
			say "The eagle is getting close.";
		otherwise if the proximity of the eagle is approaching:
			Now the proximity of the eagle is near;
			say "The eagle is right above you.";
		otherwise if the proximity of the eagle is near or the proximity of the eagle is hovering:
			if the player is not struggling:
				Now the proximity of the eagle is perched;
				say "The eagle lands heavily beside you.";
			now the player is not struggling;
		otherwise if the proximity of the eagle is perched:
			say "The eagle eats some of your liver.";
			decrease the percentage of the player's liver by 10;
			if the percentage of the player's liver is 0:
				now the eagle is departing;
				remove the liver from play;
	otherwise if the eagle is departing:
		if the proximity of the eagle is perched:
			say "Having eaten your liver, the eagle nonchalantly flaps its wings and takes to the air.";
			now the proximity of the eagle is leaving;
		otherwise if the proximity of the eagle is leaving:
			say "The eagle flies off into the distance.";
			now the proximity of the eagle is gone;
			now the eagle is nowhere;			
			Night falls in one turn from now;
		
At the time when night falls:
	say "Night falls.";
	now PrometheusRoom is nighttime;
	Night ends in 1 turn from now;
	
At the time when the night ends:
	say "The night ends surprisingly abruptly. You feel a brisk tingling sensation where your liver was pecked out by the eagle.";
	now PrometheusRoom is daytime;
	Now the liver is part of the player;
	Now the percentage of the player's liver is 100;
	Now the eagle is coming;
	Now the proximity of the eagle is appearing;
		
Writhe verb is a kind of value. The writhe verbs are struggle, writhe, strain, twist, thrash.

Writhing is an action applying to nothing.
Understand "writhe" and "struggle" and "strain" and "twist" and "thrash" as writhing.
A person can be struggling. The player is not struggling.
After writhing:
	Now the player is struggling;
	if the proximity of the eagle is perched:
		say "You [a random writhe verb] in place desperately. It's enough to disturb the eagle, which flaps up into the air.";
		Now the proximity of the eagle is hovering;
	otherwise if the proximity of the eagle is hovering or the proximity of the eagle is near:
		say "You [a random writhe verb] in place desperately. It's enough to disturb the eagle, which flaps up into the air.";
		now the proximity of the eagle is hovering;
	otherwise:
		say "You [a random writhe verb] experimentally. Nothing obvious happens.";
	


[----------------------------------------------------]



Part 6 - Danaid

DanaidRoom is a room. The description is "The sand here is bone dry. Rising out of the ground is a [bold type]fountain[roman type] and a little distance from it is a [bold type]basin[roman type].". The printed name is "An Arid Beach".

The sand is here. It is scenery. The description is "Is this literally crushed up bones?". Understand "ground" as the sand.

A basin is here. It is a container. The description is "A wide basin intended for holding liquid.[if the fountain water is in the basin] About a jug's-worth of water is in it right now.[otherwise] Let's say water.[end if][if the holes are revealed] There are holes drilled in the bottom.[end if][if the note from zeus to danaid is on the rim of the basin] There is a [bold type]note[roman type] stuck to the rim.[end if]".
The rim of the basin is part of the basin. It is a supporter. The description is "That's a quality rim.".
The holes in the basin are part of the basin. The description is "A set of neatly drilled holes perforate the lower part of the basin, providing handy drainage of any liquids placed inside it.".
The holes can be revealed. The holes are not revealed.
After examining the holes, now the holes are revealed.
Instead of taking the basin, say "It's far too heavy.".
The note from zeus to the danaid is on the rim of the basin. The printed name is "note". The description 
is "'Fill me.

lol,
Zeus'".

Before listing nondescript items of DanaidRoom: 
	now the basin is not marked for listing; 
	now the fountain is not marked for listing;

After examining the note from zeus to the danaid:
	say "Just as you finish reading it, the note blows [if the player has the note from zeus to the danaid]out of your hand[otherwise]off the rim of the basin[end if] on a mysterious gust of wind and vanishes into the distance.";
	now the note from zeus to the danaid is nowhere;

A fountain is here. It is a container. The description is "A small fountain perpetually shooting [bold type]water[roman type] a short way up into the air before it cascades down into a shallow bowl and drains out.".
The bowl is part of the fountain. The description is "It is etched with images of frowning faces.".
The frowning faces are part of the bowl. The description is "They don't look happy with you. Somehow you know it's you.".
Instead of taking the fountain, say "It's firmly attached.".

The fountain water is in the fountain. The description is "Cool, clear water.". The printed name is "water". The indefinite article of the fountain water is "some".
Understand "water" as the fountain water when the player is in DanaidRoom.
The fountain water is scenery.

Instead of putting the fountain water on the jug:
	try taking the fountain water;
	stop the action.

Instead of taking the fountain water:
	if the fountain water is in the jug:
		say "There's already water in the jug.";
	otherwise if the player has the jug: 
		now the fountain water is in the jug;
		say "You fill the jug with water from the fountain.";
	otherwise:
		say "Maybe you should pick up the jug first.";

A jug is here. It is a portable container. The description is "An earthenware jug with a handle.[if the fountain water is in the jug] It's filled with water.[otherwise] It's empty.[end if]".
The handle is part of the jug. The description is "[if the player has the jug]It fits your hand perfectly.[otherwise]Looks sturdy.[end if]".

Rule for printing the name of the jug while not inserting or removing: 
    say "jug";
    omit contents in listing;

Rule for printing the name of the fountain while not inserting or removing: 
	say "fountain";
    omit contents in listing;

Pouring is an action applying to one visible thing.
Understand "pour [something]" as pouring.
Instead of pouring something, say "Don't think you'll be needing to pour that here in Hades.".	
Instead of pouring the fountain water:
	if the fountain water is in the jug:
		say "You unceremoniously pour the jug of water onto the ground.";
		now the fountain water is in the fountain;
	otherwise:
		say "You tip the empty jug and pour pretend water out of it. It's still empty afterwards.";

Instead of pouring the jug, try pouring the fountain water.

Emptying is an action applying to one carried thing.
Understand "empty [something]" as emptying.
Instead of emptying something, say "That's not something you need to do.".
Instead of emptying the jug, try pouring the jug.

Filling is an action applying to one visible thing.
Understand "fill [something]" as filling.
Instead of filling something, say "You don't need to fill that.".
Instead of filling the jug:
	try taking the fountain water;
Instead of filling the basin:
	try inserting the fountain water into the basin;
Instead of filling the fountain:
	try inserting the fountain water into the fountain;

Instead of inserting the fountain water into the basin:
	if the player has the jug and the fountain water is in the jug:
		say "You carefully pour the water in the jug into the basin. It streams in nicely, catching what little light there is.";
		now the fountain water is in the basin;
		the basin empties in 1 turn from now;
	otherwise if the player has the jug:
		say "The jug is empty.";
	otherwise:
		say "You don't have any water.";

Instead of inserting the fountain water into the fountain:
	if the player has the jug and the fountain water is in the jug:
		say "You carefully pour the water in the jug into the fountain, thereby achieving slightly less than nothing.";
		now the fountain water is in the fountain;
	otherwise if the player has the jug:
		say "The jug is empty.";
	otherwise:
		say "You don't have any water.";

Pouring it into is an action applying to two visible things.
Understand "pour [something] into [something]" as pouring it into.
Instead of pouring something into something:
	say "You won't be needing to do that.";
Instead of pouring the fountain water into the basin:
	try inserting the fountain water into the basin;
Instead of pouring the jug into the basin:
	try inserting the fountain water into the basin;
Instead of pouring the fountain water into the fountain:
	try inserting the fountain water into the fountain;
Instead of pouring the jug into the fountain:
	try inserting the fountain water into the fountain;
	
At the time when the basin empties:
	say "The water in the basin drains out through several holes, dissapating into the sand.";
	now the holes are revealed;
	if the fountain water is in the basin:
		now the fountain water is in the fountain;

[----------------------------------------------------]



Part 7 - Zeno

The player has a number called runs. The runs of the player is 0.

ZenoRoom is a room. The description is "The beach extends off into the fog. A straight running track of about 100 meters has been sketched into the sand leading north away from the river with the starting line closest to the water. In the distance at the end of the track, a limp green flag is visible. [if the runs of the player is less than 8][the description corresponding to a depth of the runs of the player in the table of fractional distance descriptions for Zeno].[otherwise][one of]You are extremely close to the flag[or]You are so close the flag you can taste it[or]You are practically standing on the flag, but not quite[or]You have very nearly finished the race[or]You are incredibly close to finishing the race[purely at random].[end if]". The printed name is "A Flat Beach".

The ZenoBeach is a backdrop in ZenoRoom. The description is "Apparently death is a beach too. The running track adds a little something to it, though.". Understand "beach" and "sand" as the beach when the player is in ZenoRoom.

The starting line is a supporter in the ZenoRoom. It is scenery. The description is "A line drawn in the sand.". Understand "start" as the starting line when the player is in ZenoRoom.
Rule for printing an enclosure preposition when the described enclosure is the player's enclosure and described enclosure is the starting line: say "at ".

The track is a supporter in the ZenoRoom. It is scenery. The description is "It looks like someone used a stick of driftwood to draw the crude boundaries that lead north to the finishing flag.".

The flag is in the ZenoRoom. It is scenery. The description is "A muted green triangle of fabric attached to a pole jammed into the sand at the northern end of the track.". Understand "pole" as the flag.

Instead of going when the player is on the starting line or the player is on the track:
	say "You can run in all kinds of directions once you've finished the race. For now focus on getting to the flag, which is north of where you are now.";
	
Instead of jumping when the player is on the starting line or the player is on the track:
	say "Let's not even think about jumping.";
	
Instead of touching something when the player is on the starting line or the player is on the track:
	say "You think about reaching for[if the noun is the player][otherwise if the noun is part of the player][otherwise] the[end if] [noun], but you really need to focus on this footrace for now.";

Instead of taking the flag when the player is on the starting line or the player is on the track, try touching the flag.

Instead of exiting when the player is on the starting line:
	say "The best way to get off the starting line would be to run north down the track."; 

Instead of exiting when the player is on the track:
	say "You can leave when you've finished the race."; 
	
Table of fractional distance descriptions for Zeno
depth				description
0 				"You are at the start line"
1				"You are half-way to the flag"
2				"You are three-quarters of the way to the flag"
3				"You are seven-eighths of the way to the flag"
4				"You are fifteen-sixteenths of the way to the flag"
5				"You are thirty-one thirty-seconds of the way to the flag"
6				"You are sixty-three sixty-fourths of the way to the flag"
7				"You are a hundred and twenty-seven hundred and twenty-eighths of the way to the flag"

Before going north when the player  is on the starting line or the player is on the track:
	increase the runs of the player by 1;

Instead of going north when the player is on the starting line or the player is on the track:
	if the player's command includes "walk":
		say "Races are for running![paragraph break]";
	otherwise:
		say "You run furiously and cover half the distance to the flag!";
		now the player is on the track;
