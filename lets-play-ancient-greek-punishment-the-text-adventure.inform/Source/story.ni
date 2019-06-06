"Let's Play: Ancient Greek Punishment: The Text Adventure" by Pippin Barr

Part 1 - Setup

Section 1 - Basic setup

Release along with an interpreter.
Use the serial comma.
Use scoring.
[Use undo prevention.]
Rule for printing room description details: stop.
The can't push vertically rule is not listed in any rulebook.

Section 2 - Simple Chat

Include Simple Chat by Mark Tilford.
Talking to is an action applying to one visible thing.
Understand "talk to [someone]" as talking to.
Report talking to: say "You have nothing to say.".
When play begins: forbid exiting on zero.
Use scoring.

A name is a kind of value. The names are Nobody, Sisyphus, Prometheus, Tantalus, Danaid, and Zeno.
The player's name is a name that varies. The player's name is Nobody.

When play begins: 
	now the left hand status line is "[the player's surroundings]"; 
	now the right hand status line is "[score]/1 points";

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


[----------------------------------------------------]



Part 2 - The Bank of the River Styx

Section 1 - The coin

The obol is an object. The description is "A small silver coin imprinted with the blurry image of a sleepy man's face."
[Eventually  the obol should be in the player's mouth to start with and you should notice it when you talk to Charon.]
Your mouth is part of the player. The description is "You purse your lips and can just make them out while staring strenuously downward. As you do, you feel something in your mouth." Your mouth is a container. Your mouth can be open or closed. Your mouth is closed.
The obol is in your mouth.
Understand "coin" or "money" as the obol.

Instead of tasting the obol, say "The obol has spent plenty of time in your mouth already.".
Instead of eating the obol, say "The obol has spent plenty of time in your mouth already.".

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

Section 2 - The place

The Bank of the River Styx is a room. The description is "Here you are at the famous River Styx. The water flows sluggishly by."

Charon's ferry is here. The description is "It's Charon's ferry, not totally unlike a small dinghy. [if the ferry is in The Bank of the River Styx]Right now it is moored at the bank of the river, ready to shove off.[otherwise]Right now it is grounded on a gritty beach.[end if]".
Charon's ferry is a vehicle.
Understand "boat" or "dinghy" as the ferry.

The clipboard is an object. The description is "Charon irritably angles the clipboard away from you, but not before you've seen the list of names he's expecting for the trip across the river:[line break][line break]Sisyphus[line break]Tantalus[line break]Prometheus[line break]Danaids[line break]Zeno";

The clipboard can be secret. The clipboard is secret.
After examining the clipboard, now the clipboard is not secret.
Understand "board" as the clipboard.

Charon is here. The description is "Charon is one tall drink of stagnant water. His eyes look sourly out from beneath a cowl. [if Charon is in the ferry]He is sitting at the oars.[otherwise]He is holding a clipboard.[end if]".
Charon is a man.
Charon is carrying the clipboard.

Charon's eyes are part of Charon. The description is "Unhappy."
The cowl is wearable. The description is "It's a standard-issue cowl."
Charon is wearing the cowl.
Understand "Charon's cowl" as the cowl.


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
		
Talk to Charon, Hello Charon, My Name Is Sisyphus, Nevermind are chat nodes.

Instead of talking to Charon when the obol is in your mouth:
	say "You start trying to speak, but there's something in your mouth.";		

Instead of talking to Charon when the clipboard is secret:
	say "Before you can get a word in, Charon monotones, 'And you are?'[paragraph break]You realise you don't know and fall silent.";

Instead of talking to Charon when the player's name is not Nobody:
	say "Charon isn't interested in talking to you about anything else.";

Report giving text for Talk to Charon: 
	say "Before you can get a word in, Charon monotones, 'And you are?'[paragraph break]Recalling the list of names on the clipboard, you say:[paragraph break]";
    
Carry out finding responses to Talk to Charon: 
	link to My Name Is Sisyphus; 
	link to Nevermind.
    
Report giving link to My Name Is Sisyphus: 
	Instead say "'I'm Sisyphus!'";
Report giving text for My Name Is Sisyphus: 
	Now the player's name is Sisyphus;
	Instead say "Charon looks at you blankly, 'Sure. Pay me.'. [paragraph break]He holds out a bony hand.";

Report giving link to Nevermind: 
	instead say "'Never mind...' ";
Report giving text for Nevermind: 
	instead say "You shrug, 'Never mind...'[paragraph break]Charon smirks.";

Instead of talking to Charon: run a conversation from Talk to Charon.


Section 4 - Paying Charon

Instead of giving the obol to Charon, try paying Charon.

Paying is an action applying to one visible thing.
Understand "pay [someone]" as paying.
Instead of paying Charon:
	If the player's name is Nobody:
		say "Charon looks at you wearily, 'No paying until you tell me who you are.' (Maybe you should talk to him first.)";
	otherwise If the player has the obol:
		say "You hand over the small coin. Charon drops it into a pocket and gestures at the ferry.";
		now Charon has the obol;
	otherwise:
		say "You don't have any money.";


Section 5 - The boat

Instead of entering the ferry when the player's name is Nobody:
	say "Charon bars the way with a long, skinny arm. 'Nobody gets in the ferry without talking to me first.'";

Instead of entering the ferry when the charon does not have the obol:
	say "You haven't paid.";

Before entering the ferry when the player's name is not Nobody and Charon has the obol and Charon is not in the ferry:
	say	"Charon takes pains not to help you step into the ferry."
	
After entering the ferry:
	say "Charon sets about unmooring the ferry.";
	Charon gets into the ferry in one turn from now;
	The ferry departs in two turns from now;

Instead of exiting when the player is in the ferry and the ferry is in The Bank of the River Styx:
	say "Charon stops you with a look. 'There's no undo down here.'";

At the time when Charon gets into the ferry:
	say "Charon steps deftly into the ferry and takes up his position at the oars.";
	Now Charon is in the ferry;

At the time when the ferry departs:
	If the player's name is Sisyphus:
		say "With a series of surprisingly muscular pulls on the oars, Charon sends the ferry across the river. You barely have time to take in the gloomy fog and lack of scenery before the prow of the boat grinds onto the rocky sand of a beach.[paragraph break]Charon looks at you implacably. You intuit that it's time for you to get out.";
		Move the ferry to The Bottom of the Hill;
	
After exiting when the player was in the ferry:
	The ferry vanishes in zero turns from now;
	continue the action;	
		
At the time when the ferry vanishes:
	say "Charon oars away without giving you a second thought.";
	Move the ferry to the Bank of the River Styx;


Section 6 - Skip aheads

Sisyphus is an action applying to nothing.
Understand "Sisyphus" as Sisyphus.
Instead of Sisyphus:
	if the player is in the Bank of the River Styx:
		Remove the obol from play;
		Now the player is in The Bottom of the Hill;
	Otherwise:
		say "Nothing happens. Surely you didn't think it would be that easy did you?";

Xyzzy is an action applying to nothing.
Understand "Xyzzy" as Xyzzy.
Instead of Xyzzy:
	say "Nothing happens. Magic isn't real.";


Section 7 - Tests

Test sisyphus with "open mouth / x clipboard / talk to charon / 1 / pay charon / get into boat / z / z / get out".



[----------------------------------------------------]



Part 3 - Sisyphus

The Bottom of the Hill is a room. The description is "A grey, gritty beach meets the edge of the river. To the north a low, bare hill rises gently upward.".

The worryingly large boulder is here. It is an object. The description is "That really is a lot of rock.".
Understand "rock" or "stone" as the boulder.
The boulder is pushable between rooms.
The boulder can be rolling or stationary. The boulder is stationary.

Instead of taking the boulder, say "That would be hilarious, but it's too big, too heavy, and too destined to punish you for that.".

A Little Way Up the Hill is above the Bottom of the Hill. The printed name is "A Little Way Up the Hill".

Partway Up the Hill is above the A Little Way Up the Hill. 

A Fair Way Up the Hill is above Partway Up the Hill. The printed name is "A Fair Way Up the Hill".

Quite Far Up the Hill is above A Fair Way Up the Hill.

Nearly the Top of the Hill is above Quite Far Up the Hill.

The Hilltop is above Nearly the Top of the Hill. The description is "The view is disappointing, with just the river below and everywhere a thick blanket of fog that prevents you seeing far in any direction.". The printed name is "The Top of the Hill".

Instead of pushing the boulder:
	try pushing the boulder to up;	

Instead of going south with the boulder:
	say "The hill is to the north. Why would you want to push the boulder anywhere else?";

Instead of going west with the boulder:
	say "The hill is to the north. Why would you want to push the boulder anywhere else?";

Instead of going east with the boulder:
	say "The hill is to the north. Why would you want to push the boulder anywhere else?";

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
	continue the action;
	
Before doing something:	
	now the player does not prop the boulder;

Propping relates one person to one thing. The verb to prop means the propping relation.

Every turn when the boulder is not in The Bottom of the Hill and the player does not prop the boulder:
	let next place be the room down from the location of the boulder;
	now the boulder is rolling;
	If the player is in the Hilltop:
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
			say "[line break]You see the boulder settle into place at the bottom of the hill.";
		otherwise:
			say "The boulder settles ponderously back at its starting position.";
		now the boulder is stationary;
	If the player is in the Hilltop:
		If the boulder is in the Hilltop:
			increase the score by 1;



[----------------------------------------------------]



Part 4 - Tantalus

[The apple is an object. It is edible. <- e.g. it's funny to have ontological properties applied to things, even though can never carry out the associated action.]



[----------------------------------------------------]



Part 5 - Prometheus



[----------------------------------------------------]



Part 6 - Danaid



[----------------------------------------------------]



Part 7 - Zeno
